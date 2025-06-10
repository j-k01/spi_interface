// -----------------------------------------------------------------------------
// Minimal DAC RESET/CLR low-pulse generator
// Holds RESET_N/CLR_N low for configured system clocks on each pulse request
// -----------------------------------------------------------------------------
module reset_clr_trigger #(
    parameter integer RESET_CLKS = 20,      // cycles RESET_N stays low (1-256)
    parameter integer CLR_CLKS   = 20      // cycles CLR_N stays low (1-256)
)(
    input  wire I_CLK,
    input  wire I_RSTN,            // async active-low reset
    input  wire I_PULSE_RESET,     // one-cycle start request for RESET
    input  wire I_PULSE_CLR,       // one-cycle start request for CLR
    output wire O_RESET_N,         // active-LOW RESET pin
    output wire O_CLR_N            // active-LOW CLR pin
);
    // Output registers
    reg        reset_n = 1'b1;
    reg        clr_n   = 1'b1;
    
    // 8-bit down-counters
    reg [7:0]  reset_cnt = 8'd0;
    reg [7:0]  clr_cnt   = 8'd0;
    
    always @(posedge I_CLK or negedge I_RSTN) begin
        if (!I_RSTN) begin
            reset_n   <= 1'b1;
            clr_n     <= 1'b1;
            reset_cnt <= 8'd0;
            clr_cnt   <= 8'd0;
        end else begin
            // -------------------- RESET handling --------------------
            // New reset pulse request (only if idle)
            if (I_PULSE_RESET && reset_cnt == 8'd0) begin
                reset_n   <= 1'b0;
                reset_cnt <= RESET_CLKS[7:0] - 8'd1;  // preload N-1
            end
            // Active reset pulse: count down and release
            else if (reset_cnt != 8'd0) begin
                reset_cnt <= reset_cnt - 8'd1;
                if (reset_cnt == 8'd1)    // last low cycle
                    reset_n <= 1'b1;      // release on next clock
            end
            
            // -------------------- CLR handling --------------------
            // New CLR pulse request (only if idle)
            if (I_PULSE_CLR && clr_cnt == 8'd0) begin
                clr_n   <= 1'b0;
                clr_cnt <= CLR_CLKS[7:0] - 8'd1;  // preload N-1
            end
            // Active CLR pulse: count down and release
            else if (clr_cnt != 8'd0) begin
                clr_cnt <= clr_cnt - 8'd1;
                if (clr_cnt == 8'd1)      // last low cycle
                    clr_n <= 1'b1;        // release on next clock
            end
        end
    end
    
    // Output assignments
    assign O_RESET_N = reset_n;
    assign O_CLR_N   = clr_n;
    
endmodule