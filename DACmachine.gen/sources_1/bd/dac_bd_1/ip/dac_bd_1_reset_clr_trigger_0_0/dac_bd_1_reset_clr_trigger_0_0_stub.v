// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jun 10 11:33:30 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dac_bd_1_reset_clr_trigger_0_0 -prefix
//               dac_bd_1_reset_clr_trigger_0_0_ dac_bd_1_reset_clr_trigger_0_0_stub.v
// Design      : dac_bd_1_reset_clr_trigger_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reset_clr_trigger,Vivado 2023.1" *)
module dac_bd_1_reset_clr_trigger_0_0(I_CLK, I_RSTN, I_PULSE_RESET, I_PULSE_CLR, 
  O_RESET_N, O_CLR_N)
/* synthesis syn_black_box black_box_pad_pin="I_RSTN,I_PULSE_RESET,I_PULSE_CLR,O_RESET_N,O_CLR_N" */
/* synthesis syn_force_seq_prim="I_CLK" */;
  input I_CLK /* synthesis syn_isclock = 1 */;
  input I_RSTN;
  input I_PULSE_RESET;
  input I_PULSE_CLR;
  output O_RESET_N;
  output O_CLR_N;
endmodule
