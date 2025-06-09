module spi_interface (
    input wire clk,                  // System clock
    input wire rst_n,                // Active low reset
    input wire [31:0] data_in,       // Data to be transmitted (expanded to support up to 32 bits)
    input wire start,                // Start transmission signal
    output reg [31:0] data_out,      // Received data (expanded to support up to 32 bits)
    output reg busy,                 // Busy flag
    output reg done,                 // Transfer complete flag
    
    // SPI interface signals
    output reg sclk,                 // SPI clock
    output reg mosi,                 // Master Out Slave In (SDO)
    input wire miso,                 // Master In Slave Out (SDI)
    output reg ss_n,                 // Slave Select (active low)
    
    // Configuration inputs (from registers) - all expanded to 16 bits
    input wire [1:0] spi_mode,           // SPI Mode (CPOL = spi_mode[1], CPHA = spi_mode[0])
    input wire [15:0] bits_per_transaction,  // Number of bits in transaction
    input wire [15:0] cycles_per_bit,        // System clock cycles per bit
    input wire [15:0] sclk_high_offset,      // Cycle offset when SCLK goes high
    input wire [15:0] sclk_low_offset,       // Cycle offset when SCLK goes low
    input wire [15:0] sdo_change_offset,     // Cycle offset when MOSI changes
    input wire [15:0] sdi_sample_offset,     // Cycle offset when MISO is sampled
    input wire [15:0] cs_to_trx_delay,       // Delay between CS assertion and transaction start
    input wire [15:0] cs_hold_time           // CS hold time after transaction completion
);

    // FSM states
    localparam IDLE = 3'b000;
    localparam LATCH_CONFIG = 3'b001;
    localparam CS_SETUP = 3'b010;
    localparam ACTIVE = 3'b011;
    localparam CS_HOLD = 3'b100;
    
    reg [2:0] state;              // Current state
    reg [31:0] tx_shift_reg;      // Shift register for transmit data (expanded to 32 bits)
    reg [31:0] rx_shift_reg;      // Shift register for receive data (expanded to 32 bits)
    
    // Counters - all expanded to 16 bits
    reg [15:0] bit_counter;       // Which bit we're processing (0 to bits_per_transaction-1)
    reg [15:0] cycle_counter;     // Position within current bit (0 to cycles_per_bit-1)
    reg [15:0] delay_counter;     // Counter for CS setup and hold timing

    // Internal configuration registers (latched on start)
    reg [1:0]   spi_mode_reg;
    reg [15:0]  bits_per_transaction_reg;
    reg [15:0]  cycles_per_bit_reg;
    reg [15:0]  sclk_high_offset_reg;
    reg [15:0]  sclk_low_offset_reg;
    reg [15:0]  sdo_change_offset_reg;
    reg [15:0]  sdi_sample_offset_reg;
    reg [15:0]  cs_to_trx_delay_reg;
    reg [15:0]  cs_hold_time_reg;

    // Derived configuration signals
    wire cpol = spi_mode_reg[1];      // Clock Polarity (use latched value)
    wire cpha = spi_mode_reg[0];      // Clock Phase (use latched value)

    // Combined state machine (state transition and datapath logic)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset all registers (excluding config regs now)
            state <= IDLE;
            bit_counter <= 0;
            cycle_counter <= 0;
            delay_counter <= 0;
            sclk <= 0; // Initial value before config is latched
            mosi <= 0;                  // MOSI idle state is typically low
            tx_shift_reg <= 32'h0;
            rx_shift_reg <= 32'h0;
            busy <= 0;
            done <= 0;
            ss_n <= 1;
            data_out <= 32'h0;

        end else begin
            // Default assignments (optional but can help prevent latches in combinational paths if FSM outputs were combinational)
            // For registered outputs like sclk, mosi, busy, done, ss_n, data_out, this is less critical
            done <= 0; // Ensure done pulse is single cycle

            // State machine with embedded next state logic
            case (state)
                IDLE: begin
                    // Reset datapath signals (keep config regs as they are until start)
                    bit_counter <= 0;
                    cycle_counter <= 0;
                    delay_counter <= 0;
                    sclk <= cpol;           // Maintain SCLK idle state (using latched cpol)
                    busy <= 0;
                    // done <= 0; // Deassert done signal - Moved above case
                    ss_n <= 1;

                    // Next state logic
                    if (start) begin
                        state <= LATCH_CONFIG;
                        busy <= 1;
                    end
                end
                
                LATCH_CONFIG: begin
                    // On this cycle, the config registers are stable.
                    // Now prepare for the transaction using the latched values.
                    state <= CS_SETUP;
                    
                    // Load data and left-align it for MSB-first transmission
                    // using the now-stable latched register.
                    tx_shift_reg <= data_in << (32 - bits_per_transaction_reg);
                    rx_shift_reg <= 32'h0;      // Clear receive register
                    ss_n <= 0;                  // Assert CS
                end
                
                CS_SETUP: begin
                    // Wait for cs_to_trx_delay before starting transaction
                    // Use latched configuration registers
                    sclk <= cpol;           // Maintain SCLK idle state during setup
                    if (cs_to_trx_delay_reg == 0 || delay_counter == cs_to_trx_delay_reg - 1) begin
                        state <= ACTIVE;
                        delay_counter <= 0;
                        
                        // First bit is presented by the logic in the ACTIVE state
                    end else begin
                        delay_counter <= delay_counter + 1;
                    end
                end
                
                ACTIVE: begin
                    // Increment nested counters
                    // Use latched configuration registers
                    if (cycle_counter == cycles_per_bit_reg - 1) begin
                        cycle_counter <= 0;
                        
                        // Move to next bit or complete transaction
                        if (bit_counter == bits_per_transaction_reg - 1) begin
                            // Transaction complete, enter CS hold state
                            bit_counter <= 0;
                            state <= CS_HOLD;
                            delay_counter <= 0;
                        end else begin
                            bit_counter <= bit_counter + 1;
                            // Shift left to prepare for the next bit
                            tx_shift_reg <= tx_shift_reg << 1;
                        end
                    end else begin
                        cycle_counter <= cycle_counter + 1;
                    end
                    
                    // SCLK generation based on cycle counter and CPOL
                    // Use latched configuration registers
                    if (cycle_counter == sclk_high_offset_reg) begin
                        sclk <= ~cpol;      // Generate active edge (opposite of idle)
                    end else if (cycle_counter == sclk_low_offset_reg) begin
                        sclk <= cpol;       // Generate trailing edge (back to idle)
                    end
                    
                    // MOSI (SDO) is always driven by the current MSB of the shift register
                    mosi <= tx_shift_reg[31];
                    
                    // MISO (SDI) data sampling - capture into LSB of a left-shifting register
                    // Use latched configuration registers
                    if (cycle_counter == sdi_sample_offset_reg) begin
                        // Shift left and place new bit in position 0
                        rx_shift_reg <= {rx_shift_reg[30:0], miso};
                    end
                end
                
                CS_HOLD: begin
                    // Hold CS low for cs_hold_time before releasing
                    // Use latched configuration registers
                    sclk <= cpol;           // Ensure SCLK is in idle state during hold time
                    if (cs_hold_time_reg == 0 || delay_counter == cs_hold_time_reg - 1) begin
                        state <= IDLE;
                        // Data is already right-aligned in rx_shift_reg
                        data_out <= rx_shift_reg;
                        busy <= 0;
                        done <= 1; // Assert done signal
                        ss_n <= 1;                 // Release CS
                    end else begin
                        delay_counter <= delay_counter + 1;
                    end
                end
            endcase
        end
    end

    // Process for latching configuration registers
    always @(posedge clk) begin
        if (~busy) begin
            spi_mode_reg <= spi_mode;
            bits_per_transaction_reg <= bits_per_transaction;
            cycles_per_bit_reg <= cycles_per_bit;
            sclk_high_offset_reg <= sclk_high_offset;
            sclk_low_offset_reg <= sclk_low_offset;
            sdo_change_offset_reg <= sdo_change_offset;
            sdi_sample_offset_reg <= sdi_sample_offset;
            cs_to_trx_delay_reg <= cs_to_trx_delay;
            cs_hold_time_reg <= cs_hold_time;   
        end
    end

endmodule 