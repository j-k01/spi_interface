-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  7 22:56:38 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_LDAC_trigger_0_0/dac_bd_1_LDAC_trigger_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_LDAC_trigger_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_LDAC_trigger_0_0_LDAC_trigger is
  port (
    primed_reg_0 : out STD_LOGIC;
    O_LDAC : out STD_LOGIC;
    O_LDAC_ON_COOLDOWN : out STD_LOGIC;
    I_PULSE_DAC : in STD_LOGIC;
    I_BUSY_N : in STD_LOGIC;
    I_FORCE : in STD_LOGIC;
    I_CLK : in STD_LOGIC;
    I_RSTN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dac_bd_1_LDAC_trigger_0_0_LDAC_trigger : entity is "LDAC_trigger";
end dac_bd_1_LDAC_trigger_0_0_LDAC_trigger;

architecture STRUCTURE of dac_bd_1_LDAC_trigger_0_0_LDAC_trigger is
  signal \^o_ldac\ : STD_LOGIC;
  signal \^o_ldac_on_cooldown\ : STD_LOGIC;
  signal \cool_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cool_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cool_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cool_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal cooldown_i_1_n_0 : STD_LOGIC;
  signal ldac_n_i_1_n_0 : STD_LOGIC;
  signal ldac_n_i_2_n_0 : STD_LOGIC;
  signal ldac_n_i_3_n_0 : STD_LOGIC;
  signal primed_i_1_n_0 : STD_LOGIC;
  signal \^primed_reg_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pulse_cnt_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cool_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cool_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cooldown_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ldac_n_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of primed_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pulse_cnt[0]_i_1\ : label is "soft_lutpair1";
begin
  O_LDAC <= \^o_ldac\;
  O_LDAC_ON_COOLDOWN <= \^o_ldac_on_cooldown\;
  primed_reg_0 <= \^primed_reg_0\;
\cool_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4454"
    )
        port map (
      I0 => \cool_cnt_reg_n_0_[0]\,
      I1 => \cool_cnt_reg_n_0_[1]\,
      I2 => \pulse_cnt_reg_n_0_[0]\,
      I3 => \pulse_cnt_reg_n_0_[1]\,
      O => \cool_cnt[0]_i_1_n_0\
    );
\cool_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8898"
    )
        port map (
      I0 => \cool_cnt_reg_n_0_[0]\,
      I1 => \cool_cnt_reg_n_0_[1]\,
      I2 => \pulse_cnt_reg_n_0_[0]\,
      I3 => \pulse_cnt_reg_n_0_[1]\,
      O => \cool_cnt[1]_i_1_n_0\
    );
\cool_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \cool_cnt[0]_i_1_n_0\,
      Q => \cool_cnt_reg_n_0_[0]\
    );
\cool_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \cool_cnt[1]_i_1_n_0\,
      Q => \cool_cnt_reg_n_0_[1]\
    );
cooldown_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB0B00"
    )
        port map (
      I0 => \cool_cnt_reg_n_0_[1]\,
      I1 => \cool_cnt_reg_n_0_[0]\,
      I2 => \pulse_cnt_reg_n_0_[1]\,
      I3 => \pulse_cnt_reg_n_0_[0]\,
      I4 => \^o_ldac_on_cooldown\,
      O => cooldown_i_1_n_0
    );
cooldown_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => cooldown_i_1_n_0,
      Q => \^o_ldac_on_cooldown\
    );
ldac_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \pulse_cnt_reg_n_0_[1]\,
      I1 => \pulse_cnt_reg_n_0_[0]\,
      I2 => ldac_n_i_3_n_0,
      I3 => \^o_ldac\,
      O => ldac_n_i_1_n_0
    );
ldac_n_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I_RSTN,
      O => ldac_n_i_2_n_0
    );
ldac_n_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCA0"
    )
        port map (
      I0 => \^primed_reg_0\,
      I1 => I_FORCE,
      I2 => I_BUSY_N,
      I3 => I_PULSE_DAC,
      O => ldac_n_i_3_n_0
    );
ldac_n_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => ldac_n_i_1_n_0,
      PRE => ldac_n_i_2_n_0,
      Q => \^o_ldac\
    );
primed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B0A"
    )
        port map (
      I0 => \^primed_reg_0\,
      I1 => I_FORCE,
      I2 => I_BUSY_N,
      I3 => I_PULSE_DAC,
      O => primed_i_1_n_0
    );
primed_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => primed_i_1_n_0,
      Q => \^primed_reg_0\
    );
\pulse_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \pulse_cnt_reg_n_0_[0]\,
      I1 => \pulse_cnt_reg_n_0_[1]\,
      O => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9998998898989888"
    )
        port map (
      I0 => \pulse_cnt_reg_n_0_[0]\,
      I1 => \pulse_cnt_reg_n_0_[1]\,
      I2 => I_PULSE_DAC,
      I3 => I_BUSY_N,
      I4 => I_FORCE,
      I5 => \^primed_reg_0\,
      O => \pulse_cnt[1]_i_1_n_0\
    );
\pulse_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \pulse_cnt[0]_i_1_n_0\,
      Q => \pulse_cnt_reg_n_0_[0]\
    );
\pulse_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \pulse_cnt[1]_i_1_n_0\,
      Q => \pulse_cnt_reg_n_0_[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_LDAC_trigger_0_0 is
  port (
    I_CLK : in STD_LOGIC;
    I_RSTN : in STD_LOGIC;
    I_PULSE_DAC : in STD_LOGIC;
    I_BUSY_N : in STD_LOGIC;
    I_FORCE : in STD_LOGIC;
    O_LDAC : out STD_LOGIC;
    O_LDAC_PRIMED : out STD_LOGIC;
    O_LDAC_ON_COOLDOWN : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_LDAC_trigger_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_LDAC_trigger_0_0 : entity is "dac_bd_1_LDAC_trigger_0_0,LDAC_trigger,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_LDAC_trigger_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_LDAC_trigger_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_LDAC_trigger_0_0 : entity is "LDAC_trigger,Vivado 2023.1";
end dac_bd_1_LDAC_trigger_0_0;

architecture STRUCTURE of dac_bd_1_LDAC_trigger_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_CLK : signal is "xilinx.com:signal:clock:1.0 I_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_CLK : signal is "XIL_INTERFACENAME I_CLK, ASSOCIATED_RESET I_RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_RSTN : signal is "xilinx.com:signal:reset:1.0 I_RSTN RST";
  attribute X_INTERFACE_PARAMETER of I_RSTN : signal is "XIL_INTERFACENAME I_RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.dac_bd_1_LDAC_trigger_0_0_LDAC_trigger
     port map (
      I_BUSY_N => I_BUSY_N,
      I_CLK => I_CLK,
      I_FORCE => I_FORCE,
      I_PULSE_DAC => I_PULSE_DAC,
      I_RSTN => I_RSTN,
      O_LDAC => O_LDAC,
      O_LDAC_ON_COOLDOWN => O_LDAC_ON_COOLDOWN,
      primed_reg_0 => O_LDAC_PRIMED
    );
end STRUCTURE;
