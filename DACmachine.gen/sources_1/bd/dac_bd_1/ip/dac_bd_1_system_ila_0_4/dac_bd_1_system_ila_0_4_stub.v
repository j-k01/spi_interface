// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Jun  9 13:15:56 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dac_bd_1_system_ila_0_4 -prefix
//               dac_bd_1_system_ila_0_4_ dac_bd_1_system_ila_0_4_stub.v
// Design      : dac_bd_1_system_ila_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_d378,Vivado 2023.1" *)
module dac_bd_1_system_ila_0_4(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28, 
  probe29)
/* synthesis syn_black_box black_box_pad_pin="probe0[31:0],probe1[0:0],probe2[31:0],probe3[0:0],probe4[0:0],probe5[2:0],probe6[0:0],probe7[0:0],probe8[0:0],probe9[31:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[0:0],probe14[31:0],probe15[0:0],probe16[3:0],probe17[0:0],probe18[0:0],probe19[0:0],probe20[0:0],probe21[0:0],probe22[0:0],probe23[31:0],probe24[0:0],probe25[0:0],probe26[0:0],probe27[0:0],probe28[0:0],probe29[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [31:0]probe0;
  input [0:0]probe1;
  input [31:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [2:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [31:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [31:0]probe14;
  input [0:0]probe15;
  input [3:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [0:0]probe19;
  input [0:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [31:0]probe23;
  input [0:0]probe24;
  input [0:0]probe25;
  input [0:0]probe26;
  input [0:0]probe27;
  input [0:0]probe28;
  input [0:0]probe29;
endmodule
