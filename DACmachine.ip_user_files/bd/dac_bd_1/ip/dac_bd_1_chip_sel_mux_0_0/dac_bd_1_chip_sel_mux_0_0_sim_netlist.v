// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 10 11:17:07 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dac_bd_1_chip_sel_mux_0_0 -prefix
//               dac_bd_1_chip_sel_mux_0_0_ dac_bd_1_chip_sel_mux_0_0_sim_netlist.v
// Design      : dac_bd_1_chip_sel_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dac_bd_1_chip_sel_mux_0_0_chip_sel_mux
   (o_cs_n,
    I_CHIP_SEL_BITS,
    i_cs_n);
  output [2:0]o_cs_n;
  input [1:0]I_CHIP_SEL_BITS;
  input i_cs_n;

  wire [1:0]I_CHIP_SEL_BITS;
  wire i_cs_n;
  wire [2:0]o_cs_n;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \o_cs_n[1]_INST_0 
       (.I0(I_CHIP_SEL_BITS[0]),
        .I1(i_cs_n),
        .I2(I_CHIP_SEL_BITS[1]),
        .O(o_cs_n[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \o_cs_n[2]_INST_0 
       (.I0(I_CHIP_SEL_BITS[1]),
        .I1(I_CHIP_SEL_BITS[0]),
        .I2(i_cs_n),
        .O(o_cs_n[1]));
  LUT3 #(
    .INIT(8'hBF)) 
    \o_cs_n[3]_INST_0 
       (.I0(i_cs_n),
        .I1(I_CHIP_SEL_BITS[0]),
        .I2(I_CHIP_SEL_BITS[1]),
        .O(o_cs_n[2]));
endmodule

(* CHECK_LICENSE_TYPE = "dac_bd_1_chip_sel_mux_0_0,chip_sel_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "chip_sel_mux,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_chip_sel_mux_0_0
   (I_CHIP_SEL_BITS,
    i_cs_n,
    o_cs_n);
  input [1:0]I_CHIP_SEL_BITS;
  input i_cs_n;
  output [3:0]o_cs_n;

  wire [1:0]I_CHIP_SEL_BITS;
  wire i_cs_n;
  wire [3:0]o_cs_n;

  dac_bd_1_chip_sel_mux_0_0_chip_sel_mux inst
       (.I_CHIP_SEL_BITS(I_CHIP_SEL_BITS),
        .i_cs_n(i_cs_n),
        .o_cs_n(o_cs_n[3:1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_cs_n[0]_INST_0 
       (.I0(I_CHIP_SEL_BITS[1]),
        .I1(I_CHIP_SEL_BITS[0]),
        .I2(i_cs_n),
        .O(o_cs_n[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
