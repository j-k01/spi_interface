// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Jun  9 15:53:16 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_LDAC_trigger_v2_0_0/dac_bd_1_LDAC_trigger_v2_0_0_sim_netlist.v
// Design      : dac_bd_1_LDAC_trigger_v2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_LDAC_trigger_v2_0_0,LDAC_trigger_v2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "LDAC_trigger_v2,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_LDAC_trigger_v2_0_0
   (I_CLK,
    I_RSTN,
    I_PULSE_LDAC,
    O_LDAC_N);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_CLK, ASSOCIATED_RESET I_RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input I_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 I_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input I_RSTN;
  input I_PULSE_LDAC;
  output O_LDAC_N;

  wire I_CLK;
  wire I_PULSE_LDAC;
  wire I_RSTN;
  wire O_LDAC_N;

  dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2 inst
       (.I_CLK(I_CLK),
        .I_PULSE_LDAC(I_PULSE_LDAC),
        .I_RSTN(I_RSTN),
        .O_LDAC_N(O_LDAC_N));
endmodule

(* ORIG_REF_NAME = "LDAC_trigger_v2" *) 
module dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2
   (O_LDAC_N,
    I_RSTN,
    I_PULSE_LDAC,
    I_CLK);
  output O_LDAC_N;
  input I_RSTN;
  input I_PULSE_LDAC;
  input I_CLK;

  wire I_CLK;
  wire I_PULSE_LDAC;
  wire I_RSTN;
  wire O_LDAC_N;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire [7:0]cnt_reg;
  wire ldac_n_i_1_n_0;
  wire ldac_n_i_2_n_0;
  wire ldac_n_i_3_n_0;
  wire ldac_n_i_4_n_0;
  wire [7:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00000000DF)) 
    \cnt[2]_i_1 
       (.I0(I_PULSE_LDAC),
        .I1(cnt_reg[3]),
        .I2(ldac_n_i_4_n_0),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .I5(cnt_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFF000000007)) 
    \cnt[3]_i_1 
       (.I0(I_PULSE_LDAC),
        .I1(ldac_n_i_4_n_0),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .I5(cnt_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \cnt[4]_i_1 
       (.I0(I_PULSE_LDAC),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[4]),
        .I5(\cnt[4]_i_3_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \cnt[4]_i_2 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \cnt[4]_i_3 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg[5]),
        .I1(p_0_in[5]),
        .I2(\cnt[4]_i_1_n_0 ),
        .O(\cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FF0000FD00)) 
    \cnt[5]_i_2 
       (.I0(I_PULSE_LDAC),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[6]),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \cnt[6]_i_1 
       (.I0(cnt_reg[6]),
        .I1(p_0_in[6]),
        .I2(\cnt[4]_i_1_n_0 ),
        .O(\cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0FF00000D00)) 
    \cnt[6]_i_2 
       (.I0(I_PULSE_LDAC),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[4]),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(cnt_reg[5]),
        .I5(cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg[7]),
        .I1(p_0_in[7]),
        .I2(\cnt[4]_i_1_n_0 ),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFF00010000)) 
    \cnt[7]_i_2 
       (.I0(I_PULSE_LDAC),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[4]),
        .I4(\cnt[4]_i_3_n_0 ),
        .I5(cnt_reg[7]),
        .O(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(I_CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(ldac_n_i_2_n_0),
        .D(p_0_in[0]),
        .Q(cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(I_CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(ldac_n_i_2_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(I_CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(ldac_n_i_2_n_0),
        .D(p_0_in[2]),
        .Q(cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(I_CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(ldac_n_i_2_n_0),
        .D(p_0_in[3]),
        .Q(cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(I_CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .CLR(ldac_n_i_2_n_0),
        .D(p_0_in[4]),
        .Q(cnt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(cnt_reg[7]));
  LUT6 #(
    .INIT(64'hFFFDFFFF03000000)) 
    ldac_n_i_1
       (.I0(I_PULSE_LDAC),
        .I1(ldac_n_i_3_n_0),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(ldac_n_i_4_n_0),
        .I5(O_LDAC_N),
        .O(ldac_n_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ldac_n_i_2
       (.I0(I_RSTN),
        .O(ldac_n_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ldac_n_i_3
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .O(ldac_n_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ldac_n_i_4
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[4]),
        .O(ldac_n_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ldac_n_reg
       (.C(I_CLK),
        .CE(1'b1),
        .D(ldac_n_i_1_n_0),
        .PRE(ldac_n_i_2_n_0),
        .Q(O_LDAC_N));
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
