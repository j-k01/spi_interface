-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jun 10 11:17:07 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top dac_bd_1_chip_sel_mux_0_0 -prefix
--               dac_bd_1_chip_sel_mux_0_0_ dac_bd_1_chip_sel_mux_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_chip_sel_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_chip_sel_mux_0_0_chip_sel_mux is
  port (
    o_cs_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    I_CHIP_SEL_BITS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_cs_n : in STD_LOGIC
  );
end dac_bd_1_chip_sel_mux_0_0_chip_sel_mux;

architecture STRUCTURE of dac_bd_1_chip_sel_mux_0_0_chip_sel_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_cs_n[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_cs_n[2]_INST_0\ : label is "soft_lutpair0";
begin
\o_cs_n[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => I_CHIP_SEL_BITS(0),
      I1 => i_cs_n,
      I2 => I_CHIP_SEL_BITS(1),
      O => o_cs_n(0)
    );
\o_cs_n[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => I_CHIP_SEL_BITS(1),
      I1 => I_CHIP_SEL_BITS(0),
      I2 => i_cs_n,
      O => o_cs_n(1)
    );
\o_cs_n[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => i_cs_n,
      I1 => I_CHIP_SEL_BITS(0),
      I2 => I_CHIP_SEL_BITS(1),
      O => o_cs_n(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_chip_sel_mux_0_0 is
  port (
    I_CHIP_SEL_BITS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_cs_n : in STD_LOGIC;
    o_cs_n : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_chip_sel_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_chip_sel_mux_0_0 : entity is "dac_bd_1_chip_sel_mux_0_0,chip_sel_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_chip_sel_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_chip_sel_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_chip_sel_mux_0_0 : entity is "chip_sel_mux,Vivado 2023.1";
end dac_bd_1_chip_sel_mux_0_0;

architecture STRUCTURE of dac_bd_1_chip_sel_mux_0_0 is
begin
inst: entity work.dac_bd_1_chip_sel_mux_0_0_chip_sel_mux
     port map (
      I_CHIP_SEL_BITS(1 downto 0) => I_CHIP_SEL_BITS(1 downto 0),
      i_cs_n => i_cs_n,
      o_cs_n(2 downto 0) => o_cs_n(3 downto 1)
    );
\o_cs_n[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => I_CHIP_SEL_BITS(1),
      I1 => I_CHIP_SEL_BITS(0),
      I2 => i_cs_n,
      O => o_cs_n(0)
    );
end STRUCTURE;
