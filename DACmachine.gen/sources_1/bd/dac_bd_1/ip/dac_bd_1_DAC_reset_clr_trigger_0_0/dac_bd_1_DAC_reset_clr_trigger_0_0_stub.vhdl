-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  7 20:16:00 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_DAC_reset_clr_trigger_0_0/dac_bd_1_DAC_reset_clr_trigger_0_0_stub.vhdl
-- Design      : dac_bd_1_DAC_reset_clr_trigger_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_DAC_reset_clr_trigger_0_0 is
  Port ( 
    I_CLK : in STD_LOGIC;
    I_RSTN : in STD_LOGIC;
    I_PULSE_RESET : in STD_LOGIC;
    I_PULSE_CLR : in STD_LOGIC;
    O_RESET_N : out STD_LOGIC;
    O_CLR_N : out STD_LOGIC
  );

end dac_bd_1_DAC_reset_clr_trigger_0_0;

architecture stub of dac_bd_1_DAC_reset_clr_trigger_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_CLK,I_RSTN,I_PULSE_RESET,I_PULSE_CLR,O_RESET_N,O_CLR_N";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DAC_reset_clr_trigger,Vivado 2023.1";
begin
end;
