// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  7 22:52:38 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_bram_dr_multiplexer_0_0/dac_bd_1_bram_dr_multiplexer_0_0_sim_netlist.v
// Design      : dac_bd_1_bram_dr_multiplexer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_bram_dr_multiplexer_0_0,bram_dr_multiplexer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bram_dr_multiplexer,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_bram_dr_multiplexer_0_0
   (sel,
    bram_spi_data,
    bram_clear_req,
    bram_ldac_req,
    bram_reset_req,
    bram_start_spi,
    direct_spi_data,
    direct_clear_req,
    direct_ldac_req,
    direct_reset_req,
    direct_start_spi,
    I_SPI_DONE,
    spi_data_out,
    clear_req_out,
    ldac_req_out,
    reset_req_out,
    start_spi_out,
    O_BRAM_SPI_DONE);
  input sel;
  input [31:0]bram_spi_data;
  input bram_clear_req;
  input bram_ldac_req;
  input bram_reset_req;
  input bram_start_spi;
  input [31:0]direct_spi_data;
  input direct_clear_req;
  input direct_ldac_req;
  input direct_reset_req;
  input direct_start_spi;
  input I_SPI_DONE;
  output [31:0]spi_data_out;
  output clear_req_out;
  output ldac_req_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_req_out RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_req_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_req_out;
  output start_spi_out;
  output O_BRAM_SPI_DONE;

  wire I_SPI_DONE;
  wire O_BRAM_SPI_DONE;
  wire bram_clear_req;
  wire bram_ldac_req;
  wire bram_reset_req;
  wire [31:0]bram_spi_data;
  wire bram_start_spi;
  wire clear_req_out;
  wire direct_clear_req;
  wire direct_ldac_req;
  wire direct_reset_req;
  wire [31:0]direct_spi_data;
  wire direct_start_spi;
  wire ldac_req_out;
  wire reset_req_out;
  wire sel;
  wire [31:0]spi_data_out;
  wire start_spi_out;

  LUT2 #(
    .INIT(4'hB)) 
    O_BRAM_SPI_DONE_INST_0
       (.I0(I_SPI_DONE),
        .I1(sel),
        .O(O_BRAM_SPI_DONE));
  LUT3 #(
    .INIT(8'hB8)) 
    clear_req_out_INST_0
       (.I0(bram_clear_req),
        .I1(sel),
        .I2(direct_clear_req),
        .O(clear_req_out));
  dac_bd_1_bram_dr_multiplexer_0_0_bram_dr_multiplexer inst
       (.bram_spi_data(bram_spi_data),
        .direct_spi_data(direct_spi_data),
        .sel(sel),
        .spi_data_out(spi_data_out));
  LUT3 #(
    .INIT(8'hB8)) 
    ldac_req_out_INST_0
       (.I0(bram_ldac_req),
        .I1(sel),
        .I2(direct_ldac_req),
        .O(ldac_req_out));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_req_out_INST_0
       (.I0(bram_reset_req),
        .I1(sel),
        .I2(direct_reset_req),
        .O(reset_req_out));
  LUT3 #(
    .INIT(8'hB8)) 
    start_spi_out_INST_0
       (.I0(bram_start_spi),
        .I1(sel),
        .I2(direct_start_spi),
        .O(start_spi_out));
endmodule

(* ORIG_REF_NAME = "bram_dr_multiplexer" *) 
module dac_bd_1_bram_dr_multiplexer_0_0_bram_dr_multiplexer
   (spi_data_out,
    bram_spi_data,
    direct_spi_data,
    sel);
  output [31:0]spi_data_out;
  input [31:0]bram_spi_data;
  input [31:0]direct_spi_data;
  input sel;

  wire [31:0]bram_spi_data;
  wire [31:0]direct_spi_data;
  wire sel;
  wire [31:0]spi_data_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[0]_INST_0 
       (.I0(bram_spi_data[0]),
        .I1(direct_spi_data[0]),
        .I2(sel),
        .O(spi_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[10]_INST_0 
       (.I0(bram_spi_data[10]),
        .I1(direct_spi_data[10]),
        .I2(sel),
        .O(spi_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[11]_INST_0 
       (.I0(bram_spi_data[11]),
        .I1(direct_spi_data[11]),
        .I2(sel),
        .O(spi_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[12]_INST_0 
       (.I0(bram_spi_data[12]),
        .I1(direct_spi_data[12]),
        .I2(sel),
        .O(spi_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[13]_INST_0 
       (.I0(bram_spi_data[13]),
        .I1(direct_spi_data[13]),
        .I2(sel),
        .O(spi_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[14]_INST_0 
       (.I0(bram_spi_data[14]),
        .I1(direct_spi_data[14]),
        .I2(sel),
        .O(spi_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[15]_INST_0 
       (.I0(bram_spi_data[15]),
        .I1(direct_spi_data[15]),
        .I2(sel),
        .O(spi_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[16]_INST_0 
       (.I0(bram_spi_data[16]),
        .I1(direct_spi_data[16]),
        .I2(sel),
        .O(spi_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[17]_INST_0 
       (.I0(bram_spi_data[17]),
        .I1(direct_spi_data[17]),
        .I2(sel),
        .O(spi_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[18]_INST_0 
       (.I0(bram_spi_data[18]),
        .I1(direct_spi_data[18]),
        .I2(sel),
        .O(spi_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[19]_INST_0 
       (.I0(bram_spi_data[19]),
        .I1(direct_spi_data[19]),
        .I2(sel),
        .O(spi_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[1]_INST_0 
       (.I0(bram_spi_data[1]),
        .I1(direct_spi_data[1]),
        .I2(sel),
        .O(spi_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[20]_INST_0 
       (.I0(bram_spi_data[20]),
        .I1(direct_spi_data[20]),
        .I2(sel),
        .O(spi_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[21]_INST_0 
       (.I0(bram_spi_data[21]),
        .I1(direct_spi_data[21]),
        .I2(sel),
        .O(spi_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[22]_INST_0 
       (.I0(bram_spi_data[22]),
        .I1(direct_spi_data[22]),
        .I2(sel),
        .O(spi_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[23]_INST_0 
       (.I0(bram_spi_data[23]),
        .I1(direct_spi_data[23]),
        .I2(sel),
        .O(spi_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[24]_INST_0 
       (.I0(bram_spi_data[24]),
        .I1(direct_spi_data[24]),
        .I2(sel),
        .O(spi_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[25]_INST_0 
       (.I0(bram_spi_data[25]),
        .I1(direct_spi_data[25]),
        .I2(sel),
        .O(spi_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[26]_INST_0 
       (.I0(bram_spi_data[26]),
        .I1(direct_spi_data[26]),
        .I2(sel),
        .O(spi_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[27]_INST_0 
       (.I0(bram_spi_data[27]),
        .I1(direct_spi_data[27]),
        .I2(sel),
        .O(spi_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[28]_INST_0 
       (.I0(bram_spi_data[28]),
        .I1(direct_spi_data[28]),
        .I2(sel),
        .O(spi_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[29]_INST_0 
       (.I0(bram_spi_data[29]),
        .I1(direct_spi_data[29]),
        .I2(sel),
        .O(spi_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[2]_INST_0 
       (.I0(bram_spi_data[2]),
        .I1(direct_spi_data[2]),
        .I2(sel),
        .O(spi_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[30]_INST_0 
       (.I0(bram_spi_data[30]),
        .I1(direct_spi_data[30]),
        .I2(sel),
        .O(spi_data_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[31]_INST_0 
       (.I0(bram_spi_data[31]),
        .I1(direct_spi_data[31]),
        .I2(sel),
        .O(spi_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[3]_INST_0 
       (.I0(bram_spi_data[3]),
        .I1(direct_spi_data[3]),
        .I2(sel),
        .O(spi_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[4]_INST_0 
       (.I0(bram_spi_data[4]),
        .I1(direct_spi_data[4]),
        .I2(sel),
        .O(spi_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[5]_INST_0 
       (.I0(bram_spi_data[5]),
        .I1(direct_spi_data[5]),
        .I2(sel),
        .O(spi_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[6]_INST_0 
       (.I0(bram_spi_data[6]),
        .I1(direct_spi_data[6]),
        .I2(sel),
        .O(spi_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[7]_INST_0 
       (.I0(bram_spi_data[7]),
        .I1(direct_spi_data[7]),
        .I2(sel),
        .O(spi_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[8]_INST_0 
       (.I0(bram_spi_data[8]),
        .I1(direct_spi_data[8]),
        .I2(sel),
        .O(spi_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \spi_data_out[9]_INST_0 
       (.I0(bram_spi_data[9]),
        .I1(direct_spi_data[9]),
        .I2(sel),
        .O(spi_data_out[9]));
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
