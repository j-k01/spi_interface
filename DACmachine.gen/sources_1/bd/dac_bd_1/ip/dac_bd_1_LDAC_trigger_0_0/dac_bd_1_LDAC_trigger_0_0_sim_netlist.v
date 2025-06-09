// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  7 22:56:38 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_LDAC_trigger_0_0/dac_bd_1_LDAC_trigger_0_0_sim_netlist.v
// Design      : dac_bd_1_LDAC_trigger_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_LDAC_trigger_0_0,LDAC_trigger,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "LDAC_trigger,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_LDAC_trigger_0_0
   (I_CLK,
    I_RSTN,
    I_PULSE_DAC,
    I_BUSY_N,
    I_FORCE,
    O_LDAC,
    O_LDAC_PRIMED,
    O_LDAC_ON_COOLDOWN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_CLK, ASSOCIATED_RESET I_RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input I_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 I_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input I_RSTN;
  input I_PULSE_DAC;
  input I_BUSY_N;
  input I_FORCE;
  output O_LDAC;
  output O_LDAC_PRIMED;
  output O_LDAC_ON_COOLDOWN;

  wire I_BUSY_N;
  wire I_CLK;
  wire I_FORCE;
  wire I_PULSE_DAC;
  wire I_RSTN;
  wire O_LDAC;
  wire O_LDAC_ON_COOLDOWN;
  wire O_LDAC_PRIMED;

  dac_bd_1_LDAC_trigger_0_0_LDAC_trigger inst
       (.I_BUSY_N(I_BUSY_N),
        .I_CLK(I_CLK),
        .I_FORCE(I_FORCE),
        .I_PULSE_DAC(I_PULSE_DAC),
        .I_RSTN(I_RSTN),
        .O_LDAC(O_LDAC),
        .O_LDAC_ON_COOLDOWN(O_LDAC_ON_COOLDOWN),
        .primed_reg_0(O_LDAC_PRIMED));
endmodule

(* ORIG_REF_NAME = "LDAC_trigger" *) 
module dac_bd_1_LDAC_trigger_0_0_LDAC_trigger
   (primed_reg_0,
    O_LDAC,
    O_LDAC_ON_COOLDOWN,
    I_PULSE_DAC,
    I_BUSY_N,
    I_FORCE,
    I_CLK,
    I_RSTN);
  output primed_reg_0;
  output O_LDAC;
  output O_LDAC_ON_COOLDOWN;
  input I_PULSE_DAC;
  input I_BUSY_N;
  input I_FORCE;
  input I_CLK;
  input I_RSTN;

  wire I_BUSY_N;
  wire I_CLK;
  wire I_FORCE;
  wire I_PULSE_DAC;
  wire I_RSTN;
  wire O_LDAC;
  wire O_LDAC_ON_COOLDOWN;
  wire \cool_cnt[0]_i_1_n_0 ;
  wire \cool_cnt[1]_i_1_n_0 ;
  wire \cool_cnt_reg_n_0_[0] ;
  wire \cool_cnt_reg_n_0_[1] ;
  wire cooldown_i_1_n_0;
  wire ldac_n_i_1_n_0;
  wire ldac_n_i_2_n_0;
  wire ldac_n_i_3_n_0;
  wire primed_i_1_n_0;
  wire primed_reg_0;
  wire \pulse_cnt[0]_i_1_n_0 ;
  wire \pulse_cnt[1]_i_1_n_0 ;
  wire \pulse_cnt_reg_n_0_[0] ;
  wire \pulse_cnt_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4454)) 
    \cool_cnt[0]_i_1 
       (.I0(\cool_cnt_reg_n_0_[0] ),
        .I1(\cool_cnt_reg_n_0_[1] ),
        .I2(\pulse_cnt_reg_n_0_[0] ),
        .I3(\pulse_cnt_reg_n_0_[1] ),
        .O(\cool_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8898)) 
    \cool_cnt[1]_i_1 
       (.I0(\cool_cnt_reg_n_0_[0] ),
        .I1(\cool_cnt_reg_n_0_[1] ),
        .I2(\pulse_cnt_reg_n_0_[0] ),
        .I3(\pulse_cnt_reg_n_0_[1] ),
        .O(\cool_cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cool_cnt_reg[0] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\cool_cnt[0]_i_1_n_0 ),
        .Q(\cool_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cool_cnt_reg[1] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\cool_cnt[1]_i_1_n_0 ),
        .Q(\cool_cnt_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBBBB0B00)) 
    cooldown_i_1
       (.I0(\cool_cnt_reg_n_0_[1] ),
        .I1(\cool_cnt_reg_n_0_[0] ),
        .I2(\pulse_cnt_reg_n_0_[1] ),
        .I3(\pulse_cnt_reg_n_0_[0] ),
        .I4(O_LDAC_ON_COOLDOWN),
        .O(cooldown_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cooldown_reg
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(cooldown_i_1_n_0),
        .Q(O_LDAC_ON_COOLDOWN));
  LUT4 #(
    .INIT(16'h4F44)) 
    ldac_n_i_1
       (.I0(\pulse_cnt_reg_n_0_[1] ),
        .I1(\pulse_cnt_reg_n_0_[0] ),
        .I2(ldac_n_i_3_n_0),
        .I3(O_LDAC),
        .O(ldac_n_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ldac_n_i_2
       (.I0(I_RSTN),
        .O(ldac_n_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFCA0)) 
    ldac_n_i_3
       (.I0(primed_reg_0),
        .I1(I_FORCE),
        .I2(I_BUSY_N),
        .I3(I_PULSE_DAC),
        .O(ldac_n_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ldac_n_reg
       (.C(I_CLK),
        .CE(1'b1),
        .D(ldac_n_i_1_n_0),
        .PRE(ldac_n_i_2_n_0),
        .Q(O_LDAC));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0B0A)) 
    primed_i_1
       (.I0(primed_reg_0),
        .I1(I_FORCE),
        .I2(I_BUSY_N),
        .I3(I_PULSE_DAC),
        .O(primed_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    primed_reg
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(primed_i_1_n_0),
        .Q(primed_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \pulse_cnt[0]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[0] ),
        .I1(\pulse_cnt_reg_n_0_[1] ),
        .O(\pulse_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9998998898989888)) 
    \pulse_cnt[1]_i_1 
       (.I0(\pulse_cnt_reg_n_0_[0] ),
        .I1(\pulse_cnt_reg_n_0_[1] ),
        .I2(I_PULSE_DAC),
        .I3(I_BUSY_N),
        .I4(I_FORCE),
        .I5(primed_reg_0),
        .O(\pulse_cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[0] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\pulse_cnt[0]_i_1_n_0 ),
        .Q(\pulse_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[1] 
       (.C(I_CLK),
        .CE(1'b1),
        .CLR(ldac_n_i_2_n_0),
        .D(\pulse_cnt[1]_i_1_n_0 ),
        .Q(\pulse_cnt_reg_n_0_[1] ));
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
