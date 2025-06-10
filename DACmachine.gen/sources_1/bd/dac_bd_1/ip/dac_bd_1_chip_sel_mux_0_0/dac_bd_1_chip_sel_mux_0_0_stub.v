// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 10 11:17:07 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dac_bd_1_chip_sel_mux_0_0 -prefix
//               dac_bd_1_chip_sel_mux_0_0_ dac_bd_1_chip_sel_mux_0_0_stub.v
// Design      : dac_bd_1_chip_sel_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "chip_sel_mux,Vivado 2023.1" *)
module dac_bd_1_chip_sel_mux_0_0(I_CHIP_SEL_BITS, i_cs_n, o_cs_n)
/* synthesis syn_black_box black_box_pad_pin="I_CHIP_SEL_BITS[1:0],i_cs_n,o_cs_n[3:0]" */;
  input [1:0]I_CHIP_SEL_BITS;
  input i_cs_n;
  output [3:0]o_cs_n;
endmodule
