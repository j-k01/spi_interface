// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  7 01:58:51 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_AXI_Configuration_Re_0_0/dac_bd_1_AXI_Configuration_Re_0_0_stub.v
// Design      : dac_bd_1_AXI_Configuration_Re_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXI_Configuration_Registers_v1_0,Vivado 2023.1" *)
module dac_bd_1_AXI_Configuration_Re_0_0(I_RX_DATA, O_START, O_TX_DATA, I_DONE, 
  O_SPI_MODE, O_BITS_PER_TRANSACTION, O_CYCLES_PER_BIT, O_SCLK_HIGH_OFFSET, 
  O_SCLK_LOW_OFFSET, O_SDO_CHANGE_OFFSET, O_SDI_SAMPLE_OFFSET, O_CS_TO_TRX_DELAY, 
  O_CS_HOLD_TIME, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, 
  s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, 
  s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, 
  s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, 
  s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="I_RX_DATA[31:0],O_START,O_TX_DATA[31:0],I_DONE,O_SPI_MODE[1:0],O_BITS_PER_TRANSACTION[15:0],O_CYCLES_PER_BIT[15:0],O_SCLK_HIGH_OFFSET[15:0],O_SCLK_LOW_OFFSET[15:0],O_SDO_CHANGE_OFFSET[15:0],O_SDI_SAMPLE_OFFSET[15:0],O_CS_TO_TRX_DELAY[15:0],O_CS_HOLD_TIME[15:0],s00_axi_aresetn,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */
/* synthesis syn_force_seq_prim="s00_axi_aclk" */;
  input [31:0]I_RX_DATA;
  output O_START;
  output [31:0]O_TX_DATA;
  input I_DONE;
  output [1:0]O_SPI_MODE;
  output [15:0]O_BITS_PER_TRANSACTION;
  output [15:0]O_CYCLES_PER_BIT;
  output [15:0]O_SCLK_HIGH_OFFSET;
  output [15:0]O_SCLK_LOW_OFFSET;
  output [15:0]O_SDO_CHANGE_OFFSET;
  output [15:0]O_SDI_SAMPLE_OFFSET;
  output [15:0]O_CS_TO_TRX_DELAY;
  output [15:0]O_CS_HOLD_TIME;
  input s00_axi_aclk /* synthesis syn_isclock = 1 */;
  input s00_axi_aresetn;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
