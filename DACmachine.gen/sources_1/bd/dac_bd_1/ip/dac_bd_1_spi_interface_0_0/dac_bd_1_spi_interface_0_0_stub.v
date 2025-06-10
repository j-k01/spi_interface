// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Jun  6 21:56:02 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dac_bd_1_spi_interface_0_0 -prefix
//               dac_bd_1_spi_interface_0_0_ dac_bd_1_spi_interface_0_0_stub.v
// Design      : dac_bd_1_spi_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spi_interface,Vivado 2023.1" *)
module dac_bd_1_spi_interface_0_0(clk, rst_n, data_in, start, data_out, busy, done, sclk, 
  mosi, miso, ss_n, spi_mode, bits_per_transaction, cycles_per_bit, sclk_high_offset, 
  sclk_low_offset, sdo_change_offset, sdi_sample_offset, cs_to_trx_delay, cs_hold_time)
/* synthesis syn_black_box black_box_pad_pin="rst_n,data_in[31:0],start,data_out[31:0],busy,done,sclk,mosi,miso,ss_n,spi_mode[1:0],bits_per_transaction[15:0],cycles_per_bit[15:0],sclk_high_offset[15:0],sclk_low_offset[15:0],sdo_change_offset[15:0],sdi_sample_offset[15:0],cs_to_trx_delay[15:0],cs_hold_time[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [31:0]data_in;
  input start;
  output [31:0]data_out;
  output busy;
  output done;
  output sclk;
  output mosi;
  input miso;
  output ss_n;
  input [1:0]spi_mode;
  input [15:0]bits_per_transaction;
  input [15:0]cycles_per_bit;
  input [15:0]sclk_high_offset;
  input [15:0]sclk_low_offset;
  input [15:0]sdo_change_offset;
  input [15:0]sdi_sample_offset;
  input [15:0]cs_to_trx_delay;
  input [15:0]cs_hold_time;
endmodule
