// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  7 22:52:38 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_bram_dr_multiplexer_0_0/dac_bd_1_bram_dr_multiplexer_0_0_stub.v
// Design      : dac_bd_1_bram_dr_multiplexer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bram_dr_multiplexer,Vivado 2023.1" *)
module dac_bd_1_bram_dr_multiplexer_0_0(sel, bram_spi_data, bram_clear_req, 
  bram_ldac_req, bram_reset_req, bram_start_spi, direct_spi_data, direct_clear_req, 
  direct_ldac_req, direct_reset_req, direct_start_spi, I_SPI_DONE, spi_data_out, 
  clear_req_out, ldac_req_out, reset_req_out, start_spi_out, O_BRAM_SPI_DONE)
/* synthesis syn_black_box black_box_pad_pin="sel,bram_spi_data[31:0],bram_clear_req,bram_ldac_req,bram_reset_req,bram_start_spi,direct_spi_data[31:0],direct_clear_req,direct_ldac_req,direct_reset_req,direct_start_spi,I_SPI_DONE,spi_data_out[31:0],clear_req_out,ldac_req_out,reset_req_out,start_spi_out,O_BRAM_SPI_DONE" */;
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
  output reset_req_out;
  output start_spi_out;
  output O_BRAM_SPI_DONE;
endmodule
