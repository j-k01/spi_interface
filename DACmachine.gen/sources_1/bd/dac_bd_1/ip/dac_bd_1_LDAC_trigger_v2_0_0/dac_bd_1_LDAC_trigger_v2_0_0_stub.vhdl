-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Jun  9 15:53:16 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dac_bd_1_LDAC_trigger_v2_0_0 -prefix
--               dac_bd_1_LDAC_trigger_v2_0_0_ dac_bd_1_LDAC_trigger_v2_0_0_stub.vhdl
-- Design      : dac_bd_1_LDAC_trigger_v2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_LDAC_trigger_v2_0_0 is
  Port ( 
    I_CLK : in STD_LOGIC;
    I_RSTN : in STD_LOGIC;
    I_PULSE_LDAC : in STD_LOGIC;
    O_LDAC_N : out STD_LOGIC
  );

end dac_bd_1_LDAC_trigger_v2_0_0;

architecture stub of dac_bd_1_LDAC_trigger_v2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_CLK,I_RSTN,I_PULSE_LDAC,O_LDAC_N";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LDAC_trigger_v2,Vivado 2023.1";
begin
end;
