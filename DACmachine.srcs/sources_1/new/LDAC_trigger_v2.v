// -----------------------------------------------------------------------------
// Minimal LDAC low-pulse generator
// Holds LDAC_N low for LDAC_CLKS system clocks on each I_PULSE_LDAC
// -----------------------------------------------------------------------------
module LDAC_trigger_v2 #(
    parameter integer LDAC_CLKS = 20      // cycles LDAC_N stays low (1-256)
)(
    input  wire I_CLK,
    input  wire I_RSTN,        // async active-low reset
    input  wire I_PULSE_LDAC,  // one-cycle start request
    output wire O_LDAC_N       // active-LOW LDAC pin
);

    reg        ldac_n = 1'b1;  // output register
    reg [7:0]  cnt    = 8'd0;  // 8-bit down-counter

    always @(posedge I_CLK or negedge I_RSTN) begin
        if (!I_RSTN) begin
            ldac_n <= 1'b1;
            cnt    <= 8'd0;
        end else begin
            // New pulse request (only if idle)
            if (I_PULSE_LDAC && cnt == 8'd0) begin
                ldac_n <= 1'b0;
                cnt    <= LDAC_CLKS[7:0] - 8'd1;  // preload N-1
            end
            // Active pulse: count down and release
            else if (cnt != 8'd0) begin
                cnt <= cnt - 8'd1;
                if (cnt == 8'd1)    // last low cycle
                    ldac_n <= 1'b1; // release on next clock
            end
        end
    end

    assign O_LDAC_N = ldac_n;

endmodule
