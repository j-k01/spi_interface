// Command Table:
// - 10xx_... : SPI Transaction. Payload is sent via SPI.
// - 1100_... : Pulse Reset signal.
// - 1101_... : Pulse Clear signal.
// - 1110_... : Pulse LDAC signal.
// - 1111_... : Wait for a number of cycles defined by the payload.
// - 0000_... : Control command, interpreted with I_CONFIGURE input.
//

module BRAM_reader (
    // Clock and Reset
    input wire          clk,
    input wire          rst_n,

    // BRAM Interface
    output reg [31:0]   O_ADDR,
    input  wire [31:0]  I_DATA,
    output reg          O_ENABLE,
    output reg [3:0]    O_WE, // Write enable, tied low as this module only reads.

    // Control Signals
    input wire          I_START_MACRO,
    input wire [2:0]    I_CONFIGURE,

    // SPI Interface
    output reg [31:0]   O_SPI_TRX,
    output reg          O_START_SPI,
    input  wire         I_SPI_DONE,

    // Pulse Outputs
    output reg          O_CLEAR_REQ,
    output reg          O_LDAC_REQ,
    output reg          O_RESET_REQ
);

// State machine definition
localparam S_IDLE         = 3'd0;
localparam S_READ_CMD     = 3'd1;
localparam S_WAIT_DATA    = 3'd2; // Wait for BRAM 1-cycle read latency
localparam S_DECODE_CMD   = 3'd3;
localparam S_SPI_TRX_WAIT = 3'd4;
localparam S_WAIT_CYCLES  = 3'd5;

reg [2:0] state;
reg [23:0] wait_counter;

// This single clocked always block implements the state machine and registers all outputs.
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        // Reset state and all outputs
        state <= S_IDLE;
        O_ADDR <= 32'd0;
        O_ENABLE <= 1'b0;
        O_WE <= 4'b0000;
        O_SPI_TRX <= 32'd0;
        O_START_SPI <= 1'b0;
        O_CLEAR_REQ <= 1'b0;
        O_LDAC_REQ <= 1'b0;
        O_RESET_REQ <= 1'b0;
        wait_counter <= 24'd0;
    end else begin
        // Default assignments for outputs on each clock cycle
        O_ENABLE <= 1'b0;
        O_START_SPI <= 1'b0;
        O_CLEAR_REQ <= 1'b0;
        O_LDAC_REQ <= 1'b0;
        O_RESET_REQ <= 1'b0;
        O_WE <= 4'b0000; // WE is always low for read-only BRAM

        // Wait counter logic
        if (state == S_WAIT_CYCLES && wait_counter > 0) begin
            wait_counter <= wait_counter - 1;
        end

        // State machine logic
        case (state)
            S_IDLE: begin
                if (I_START_MACRO) begin
                    state <= S_READ_CMD;
                    O_ADDR <= 32'd0; // Start reading from address 0
                end
            end

            S_READ_CMD: begin
                O_ENABLE <= 1'b1; // Assert BRAM enable to start read
                state <= S_WAIT_DATA;
            end

            S_WAIT_DATA: begin
                // One cycle latency for BRAM read
                state <= S_DECODE_CMD;
            end

            S_DECODE_CMD: begin
                if (I_DATA[31] == 1'b1) begin // Valid command
                    if (I_DATA[30] == 1'b0) begin // SPI Transaction (10xx)
                        O_SPI_TRX <= {8'h00, I_DATA[23:0]};
                        O_START_SPI <= 1'b1;
                        state <= S_SPI_TRX_WAIT;
                    end else begin // Other commands (11xx)
                        case (I_DATA[29:28])
                            2'b00: begin // 1100 -> Pulse Reset
                                O_RESET_REQ <= 1'b1;
                                O_ADDR <= O_ADDR + 4;
                                state <= S_READ_CMD;
                            end
                            2'b01: begin // 1101 -> Pulse Clear
                                O_CLEAR_REQ <= 1'b1;
                                O_ADDR <= O_ADDR + 4;
                                state <= S_READ_CMD;
                            end
                            2'b10: begin // 1110 -> Pulse LDAC
                                O_LDAC_REQ <= 1'b1;
                                O_ADDR <= O_ADDR + 4;
                                state <= S_READ_CMD;
                            end
                            2'b11: begin // 1111 -> Wait
                                if (I_DATA[23:0] == 0) begin
                                    O_ADDR <= O_ADDR + 4;
                                    state <= S_READ_CMD;
                                end else begin
                                    wait_counter <= I_DATA[23:0];
                                    state <= S_WAIT_CYCLES;
                                end
                            end
                        endcase
                    end
                end else if (I_DATA[31:28] == 4'b0000) begin // Control command
                    case (I_CONFIGURE)
                        3'b000: state <= S_IDLE; // Stop and go to idle
                        3'b100: begin // Reset counter and continue
                            O_ADDR <= 32'd0;
                            state <= S_READ_CMD;
                        end
                        default: begin // Other configs, treat as NOP and continue
                            O_ADDR <= O_ADDR + 4;
                            state <= S_READ_CMD;
                        end
                    endcase
                end else begin // Invalid/unknown command, treat as NOP
                    O_ADDR <= O_ADDR + 4;
                    state <= S_READ_CMD;
                end
            end

            S_SPI_TRX_WAIT: begin
                if (I_SPI_DONE) begin
                    O_ADDR <= O_ADDR + 4;
                    state <= S_READ_CMD;
                end
            end

            S_WAIT_CYCLES: begin
                if (wait_counter == 1) begin // Last cycle of waiting
                    O_ADDR <= O_ADDR + 4;
                    state <= S_READ_CMD;
                end
            end
        endcase
    end
end

endmodule 