-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Jun  9 15:53:16 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_LDAC_trigger_v2_0_0/dac_bd_1_LDAC_trigger_v2_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_LDAC_trigger_v2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2 is
  port (
    O_LDAC_N : out STD_LOGIC;
    I_RSTN : in STD_LOGIC;
    I_PULSE_LDAC : in STD_LOGIC;
    I_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2 : entity is "LDAC_trigger_v2";
end dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2;

architecture STRUCTURE of dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2 is
  signal \^o_ldac_n\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ldac_n_i_1_n_0 : STD_LOGIC;
  signal ldac_n_i_2_n_0 : STD_LOGIC;
  signal ldac_n_i_3_n_0 : STD_LOGIC;
  signal ldac_n_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair1";
begin
  O_LDAC_N <= \^o_ldac_n\;
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => p_0_in(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00000000DF"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => cnt_reg(3),
      I2 => ldac_n_i_4_n_0,
      I3 => cnt_reg(1),
      I4 => cnt_reg(0),
      I5 => cnt_reg(2),
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF000000007"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => ldac_n_i_4_n_0,
      I2 => cnt_reg(2),
      I3 => cnt_reg(0),
      I4 => cnt_reg(1),
      I5 => cnt_reg(3),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => cnt_reg(6),
      I2 => cnt_reg(5),
      I3 => cnt_reg(7),
      I4 => cnt_reg(4),
      I5 => \cnt[4]_i_3_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(2),
      I2 => cnt_reg(3),
      I3 => cnt_reg(1),
      I4 => cnt_reg(0),
      O => p_0_in(4)
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      O => \cnt[4]_i_3_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => p_0_in(5),
      I2 => \cnt[4]_i_1_n_0\,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FF0000FD00"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => cnt_reg(7),
      I2 => cnt_reg(6),
      I3 => \cnt[4]_i_3_n_0\,
      I4 => cnt_reg(4),
      I5 => cnt_reg(5),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => p_0_in(6),
      I2 => \cnt[4]_i_1_n_0\,
      O => \cnt[6]_i_1_n_0\
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FF00000D00"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => cnt_reg(7),
      I2 => cnt_reg(4),
      I3 => \cnt[4]_i_3_n_0\,
      I4 => cnt_reg(5),
      I5 => cnt_reg(6),
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => p_0_in(7),
      I2 => \cnt[4]_i_1_n_0\,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFF00010000"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => cnt_reg(6),
      I2 => cnt_reg(5),
      I3 => cnt_reg(4),
      I4 => \cnt[4]_i_3_n_0\,
      I5 => cnt_reg(7),
      O => p_0_in(7)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => \cnt[4]_i_1_n_0\,
      CLR => ldac_n_i_2_n_0,
      D => p_0_in(0),
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => \cnt[4]_i_1_n_0\,
      CLR => ldac_n_i_2_n_0,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => \cnt[4]_i_1_n_0\,
      CLR => ldac_n_i_2_n_0,
      D => p_0_in(2),
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => \cnt[4]_i_1_n_0\,
      CLR => ldac_n_i_2_n_0,
      D => p_0_in(3),
      Q => cnt_reg(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => \cnt[4]_i_1_n_0\,
      CLR => ldac_n_i_2_n_0,
      D => p_0_in(4),
      Q => cnt_reg(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \cnt[5]_i_1_n_0\,
      Q => cnt_reg(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt_reg(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      CLR => ldac_n_i_2_n_0,
      D => \cnt[7]_i_1_n_0\,
      Q => cnt_reg(7)
    );
ldac_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF03000000"
    )
        port map (
      I0 => I_PULSE_LDAC,
      I1 => ldac_n_i_3_n_0,
      I2 => cnt_reg(1),
      I3 => cnt_reg(0),
      I4 => ldac_n_i_4_n_0,
      I5 => \^o_ldac_n\,
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
ldac_n_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => ldac_n_i_3_n_0
    );
ldac_n_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(5),
      I2 => cnt_reg(7),
      I3 => cnt_reg(4),
      O => ldac_n_i_4_n_0
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
      Q => \^o_ldac_n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_LDAC_trigger_v2_0_0 is
  port (
    I_CLK : in STD_LOGIC;
    I_RSTN : in STD_LOGIC;
    I_PULSE_LDAC : in STD_LOGIC;
    O_LDAC_N : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_LDAC_trigger_v2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_LDAC_trigger_v2_0_0 : entity is "dac_bd_1_LDAC_trigger_v2_0_0,LDAC_trigger_v2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_LDAC_trigger_v2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_LDAC_trigger_v2_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_LDAC_trigger_v2_0_0 : entity is "LDAC_trigger_v2,Vivado 2023.1";
end dac_bd_1_LDAC_trigger_v2_0_0;

architecture STRUCTURE of dac_bd_1_LDAC_trigger_v2_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_CLK : signal is "xilinx.com:signal:clock:1.0 I_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_CLK : signal is "XIL_INTERFACENAME I_CLK, ASSOCIATED_RESET I_RSTN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I_RSTN : signal is "xilinx.com:signal:reset:1.0 I_RSTN RST";
  attribute X_INTERFACE_PARAMETER of I_RSTN : signal is "XIL_INTERFACENAME I_RSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.dac_bd_1_LDAC_trigger_v2_0_0_LDAC_trigger_v2
     port map (
      I_CLK => I_CLK,
      I_PULSE_LDAC => I_PULSE_LDAC,
      I_RSTN => I_RSTN,
      O_LDAC_N => O_LDAC_N
    );
end STRUCTURE;
