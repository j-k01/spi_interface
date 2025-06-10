module chip_sel_mux(
    input wire [1:0] I_CHIP_SEL_BITS,
    input wire       i_cs_n,
    output wire [3:0] o_cs_n
);

    assign o_cs_n[0] = (I_CHIP_SEL_BITS == 2'b00) ? i_cs_n : 1'b1;
    assign o_cs_n[1] = (I_CHIP_SEL_BITS == 2'b01) ? i_cs_n : 1'b1;
    assign o_cs_n[2] = (I_CHIP_SEL_BITS == 2'b10) ? i_cs_n : 1'b1;
    assign o_cs_n[3] = (I_CHIP_SEL_BITS == 2'b11) ? i_cs_n : 1'b1;

endmodule