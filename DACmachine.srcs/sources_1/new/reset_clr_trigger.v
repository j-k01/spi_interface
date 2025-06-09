
module DAC_reset_clr_trigger #(
    parameter integer CLK_HZ         = 100_000_000, // system clock rate
    parameter integer RESET_LOW_NS   = 30,   // keep ? 30
    parameter integer CLR_LOW_NS     = 140   // keep ? 140
)(
    input  wire I_CLK,
    input  wire I_RSTN,            // async active-low reset
    input  wire I_PULSE_RESET,     // 1-clk request ? RESET_n goes low
    input  wire I_PULSE_CLR,       // 1-clk request ? CLR_n   goes low

    output wire O_RESET_N,         // active-LOW RESET pin
    output wire O_CLR_N            // active-LOW CLR   pin
);

    // --------------------------- helper --------------------------------------
    function integer clog2;
        input integer value;
        integer i;
        begin
            clog2 = 0;
            for (i = value-1; i > 0; i = i >> 1)
                clog2 = clog2 + 1;
        end
    endfunction

    localparam integer RESET_CLKS_RAW = ((RESET_LOW_NS * CLK_HZ) + 999_999_999) / 1_000_000_000;
    localparam integer CLR_CLKS_RAW   = ((CLR_LOW_NS   * CLK_HZ) + 999_999_999) / 1_000_000_000;

    localparam integer RESET_CLKS = (RESET_CLKS_RAW == 0) ? 1 : RESET_CLKS_RAW;
    localparam integer CLR_CLKS   = (CLR_CLKS_RAW   == 0) ? 1 : CLR_CLKS_RAW;

    localparam integer W_RESET = (RESET_CLKS <= 1) ? 1 : clog2(RESET_CLKS);
    localparam integer W_CLR   = (CLR_CLKS   <= 1) ? 1 : clog2(CLR_CLKS);


    reg                    reset_n  = 1'b1;   // outputs (active-LOW)
    reg                    clr_n    = 1'b1;

    reg [W_RESET:0] reset_cnt = {(W_RESET+1){1'b0}};
    reg [W_CLR  :0] clr_cnt   = {(W_CLR  +1){1'b0}};


    always @(posedge I_CLK or negedge I_RSTN) begin
        if (!I_RSTN) begin
            reset_n   <= 1'b1;
            clr_n     <= 1'b1;
            reset_cnt <= 0;
            clr_cnt   <= 0;
        end
        else begin
            if (I_PULSE_RESET) begin
                reset_n   <= 1'b0;            // start pulse
                reset_cnt <= RESET_CLKS;      // inclusive count
            end else if (reset_cnt != 0) begin
                reset_cnt <= reset_cnt - 1;
                if (reset_cnt == 1) begin            // last low cycle
                    reset_n <= 1'b1;           // release RESET
                end
            end

            //------------------------------ CLR --------------------------------
            if (I_PULSE_CLR && (clr_cnt == 0)) begin
                clr_n   <= 1'b0;
                clr_cnt <= CLR_CLKS;
            end
            if (clr_cnt != 0) begin
                clr_cnt <= clr_cnt - 1;
                if (clr_cnt == 1)
                    clr_n <= 1'b1;             // release CLR
            end
        end
    end

    // --------------------------- outputs -------------------------------------
    assign O_RESET_N = reset_n;
    assign O_CLR_N   = clr_n;

endmodule
