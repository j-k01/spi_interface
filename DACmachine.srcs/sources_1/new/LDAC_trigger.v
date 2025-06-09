module LDAC_trigger #
(
    // ----- user-tunable parameters ------------------------------------------
    parameter integer CLK_HZ            = 100_000_000,   // system clock rate
    parameter integer LDAC_LOW_NS       = 200,            // ? 10 ns (datasheet t13)
    parameter integer COOLDOWN_NS       = 30_000             // ? 30 µs (datasheet t17)
)
(
    input  wire I_CLK,          // system clock
    input  wire I_RSTN,         // asynchronous active-low reset
    input  wire I_PULSE_DAC,    // 1-clk request to update DAC
    input  wire I_BUSY_N,         // HIGH = DAC ready, LOW = internal calc
    input  wire I_FORCE,        // bypass BUSY gating when HIGH

    output wire O_LDAC,         // active-LOW LDAC pin to the DAC
    output wire O_LDAC_PRIMED,  // HIGH when a request is queued
    output wire O_LDAC_ON_COOLDOWN // HIGH during t17 settling time
);

    function integer clog2;
        input integer value;
        integer i;
        begin
            clog2 = 0;
            for (i = value-1; i > 0; i = i >> 1)
                clog2 = clog2 + 1;
        end
    endfunction
    
    localparam integer PULSE_CLKS_RAW  =  ((LDAC_LOW_NS * CLK_HZ) + 999_999_999) / 1_000_000_000;
    localparam integer COOLDOWN_CLKS_RAW = ((COOLDOWN_NS * CLK_HZ) + 999_999_999) / 1_000_000_000;
    
    localparam integer PULSE_CLKS     = (PULSE_CLKS_RAW     == 0) ? 1 : PULSE_CLKS_RAW;
    localparam integer COOLDOWN_CLKS  = (COOLDOWN_CLKS_RAW  == 0) ? 1 : COOLDOWN_CLKS_RAW;
    localparam integer PULSE_CNT_W    = (PULSE_CLKS    <= 1) ? 1 : clog2(PULSE_CLKS);
    localparam integer COOLDOWN_CNT_W = (COOLDOWN_CLKS <= 1) ? 1 : clog2(COOLDOWN_CLKS);
    
    // -------------------------- registers -----------------------------------
    reg                    ldac_n       = 1'b1;   // the active-LOW output
    reg                    primed       = 1'b0;
    reg                    cooldown     = 1'b0;
    reg [PULSE_CNT_W   :0] pulse_cnt   = {(PULSE_CNT_W+1){1'b0}};   // k+1 bits
    reg [COOLDOWN_CNT_W:0] cool_cnt    = {(COOLDOWN_CNT_W+1){1'b0}};
    
    // -------------------------- logic ---------------------------------------
    always @(posedge I_CLK or negedge I_RSTN) begin
        if (!I_RSTN) begin
            ldac_n     <= 1'b1;
            primed     <= 1'b0;
            cooldown   <= 1'b0;
            pulse_cnt  <= 0;
            cool_cnt   <= 0;
        end else begin
            if (I_PULSE_DAC) begin
                if (I_FORCE || I_BUSY_N) begin
                    // fire immediately
                    ldac_n    <= 1'b0;
                    pulse_cnt <= PULSE_CLKS - 1;
                end else begin
                    primed <= 1'b1;
                end
            end

            if ((primed && I_BUSY_N) && ~I_FORCE) begin
                primed     <= 1'b0;
                ldac_n     <= 1'b0;
                pulse_cnt  <= PULSE_CLKS - 1;
            end

            if (pulse_cnt != 0) begin
                pulse_cnt <= pulse_cnt - 1;
                if (pulse_cnt == 1) begin
                    ldac_n   <= 1'b1;          // end of LDAC low
                    cooldown <= 1'b1;
                    cool_cnt <= COOLDOWN_CLKS;
                end
            end else begin
                ldac_n <= 1'b1;
            end

            if (cool_cnt != 0) begin
                cool_cnt <= cool_cnt - 1;
                if (cool_cnt == 1) begin
                    cooldown <= 1'b0;
                end
            end
        end
    end

    assign O_LDAC          = ldac_n;   // drive the DAC pin
    assign O_LDAC_PRIMED   = primed;
    assign O_LDAC_ON_COOLDOWN = cooldown;

endmodule
