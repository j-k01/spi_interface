-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  7 22:52:38 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top dac_bd_1_bram_dr_multiplexer_0_0 -prefix
--               dac_bd_1_bram_dr_multiplexer_0_0_ dac_bd_1_bram_dr_multiplexer_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_bram_dr_multiplexer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_bram_dr_multiplexer_0_0_bram_dr_multiplexer is
  port (
    spi_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_spi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    direct_spi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC
  );
end dac_bd_1_bram_dr_multiplexer_0_0_bram_dr_multiplexer;

architecture STRUCTURE of dac_bd_1_bram_dr_multiplexer_0_0_bram_dr_multiplexer is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spi_data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_data_out[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spi_data_out[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spi_data_out[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_data_out[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_data_out[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spi_data_out[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spi_data_out[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_data_out[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_data_out[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spi_data_out[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spi_data_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_data_out[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spi_data_out[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spi_data_out[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spi_data_out[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spi_data_out[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_data_out[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_data_out[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spi_data_out[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spi_data_out[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spi_data_out[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spi_data_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_data_out[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spi_data_out[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spi_data_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_data_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_data_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_data_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_data_out[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_data_out[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spi_data_out[9]_INST_0\ : label is "soft_lutpair4";
begin
\spi_data_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(0),
      I1 => direct_spi_data(0),
      I2 => sel,
      O => spi_data_out(0)
    );
\spi_data_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(10),
      I1 => direct_spi_data(10),
      I2 => sel,
      O => spi_data_out(10)
    );
\spi_data_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(11),
      I1 => direct_spi_data(11),
      I2 => sel,
      O => spi_data_out(11)
    );
\spi_data_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(12),
      I1 => direct_spi_data(12),
      I2 => sel,
      O => spi_data_out(12)
    );
\spi_data_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(13),
      I1 => direct_spi_data(13),
      I2 => sel,
      O => spi_data_out(13)
    );
\spi_data_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(14),
      I1 => direct_spi_data(14),
      I2 => sel,
      O => spi_data_out(14)
    );
\spi_data_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(15),
      I1 => direct_spi_data(15),
      I2 => sel,
      O => spi_data_out(15)
    );
\spi_data_out[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(16),
      I1 => direct_spi_data(16),
      I2 => sel,
      O => spi_data_out(16)
    );
\spi_data_out[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(17),
      I1 => direct_spi_data(17),
      I2 => sel,
      O => spi_data_out(17)
    );
\spi_data_out[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(18),
      I1 => direct_spi_data(18),
      I2 => sel,
      O => spi_data_out(18)
    );
\spi_data_out[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(19),
      I1 => direct_spi_data(19),
      I2 => sel,
      O => spi_data_out(19)
    );
\spi_data_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(1),
      I1 => direct_spi_data(1),
      I2 => sel,
      O => spi_data_out(1)
    );
\spi_data_out[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(20),
      I1 => direct_spi_data(20),
      I2 => sel,
      O => spi_data_out(20)
    );
\spi_data_out[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(21),
      I1 => direct_spi_data(21),
      I2 => sel,
      O => spi_data_out(21)
    );
\spi_data_out[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(22),
      I1 => direct_spi_data(22),
      I2 => sel,
      O => spi_data_out(22)
    );
\spi_data_out[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(23),
      I1 => direct_spi_data(23),
      I2 => sel,
      O => spi_data_out(23)
    );
\spi_data_out[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(24),
      I1 => direct_spi_data(24),
      I2 => sel,
      O => spi_data_out(24)
    );
\spi_data_out[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(25),
      I1 => direct_spi_data(25),
      I2 => sel,
      O => spi_data_out(25)
    );
\spi_data_out[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(26),
      I1 => direct_spi_data(26),
      I2 => sel,
      O => spi_data_out(26)
    );
\spi_data_out[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(27),
      I1 => direct_spi_data(27),
      I2 => sel,
      O => spi_data_out(27)
    );
\spi_data_out[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(28),
      I1 => direct_spi_data(28),
      I2 => sel,
      O => spi_data_out(28)
    );
\spi_data_out[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(29),
      I1 => direct_spi_data(29),
      I2 => sel,
      O => spi_data_out(29)
    );
\spi_data_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(2),
      I1 => direct_spi_data(2),
      I2 => sel,
      O => spi_data_out(2)
    );
\spi_data_out[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(30),
      I1 => direct_spi_data(30),
      I2 => sel,
      O => spi_data_out(30)
    );
\spi_data_out[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(31),
      I1 => direct_spi_data(31),
      I2 => sel,
      O => spi_data_out(31)
    );
\spi_data_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(3),
      I1 => direct_spi_data(3),
      I2 => sel,
      O => spi_data_out(3)
    );
\spi_data_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(4),
      I1 => direct_spi_data(4),
      I2 => sel,
      O => spi_data_out(4)
    );
\spi_data_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(5),
      I1 => direct_spi_data(5),
      I2 => sel,
      O => spi_data_out(5)
    );
\spi_data_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(6),
      I1 => direct_spi_data(6),
      I2 => sel,
      O => spi_data_out(6)
    );
\spi_data_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(7),
      I1 => direct_spi_data(7),
      I2 => sel,
      O => spi_data_out(7)
    );
\spi_data_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(8),
      I1 => direct_spi_data(8),
      I2 => sel,
      O => spi_data_out(8)
    );
\spi_data_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => bram_spi_data(9),
      I1 => direct_spi_data(9),
      I2 => sel,
      O => spi_data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_bram_dr_multiplexer_0_0 is
  port (
    sel : in STD_LOGIC;
    bram_spi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_clear_req : in STD_LOGIC;
    bram_ldac_req : in STD_LOGIC;
    bram_reset_req : in STD_LOGIC;
    bram_start_spi : in STD_LOGIC;
    direct_spi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    direct_clear_req : in STD_LOGIC;
    direct_ldac_req : in STD_LOGIC;
    direct_reset_req : in STD_LOGIC;
    direct_start_spi : in STD_LOGIC;
    I_SPI_DONE : in STD_LOGIC;
    spi_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear_req_out : out STD_LOGIC;
    ldac_req_out : out STD_LOGIC;
    reset_req_out : out STD_LOGIC;
    start_spi_out : out STD_LOGIC;
    O_BRAM_SPI_DONE : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_bram_dr_multiplexer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_bram_dr_multiplexer_0_0 : entity is "dac_bd_1_bram_dr_multiplexer_0_0,bram_dr_multiplexer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_bram_dr_multiplexer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_bram_dr_multiplexer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_bram_dr_multiplexer_0_0 : entity is "bram_dr_multiplexer,Vivado 2023.1";
end dac_bd_1_bram_dr_multiplexer_0_0;

architecture STRUCTURE of dac_bd_1_bram_dr_multiplexer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_req_out : signal is "xilinx.com:signal:reset:1.0 reset_req_out RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_req_out : signal is "XIL_INTERFACENAME reset_req_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
O_BRAM_SPI_DONE_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => I_SPI_DONE,
      I1 => sel,
      O => O_BRAM_SPI_DONE
    );
clear_req_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_clear_req,
      I1 => sel,
      I2 => direct_clear_req,
      O => clear_req_out
    );
inst: entity work.dac_bd_1_bram_dr_multiplexer_0_0_bram_dr_multiplexer
     port map (
      bram_spi_data(31 downto 0) => bram_spi_data(31 downto 0),
      direct_spi_data(31 downto 0) => direct_spi_data(31 downto 0),
      sel => sel,
      spi_data_out(31 downto 0) => spi_data_out(31 downto 0)
    );
ldac_req_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_ldac_req,
      I1 => sel,
      I2 => direct_ldac_req,
      O => ldac_req_out
    );
reset_req_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_reset_req,
      I1 => sel,
      I2 => direct_reset_req,
      O => reset_req_out
    );
start_spi_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_start_spi,
      I1 => sel,
      I2 => direct_start_spi,
      O => start_spi_out
    );
end STRUCTURE;
