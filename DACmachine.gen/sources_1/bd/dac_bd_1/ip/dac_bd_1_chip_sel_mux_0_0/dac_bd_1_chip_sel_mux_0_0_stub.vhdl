-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jun 10 11:17:07 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dac_bd_1_chip_sel_mux_0_0 -prefix
--               dac_bd_1_chip_sel_mux_0_0_ dac_bd_1_chip_sel_mux_0_0_stub.vhdl
-- Design      : dac_bd_1_chip_sel_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_chip_sel_mux_0_0 is
  Port ( 
    I_CHIP_SEL_BITS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_cs_n : in STD_LOGIC;
    o_cs_n : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end dac_bd_1_chip_sel_mux_0_0;

architecture stub of dac_bd_1_chip_sel_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_CHIP_SEL_BITS[1:0],i_cs_n,o_cs_n[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "chip_sel_mux,Vivado 2023.1";
begin
end;
