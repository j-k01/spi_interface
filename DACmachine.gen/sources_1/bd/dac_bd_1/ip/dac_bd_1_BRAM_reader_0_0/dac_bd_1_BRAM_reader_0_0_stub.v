// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Jun  8 02:03:20 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dac_bd_1_BRAM_reader_0_0 -prefix
//               dac_bd_1_BRAM_reader_0_0_ dac_bd_1_BRAM_reader_0_0_stub.v
// Design      : dac_bd_1_BRAM_reader_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BRAM_reader,Vivado 2023.1" *)
module dac_bd_1_BRAM_reader_0_0(clk, rst_n, O_ADDR, I_DATA, O_ENABLE, O_WE, 
  I_START_MACRO, I_CONFIGURE, O_SPI_TRX, O_START_SPI, I_SPI_DONE, O_CLEAR_REQ, O_LDAC_REQ, 
  O_RESET_REQ)
/* synthesis syn_black_box black_box_pad_pin="rst_n,O_ADDR[31:0],I_DATA[31:0],O_ENABLE,O_WE[3:0],I_START_MACRO,I_CONFIGURE[2:0],O_SPI_TRX[31:0],O_START_SPI,I_SPI_DONE,O_CLEAR_REQ,O_LDAC_REQ,O_RESET_REQ" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  output [31:0]O_ADDR;
  input [31:0]I_DATA;
  output O_ENABLE;
  output [3:0]O_WE;
  input I_START_MACRO;
  input [2:0]I_CONFIGURE;
  output [31:0]O_SPI_TRX;
  output O_START_SPI;
  input I_SPI_DONE;
  output O_CLEAR_REQ;
  output O_LDAC_REQ;
  output O_RESET_REQ;
endmodule
