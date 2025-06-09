`timescale 1ns / 1ps

//
// Testbench for BRAM_reader
//
// This testbench verifies the functionality of the BRAM_reader module by:
// 1. Modeling a BRAM with pre-defined commands.
// 2. Simulating SPI and other external signals.
// 3. Running through a sequence of commands to test all features.
//

module BRAM_reader_tb;

// Parameters
localparam CLK_PERIOD = 10;
localparam BRAM_DEPTH = 16;
localparam S_IDLE = 3'd0;

// Testbench signals
reg clk;
reg rst_n;
reg I_START_MACRO;
reg [2:0] I_CONFIGURE;
reg I_SPI_DONE;
reg [31:0] I_DATA;

wire [31:0] O_ADDR;
wire O_ENABLE;
wire [3:0] O_WE;
wire [31:0] O_SPI_TRX;
wire O_START_SPI;
wire O_CLEAR_REQ;
wire O_LDAC_REQ;
wire O_RESET_REQ;

// BRAM model
reg [31:0] bram_mem [0:BRAM_DEPTH-1];

// Instantiate the DUT
BRAM_reader dut (
    .clk(clk),
    .rst_n(rst_n),
    .O_ADDR(O_ADDR),
    .I_DATA(I_DATA),
    .O_ENABLE(O_ENABLE),
    .O_WE(O_WE),
    .I_START_MACRO(I_START_MACRO),
    .I_CONFIGURE(I_CONFIGURE),
    .O_SPI_TRX(O_SPI_TRX),
    .O_START_SPI(O_START_SPI),
    .I_SPI_DONE(I_SPI_DONE),
    .O_CLEAR_REQ(O_CLEAR_REQ),
    .O_LDAC_REQ(O_LDAC_REQ),
    .O_RESET_REQ(O_RESET_REQ)
);

// Clock generation
initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

// BRAM model: provides data with a 1-cycle read latency
always @(posedge clk) begin
    if (O_ENABLE) begin
        I_DATA <= bram_mem[O_ADDR];
    end
end

// Task to handle an SPI transaction
task wait_for_spi_and_finish;
begin
    // SPI start is now registered, so it appears one cycle after decode
    @(posedge clk); 
    wait(dut.O_START_SPI === 1'b1);
    $display("Time %t: Detected O_START_SPI. Data: %h", $time, dut.O_SPI_TRX);
    
    // Simulate SPI transaction time
    repeat(5) @(posedge clk);
    I_SPI_DONE = 1'b1;
    @(posedge clk);
    I_SPI_DONE = 1'b0;
    $display("Time %t: Sent I_SPI_DONE to DUT.", $time);
end
endtask

// Main test sequence
initial begin
    // Initialize BRAM with a test program
    bram_mem[0]  = 32'hA0000011; // SPI transaction with data 0x11
    bram_mem[1]  = 32'hC0000000; // Pulse Reset signal
    bram_mem[2]  = 32'hD0000000; // Pulse Clear signal
    bram_mem[3]  = 32'hE0000000; // Pulse LDAC signal
    bram_mem[4]  = 32'hF0000003; // Wait for 3 clock cycles
    bram_mem[5]  = 32'hA0000022; // SPI transaction with data 0x22
    bram_mem[6]  = 32'h00000000; // Control command (decoded via I_CONFIGURE)
    bram_mem[7]  = 32'hDEADBEEF; // This address should not be reached in normal sequence

    // Reset sequence
    rst_n = 1'b0;
    I_START_MACRO = 1'b0;
    I_CONFIGURE = 3'b000;
    I_SPI_DONE = 1'b0;
    I_DATA = 32'd0;
    
    $display("Starting BRAM_reader Testbench...");
    repeat(2) @(posedge clk);
    rst_n = 1'b1;
    @(posedge clk);
    $display("Time %t: --- System Reset Released ---", $time);

    // Start the macro execution
    I_START_MACRO = 1'b1;
    @(posedge clk);
    I_START_MACRO = 1'b0;

    // --- TEST 1: Run program and verify address pointer reset ---
    $display("Time %t: --- Test 1: Program Execution & Address Reset ---", $time);
    
    // Addr 0: SPI
    wait_for_spi_and_finish();

    // Addr 1: Wait for Pulse Reset
    wait(O_RESET_REQ); $display("Time %t: Detected O_RESET_REQ", $time); @(negedge O_RESET_REQ);

    // Addr 2: Wait for Pulse Clear
    wait(O_CLEAR_REQ); $display("Time %t: Detected O_CLEAR_REQ", $time); @(negedge O_CLEAR_REQ);

    // Addr 3: Wait for Pulse LDAC
    wait(O_LDAC_REQ); $display("Time %t: Detected O_LDAC_REQ", $time); @(negedge O_LDAC_REQ);

    // Addr 4: Wait command for 3 cycles.
    // With registered logic, the total time from initiating the read for the wait command
    // until the next command is read is:
    // 1(wait_data) + 1(decode) + 3(wait_cycles) + 1(read_cmd) = 6 cycles
    $display("Time %t: Entering wait state (3 cycles).", $time);
    repeat(6) @(posedge clk); 
    $display("Time %t: Exited wait state.", $time);

    // Addr 5: SPI
    wait_for_spi_and_finish();

    // Addr 6: Control Command. Configure to reset address pointer.
    $display("Time %t: Approaching control command at addr 6. Setting I_CONFIGURE to 'reset ptr'.", $time);
    I_CONFIGURE = 3'b100;
    
    // Wait for the address pointer to be reset back to 0.
    // This happens after the control command at address 6 is decoded.
    // Timeline: read(6) -> wait -> decode(6) -> read(0)
    wait(O_ADDR == 0 && dut.state == S_READ_CMD);
    $display("Time %t: SUCCESS! Address pointer reset. Next read is from Addr 0.", $time);

    // --- TEST 2: Run program again and verify stop command ---
    $display("Time %t: --- Test 2: Program Execution & Stop ---", $time);

    // The DUT is now re-reading from address 0.
    // Addr 0: SPI
    wait_for_spi_and_finish();
    // Addr 1-3: Pulse signals
    wait(O_RESET_REQ); @(negedge O_RESET_REQ);
    wait(O_CLEAR_REQ); @(negedge O_CLEAR_REQ);
    wait(O_LDAC_REQ); @(negedge O_LDAC_REQ);
    // Addr 4: Wait
    repeat(6) @(posedge clk);
    // Addr 5: SPI
    wait_for_spi_and_finish();

    // Addr 6: Control Command. Configure to stop execution.
    $display("Time %t: Approaching control command at addr 6. Setting I_CONFIGURE to 'stop'.", $time);
    I_CONFIGURE = 3'b000;

    wait (dut.state == S_IDLE);
    $display("Time %t: SUCCESS! DUT entered IDLE state.", $time);

    @(posedge clk);
    repeat(10) @(posedge clk);
    if (dut.state == S_IDLE) begin
        $display("Time %t: Verified: DUT remains in IDLE.", $time);
    end else begin
        $display("Time %t: FAILURE! DUT left IDLE state unexpectedly.", $time);
    end

    $display("--- Simulation Finished ---");
    $finish;
end

// Optional: Monitor to observe signal changes
initial begin
    $monitor("Time=%0t Addr=%d En=%b | I_DATA=%h | O_START_SPI=%b I_SPI_DONE=%b O_SPI_TRX=%h | Pulses(R,C,L)=%b%b%b | State=%d",
             $time, O_ADDR, O_ENABLE, I_DATA, O_START_SPI, I_SPI_DONE, O_SPI_TRX, O_RESET_REQ, O_CLEAR_REQ, O_LDAC_REQ, dut.state);
end

endmodule 