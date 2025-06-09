-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  7 20:16:00 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_DAC_reset_clr_trigger_0_0/dac_bd_1_DAC_reset_clr_trigger_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_DAC_reset_clr_trigger_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_DAC_reset_clr_trigger_0_0_DAC_reset_clr_trigger is
  port (
    O_RESET_N : out STD_LOGIC;
    O_CLR_N : out STD_LOGIC;
    I_PULSE_RESET : in STD_LOGIC;
    I_CLK : in STD_LOGIC;
    I_PULSE_CLR : in STD_LOGIC;
    I_RSTN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dac_bd_1_DAC_reset_clr_trigger_0_0_DAC_reset_clr_trigger : entity is "DAC_reset_clr_trigger";
end dac_bd_1_DAC_reset_clr_trigger_0_0_DAC_reset_clr_trigger;

architecture STRUCTURE of dac_bd_1_DAC_reset_clr_trigger_0_0_DAC_reset_clr_trigger is
  signal \^o_clr_n\ : STD_LOGIC;
  signal \^o_reset_n\ : STD_LOGIC;
  signal clr_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal clr_n_i_1_n_0 : STD_LOGIC;
  signal \reset_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal reset_n_i_1_n_0 : STD_LOGIC;
  signal reset_n_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clr_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clr_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reset_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reset_cnt[1]_i_1\ : label is "soft_lutpair0";
begin
  O_CLR_N <= \^o_clr_n\;
  O_RESET_N <= \^o_reset_n\;
\clr_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clr_cnt(1),
      I1 => clr_cnt(0),
      O => \clr_cnt[0]_i_1_n_0\
    );
\clr_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => clr_cnt(1),
      I1 => clr_cnt(0),
      I2 => I_PULSE_CLR,
      O => \clr_cnt[1]_i_1_n_0\
    );
\clr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => reset_n_i_2_n_0,
      D => \clr_cnt[0]_i_1_n_0\,
      Q => clr_cnt(0)
    );
\clr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => reset_n_i_2_n_0,
      D => \clr_cnt[1]_i_1_n_0\,
      Q => clr_cnt(1)
    );
clr_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF44"
    )
        port map (
      I0 => clr_cnt(1),
      I1 => clr_cnt(0),
      I2 => I_PULSE_CLR,
      I3 => \^o_clr_n\,
      O => clr_n_i_1_n_0
    );
clr_n_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => clr_n_i_1_n_0,
      PRE => reset_n_i_2_n_0,
      Q => \^o_clr_n\
    );
\reset_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_PULSE_RESET,
      I1 => \reset_cnt_reg_n_0_[0]\,
      I2 => \reset_cnt_reg_n_0_[1]\,
      O => \reset_cnt[0]_i_1_n_0\
    );
\reset_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => I_PULSE_RESET,
      I1 => \reset_cnt_reg_n_0_[0]\,
      I2 => \reset_cnt_reg_n_0_[1]\,
      O => \reset_cnt[1]_i_1_n_0\
    );
\reset_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => reset_n_i_2_n_0,
      D => \reset_cnt[0]_i_1_n_0\,
      Q => \reset_cnt_reg_n_0_[0]\
    );
\reset_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => reset_n_i_2_n_0,
      D => \reset_cnt[1]_i_1_n_0\,
      Q => \reset_cnt_reg_n_0_[1]\
    );
reset_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => I_PULSE_RESET,
      I1 => \reset_cnt_reg_n_0_[0]\,
      I2 => \reset_cnt_reg_n_0_[1]\,
      I3 => \^o_reset_n\,
      O => reset_n_i_1_n_0
    );
reset_n_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_RSTN,
      O => reset_n_i_2_n_0
    );
reset_n_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => reset_n_i_1_n_0,
      PRE => reset_n_i_2_n_0,
      Q => \^o_reset_n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_DAC_reset_clr_trigger_0_0 is
  port (
    I_CLK : in STD_LOGIC;
    I_RSTN : in STD_LOGIC;
    I_PULSE_RESET : in STD_LOGIC;
    I_PULSE_CLR : in STD_LOGIC;
    O_RESET_N : out STD_LOGIC;
    O_CLR_N : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_DAC_reset_clr_trigger_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_DAC_reset_clr_trigger_0_0 : entity is "dac_bd_1_DAC_reset_clr_trigger_0_0,DAC_reset_clr_trigger,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_DAC_reset_clr_trigger_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_DAC_reset_clr_trigger_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_DAC_reset_clr_trigger_0_0 : entity is "DAC_reset_clr_trigger,Vivado 2023.1";
end dac_bd_1_DAC_reset_clr_trigger_0_0;

architecture STRUCTURE of dac_bd_1_DAC_reset_clr_trigger_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_CLK : signal is "xilinx.com:signal:clock:1.0 I_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_CLK : signal is "XIL_INTERFACENAME I_CLK, ASSOCIATED_RESET I_PULSE_RESET, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_PULSE_RESET : signal is "xilinx.com:signal:reset:1.0 I_PULSE_RESET RST";
  attribute X_INTERFACE_PARAMETER of I_PULSE_RESET : signal is "XIL_INTERFACENAME I_PULSE_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_RSTN : signal is "xilinx.com:signal:reset:1.0 I_RSTN RST";
  attribute X_INTERFACE_PARAMETER of I_RSTN : signal is "XIL_INTERFACENAME I_RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.dac_bd_1_DAC_reset_clr_trigger_0_0_DAC_reset_clr_trigger
     port map (
      I_CLK => I_CLK,
      I_PULSE_CLR => I_PULSE_CLR,
      I_PULSE_RESET => I_PULSE_RESET,
      I_RSTN => I_RSTN,
      O_CLR_N => O_CLR_N,
      O_RESET_N => O_RESET_N
    );
end STRUCTURE;
