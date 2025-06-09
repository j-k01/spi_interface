`timescale 1ns/1ps

module testbench;
    // Parameters
    parameter CLK_PERIOD = 10;         // 100MHz system clock
    
    // Test control
    integer test_count = 0;
    integer pass_count = 0;
    integer fail_count = 0;
    
    // SPI configuration settings
    reg [1:0] spi_mode;
    reg [15:0] bits_per_transaction;    // Number of bits in transaction
    reg [15:0] cycles_per_bit;          // System clock cycles per bit
    reg [15:0] sclk_high_offset;        // Cycle offset when SCLK goes high
    reg [15:0] sclk_low_offset;         // Cycle offset when SCLK goes low
    reg [15:0] sdo_change_offset;       // Cycle offset when MOSI changes
    reg [15:0] sdi_sample_offset;       // Cycle offset when MISO is sampled
    reg [15:0] cs_to_trx_delay;         // Delay between CS assertion and transaction start
    reg [15:0] cs_hold_time;            // CS hold time after transaction completion
    
    // Testbench signals
    reg clk;
    reg rst_n;
    reg [31:0] data_in;
    reg start;
    wire [31:0] data_out;
    wire busy;
    wire done;
    wire sclk;
    wire mosi;
    reg miso;
    wire ss_n;
    
    // SPI Slave simulation - configurable for variable data lengths
    reg [31:0] slave_tx_data;           // Data slave will send to master
    reg [31:0] slave_rx_data;           // Data slave receives from master
    reg [15:0] slave_bit_count;         // Current bit being processed
    reg [15:0] slave_expected_bits;     // Expected number of bits for current transaction
    reg slave_transaction_active;       // Flag indicating active transaction
    
    // Expected results for self-checking
    reg [31:0] expected_master_rx;      // What master should receive
    reg [31:0] expected_slave_rx;       // What slave should receive
    
    // DUT instance - note: actual module name is spi_interface
    spi_interface DUT (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .start(start),
        .data_out(data_out),
        .busy(busy),
        .done(done),
        .sclk(sclk),
        .mosi(mosi),
        .miso(miso),
        .ss_n(ss_n),
        
        // Configuration inputs
        .spi_mode(spi_mode),
        .bits_per_transaction(bits_per_transaction),
        .cycles_per_bit(cycles_per_bit),
        .sclk_high_offset(sclk_high_offset),
        .sclk_low_offset(sclk_low_offset),
        .sdo_change_offset(sdo_change_offset),
        .sdi_sample_offset(sdi_sample_offset),
        .cs_to_trx_delay(cs_to_trx_delay),
        .cs_hold_time(cs_hold_time)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end
    
    // Initialize slave on CS assertion
    always @(negedge ss_n) begin
        if (!ss_n) begin
            slave_transaction_active = 1;
            slave_bit_count = 0;
            slave_rx_data = 32'h0;
            slave_expected_bits = bits_per_transaction;
            // For CPHA=0, MISO should be valid before the first clock edge.
            // Use blocking assignment to avoid simulation race conditions.
            // For MSB-first, present the MSB of the transaction.
            miso = slave_tx_data[slave_expected_bits - 1];
            $display("  Slave: Transaction started, expecting %d bits (MSB first)", slave_expected_bits);
        end
    end
    
    // Handle transaction end on CS deassertion  
    always @(posedge ss_n) begin
        if (ss_n && slave_transaction_active) begin
            slave_transaction_active = 0;
            $display("  Slave: Transaction completed, received %d bits: 0x%h", 
                     slave_bit_count, slave_rx_data & ((1 << slave_expected_bits) - 1));
        end
    end
    
    // Simple SPI Slave simulation that follows SCLK edges
    // Sample MOSI on rising edge, update MISO on falling edge (SPI Mode 0)
    always @(posedge sclk) begin
        if (!ss_n && slave_bit_count < slave_expected_bits) begin
            // Sample MOSI on rising edge of SCLK (MSB first)
            slave_rx_data[slave_expected_bits - 1 - slave_bit_count] = mosi;
            $display("    Slave sampled bit %0d (val %b) into position %0d", slave_bit_count, mosi, slave_expected_bits - 1 - slave_bit_count);
            slave_bit_count = slave_bit_count + 1;
        end
    end
    
    // Update MISO on falling edge of SCLK
    always @(negedge sclk) begin
        if (!ss_n && slave_bit_count < slave_expected_bits) begin
            // Present the next bit to be sampled by master (MSB first)
            miso = slave_tx_data[slave_expected_bits - 1 - slave_bit_count];
        end else begin
            miso = 1'b0;
        end
    end
    
    // Handle MISO when not in transaction
    always @(posedge ss_n) begin
        miso = 1'b0; // Idle state
    end
    
    // Task to run a test case
    task run_test;
        input [31:0] test_data;
        input [31:0] slave_response;
        input [15:0] num_bits;
        input [127:0] test_name;
        begin
            test_count = test_count + 1;
            $display("\n=== Test %0d: %s ===", test_count, test_name);
            $display("  Sending: 0x%h (%d bits)", test_data, num_bits);
            $display("  Slave will respond with: 0x%h", slave_response);
            
            // Set up slave response - for LSB-first, data is right-aligned
            slave_tx_data = slave_response;
            expected_master_rx = slave_response & ((1 << num_bits) - 1);
            expected_slave_rx = test_data & ((1 << num_bits) - 1);
            
            // Update configuration
            bits_per_transaction = num_bits;
            #1; // Allow value to propagate before starting
            
            // Start transaction
            data_in = test_data;
            start = 1;
            #20;
            start = 0;
            
            // Wait for completion
            wait(done);
            #20;
            
            // Check results
            check_results();
        end
    endtask
    
    // Task to check test results
    task check_results;
        reg [31:0] actual_master_rx;
        reg [31:0] actual_slave_rx;
        reg test_passed;
        begin
            // For MSB-first, data is already properly right-aligned
            actual_master_rx = data_out & ((1 << bits_per_transaction) - 1);
            actual_slave_rx = slave_rx_data & ((1 << bits_per_transaction) - 1);
            
            test_passed = 1;
            
            $display("  Results:");
            $display("    Master received: 0x%h (expected: 0x%h)", 
                     actual_master_rx, expected_master_rx);
            $display("    Slave received:  0x%h (expected: 0x%h)", 
                     actual_slave_rx, expected_slave_rx);
            
            // Check master reception
            if (actual_master_rx !== expected_master_rx) begin
                $display("  ERROR: Master received incorrect data!");
                test_passed = 0;
            end
            
            // Check slave reception
            if (actual_slave_rx !== expected_slave_rx) begin
                $display("  ERROR: Slave received incorrect data!");
                test_passed = 0;
            end
            
            if (test_passed) begin
                $display("  PASS: Test completed successfully");
                pass_count = pass_count + 1;
            end else begin
                $display("  FAIL: Test failed");
                fail_count = fail_count + 1;
            end
        end
    endtask
    
    // Test sequence
    initial begin
        // Initialize waveform dump
        $display("Starting SPI Master Configurable Testbench");
        $display("==========================================");
        
        // Configure basic SPI settings (SPI Mode 0)
        spi_mode = 2'b00;               // CPOL=0, CPHA=0
        cycles_per_bit = 10;
        sclk_high_offset = 2;
        sclk_low_offset = 7;
        sdo_change_offset = 1;          // Change data before clock edge
        sdi_sample_offset = 4;          // Sample in middle of clock high
        cs_to_trx_delay = 5;
        cs_hold_time = 8;
        
        // Initialize signals
        rst_n = 0;
        start = 0;
        data_in = 32'h0;
        miso = 0;
        
        // Apply reset
        #50;
        rst_n = 1;
        #50;
        
        // Test Case 1: 8-bit transfer
        run_test(32'h55, 32'hA5, 16'd8, "8-bit transfer (0x55 <-> 0xA5)");
        
        // Test Case 2: 16-bit transfer
        run_test(32'h1234, 32'h5678, 16'd16, "16-bit transfer (0x1234 <-> 0x5678)");
        
        // Test Case 3: 12-bit transfer (non-standard length)
        run_test(32'hABC, 32'h123, 16'd12, "12-bit transfer (0xABC <-> 0x123)");
        
        // Test Case 4: 4-bit transfer (short)
        run_test(32'hF, 32'h7, 16'd4, "4-bit transfer (0xF <-> 0x7)");
        
        // Test Case 5: 24-bit transfer
        run_test(32'hDEADBE, 32'hCAFEBA, 16'd24, "24-bit transfer (0xDEADBE <-> 0xCAFEBA)");
        
        // Test with different timing configuration
        $display("\n=== Changing timing configuration ===");
        cycles_per_bit = 6;             // Faster clock
        sclk_low_offset = 5;            // Adjust for faster clock (must be < cycles_per_bit)
        cs_to_trx_delay = 10;           // Longer setup
        cs_hold_time = 15;              // Longer hold
        
        run_test(32'h33, 32'hCC, 16'd8, "8-bit with modified timing");
        
        // Final results
        #100;
        $display("\n==========================================");
        $display("Test Summary:");
        $display("  Total tests: %0d", test_count);
        $display("  Passed:      %0d", pass_count);
        $display("  Failed:      %0d", fail_count);
        
        if (fail_count == 0) begin
            $display("  ALL TESTS PASSED!");
        end else begin
            $display("  SOME TESTS FAILED!");
        end
        
        $display("==========================================");
        $finish;
    end
    
endmodule 