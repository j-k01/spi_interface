// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 10 11:33:30 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dac_bd_1_reset_clr_trigger_0_0 -prefix
//               dac_bd_1_reset_clr_trigger_0_0_ dac_bd_1_reset_clr_trigger_0_0_sim_netlist.v
// Design      : dac_bd_1_reset_clr_trigger_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_reset_clr_trigger_0_0,reset_clr_trigger,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "reset_clr_trigger,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_reset_clr_trigger_0_0
   (I_CLK,
    I_RSTN,
    I_PULSE_RESET,
    I_PULSE_CLR,
    O_RESET_N,
    O_CLR_N);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_CLK, ASSOCIATED_RESET I_PULSE_RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input I_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 I_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input I_RSTN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 I_PULSE_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_PULSE_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input I_PULSE_RESET;
  input I_PULSE_CLR;
  output O_RESET_N;
  output O_CLR_N;

  wire I_CLK;
  wire I_PULSE_CLR;
  wire I_PULSE_RESET;
  wire I_RSTN;
  wire O_CLR_N;
  wire O_RESET_N;

  dac_bd_1_reset_clr_trigger_0_0_reset_clr_trigger inst
       (.I_CLK(I_CLK),
        .I_PULSE_CLR(I_PULSE_CLR),
        .I_PULSE_RESET(I_PULSE_RESET),
        .I_RSTN(I_RSTN),
        .O_CLR_N(O_CLR_N),
        .O_RESET_N(O_RESET_N));
endmodule

module dac_bd_1_reset_clr_trigger_0_0_reset_clr_trigger
   (O_RESET_N,
    O_CLR_N,
    I_CLK,
    I_PULSE_RESET,
    I_PULSE_CLR,
    I_RSTN);
  output O_RESET_N;
  output O_CLR_N;
  input I_CLK;
  input I_PULSE_RESET;
  input I_PULSE_CLR;
  input I_RSTN;

  wire I_CLK;
  wire I_PULSE_CLR;
  wire I_PULSE_RESET;
  wire I_RSTN;
  wire O_CLR_N;
  wire O_RESET_N;
  wire \clr_cnt[4]_i_1_n_0 ;
  wire [4:0]clr_cnt_reg;
  wire clr_n_i_1_n_0;
  wire clr_n_i_2_n_0;
  wire clr_n_i_3_n_0;
  wire [4:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire \reset_cnt[4]_i_1_n_0 ;
  wire [4:0]reset_cnt_reg;
  wire reset_n_i_1_n_0;
  wire reset_n_i_2_n_0;
  wire reset_n_i_3_n_0;
  wire reset_n_i_4_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clr_cnt[0]_i_1 
       (.I0(clr_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \clr_cnt[1]_i_1 
       (.I0(clr_cnt_reg[1]),
        .I1(clr_cnt_reg[0]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hFF00FF00FF0000FD)) 
    \clr_cnt[2]_i_1 
       (.I0(I_PULSE_CLR),
        .I1(clr_cnt_reg[4]),
        .I2(clr_cnt_reg[3]),
        .I3(clr_cnt_reg[2]),
        .I4(clr_cnt_reg[0]),
        .I5(clr_cnt_reg[1]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hFE01FE00FE01FE01)) 
    \clr_cnt[3]_i_1 
       (.I0(clr_cnt_reg[2]),
        .I1(clr_cnt_reg[0]),
        .I2(clr_cnt_reg[1]),
        .I3(clr_cnt_reg[3]),
        .I4(clr_cnt_reg[4]),
        .I5(I_PULSE_CLR),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clr_cnt[4]_i_1 
       (.I0(clr_cnt_reg[2]),
        .I1(clr_cnt_reg[0]),
        .I2(clr_cnt_reg[1]),
        .I3(clr_cnt_reg[3]),
        .I4(clr_cnt_reg[4]),
        .I5(I_PULSE_CLR),
        .O(\clr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \clr_cnt[4]_i_2 
       (.I0(clr_cnt_reg[4]),
        .I1(clr_cnt_reg[2]),
        .I2(clr_cnt_reg[0]),
        .I3(clr_cnt_reg[1]),
        .I4(clr_cnt_reg[3]),
        .O(p_0_in__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clr_cnt_reg[0] 
       (.C(I_CLK),
        .CE(\clr_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(clr_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clr_cnt_reg[1] 
       (.C(I_CLK),
        .CE(\clr_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(clr_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clr_cnt_reg[2] 
       (.C(I_CLK),
        .CE(\clr_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(clr_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clr_cnt_reg[3] 
       (.C(I_CLK),
        .CE(\clr_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(clr_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clr_cnt_reg[4] 
       (.C(I_CLK),
        .CE(\clr_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(clr_cnt_reg[4]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    clr_n_i_1
       (.I0(clr_cnt_reg[4]),
        .I1(clr_n_i_2_n_0),
        .I2(clr_n_i_3_n_0),
        .I3(O_CLR_N),
        .O(clr_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clr_n_i_2
       (.I0(clr_cnt_reg[2]),
        .I1(clr_cnt_reg[0]),
        .I2(clr_cnt_reg[1]),
        .I3(clr_cnt_reg[3]),
        .O(clr_n_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    clr_n_i_3
       (.I0(clr_cnt_reg[4]),
        .I1(clr_cnt_reg[3]),
        .I2(clr_cnt_reg[2]),
        .I3(clr_cnt_reg[1]),
        .I4(I_PULSE_CLR),
        .I5(clr_cnt_reg[0]),
        .O(clr_n_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    clr_n_reg
       (.C(I_CLK),
        .CE(1'b1),
        .D(clr_n_i_1_n_0),
        .PRE(reset_n_i_2_n_0),
        .Q(O_CLR_N));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reset_cnt[0]_i_1 
       (.I0(reset_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \reset_cnt[1]_i_1 
       (.I0(reset_cnt_reg[1]),
        .I1(reset_cnt_reg[0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFF00FF00FF0000FD)) 
    \reset_cnt[2]_i_1 
       (.I0(I_PULSE_RESET),
        .I1(reset_cnt_reg[4]),
        .I2(reset_cnt_reg[3]),
        .I3(reset_cnt_reg[2]),
        .I4(reset_cnt_reg[0]),
        .I5(reset_cnt_reg[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFE01FE00FE01FE01)) 
    \reset_cnt[3]_i_1 
       (.I0(reset_cnt_reg[2]),
        .I1(reset_cnt_reg[0]),
        .I2(reset_cnt_reg[1]),
        .I3(reset_cnt_reg[3]),
        .I4(reset_cnt_reg[4]),
        .I5(I_PULSE_RESET),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reset_cnt[4]_i_1 
       (.I0(reset_cnt_reg[2]),
        .I1(reset_cnt_reg[0]),
        .I2(reset_cnt_reg[1]),
        .I3(reset_cnt_reg[3]),
        .I4(reset_cnt_reg[4]),
        .I5(I_PULSE_RESET),
        .O(\reset_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \reset_cnt[4]_i_2 
       (.I0(reset_cnt_reg[4]),
        .I1(reset_cnt_reg[2]),
        .I2(reset_cnt_reg[0]),
        .I3(reset_cnt_reg[1]),
        .I4(reset_cnt_reg[3]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[0] 
       (.C(I_CLK),
        .CE(\reset_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in[0]),
        .Q(reset_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[1] 
       (.C(I_CLK),
        .CE(\reset_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in[1]),
        .Q(reset_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[2] 
       (.C(I_CLK),
        .CE(\reset_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in[2]),
        .Q(reset_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[3] 
       (.C(I_CLK),
        .CE(\reset_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in[3]),
        .Q(reset_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[4] 
       (.C(I_CLK),
        .CE(\reset_cnt[4]_i_1_n_0 ),
        .CLR(reset_n_i_2_n_0),
        .D(p_0_in[4]),
        .Q(reset_cnt_reg[4]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    reset_n_i_1
       (.I0(reset_cnt_reg[4]),
        .I1(reset_n_i_3_n_0),
        .I2(reset_n_i_4_n_0),
        .I3(O_RESET_N),
        .O(reset_n_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_n_i_2
       (.I0(I_RSTN),
        .O(reset_n_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_n_i_3
       (.I0(reset_cnt_reg[2]),
        .I1(reset_cnt_reg[0]),
        .I2(reset_cnt_reg[1]),
        .I3(reset_cnt_reg[3]),
        .O(reset_n_i_3_n_0));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    reset_n_i_4
       (.I0(reset_cnt_reg[1]),
        .I1(reset_cnt_reg[2]),
        .I2(reset_cnt_reg[3]),
        .I3(reset_cnt_reg[4]),
        .I4(I_PULSE_RESET),
        .I5(reset_cnt_reg[0]),
        .O(reset_n_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    reset_n_reg
       (.C(I_CLK),
        .CE(1'b1),
        .D(reset_n_i_1_n_0),
        .PRE(reset_n_i_2_n_0),
        .Q(O_RESET_N));
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
