-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Jun  8 03:04:07 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top dac_bd_1_led_driver_0_0 -prefix
--               dac_bd_1_led_driver_0_0_ dac_bd_1_led_driver_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_led_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_led_driver_0_0_led_driver is
  port (
    leds : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_mosi : in STD_LOGIC;
    clk : in STD_LOGIC;
    spi_miso : in STD_LOGIC
  );
end dac_bd_1_led_driver_0_0_led_driver;

architecture STRUCTURE of dac_bd_1_led_driver_0_0_led_driver is
  signal clear : STD_LOGIC;
  signal \^leds\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \leds[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \leds[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \leds[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \leds[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \leds[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \leds[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \leds[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \leds[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[0]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[0]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[0]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[0]_i_6_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[12]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[12]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[12]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[12]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[16]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[16]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[16]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[16]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[20]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[20]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[20]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[4]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[4]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[4]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[4]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[8]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[8]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[8]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_0[8]_i_5_n_0\ : STD_LOGIC;
  signal pulse_counter_0_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \pulse_counter_0_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pulse_counter_0_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_0_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_0_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_0_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_0_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_0_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_0_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_0_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_0_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_0_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_1[0]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[0]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[0]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[0]_i_6_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[12]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[12]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[12]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[12]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[16]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[16]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[16]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[16]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[20]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[20]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[20]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[4]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[4]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[4]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[8]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[8]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[8]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_counter_1[8]_i_5_n_0\ : STD_LOGIC;
  signal pulse_counter_1_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \pulse_counter_1_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pulse_counter_1_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_1_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_1_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_1_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_1_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_1_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_1_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_1_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_counter_1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal spi_miso_prev_pulse : STD_LOGIC;
  signal spi_mosi_prev_pulse : STD_LOGIC;
  signal \NLW_pulse_counter_0_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pulse_counter_0_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pulse_counter_1_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pulse_counter_1_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pulse_counter_0_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_0_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_0_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_0_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_0_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_0_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_1_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_1_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_1_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_1_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_1_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pulse_counter_1_reg[8]_i_1\ : label is 11;
begin
  leds(1 downto 0) <= \^leds\(1 downto 0);
\leds[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \leds[0]_INST_0_i_1_n_0\,
      I1 => \leds[0]_INST_0_i_2_n_0\,
      I2 => \leds[0]_INST_0_i_3_n_0\,
      I3 => pulse_counter_0_reg(2),
      I4 => pulse_counter_0_reg(1),
      I5 => \leds[0]_INST_0_i_4_n_0\,
      O => \^leds\(0)
    );
\leds[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_counter_0_reg(15),
      I1 => pulse_counter_0_reg(16),
      I2 => pulse_counter_0_reg(13),
      I3 => pulse_counter_0_reg(14),
      I4 => pulse_counter_0_reg(12),
      I5 => pulse_counter_0_reg(11),
      O => \leds[0]_INST_0_i_1_n_0\
    );
\leds[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_counter_0_reg(9),
      I1 => pulse_counter_0_reg(10),
      I2 => pulse_counter_0_reg(7),
      I3 => pulse_counter_0_reg(8),
      I4 => pulse_counter_0_reg(6),
      I5 => pulse_counter_0_reg(5),
      O => \leds[0]_INST_0_i_2_n_0\
    );
\leds[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pulse_counter_0_reg(4),
      I1 => pulse_counter_0_reg(3),
      I2 => pulse_counter_0_reg(0),
      O => \leds[0]_INST_0_i_3_n_0\
    );
\leds[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_counter_0_reg(21),
      I1 => pulse_counter_0_reg(22),
      I2 => pulse_counter_0_reg(19),
      I3 => pulse_counter_0_reg(20),
      I4 => pulse_counter_0_reg(18),
      I5 => pulse_counter_0_reg(17),
      O => \leds[0]_INST_0_i_4_n_0\
    );
\leds[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \leds[1]_INST_0_i_1_n_0\,
      I1 => \leds[1]_INST_0_i_2_n_0\,
      I2 => \leds[1]_INST_0_i_3_n_0\,
      I3 => pulse_counter_1_reg(2),
      I4 => pulse_counter_1_reg(1),
      I5 => \leds[1]_INST_0_i_4_n_0\,
      O => \^leds\(1)
    );
\leds[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_counter_1_reg(15),
      I1 => pulse_counter_1_reg(16),
      I2 => pulse_counter_1_reg(13),
      I3 => pulse_counter_1_reg(14),
      I4 => pulse_counter_1_reg(12),
      I5 => pulse_counter_1_reg(11),
      O => \leds[1]_INST_0_i_1_n_0\
    );
\leds[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_counter_1_reg(9),
      I1 => pulse_counter_1_reg(10),
      I2 => pulse_counter_1_reg(7),
      I3 => pulse_counter_1_reg(8),
      I4 => pulse_counter_1_reg(6),
      I5 => pulse_counter_1_reg(5),
      O => \leds[1]_INST_0_i_2_n_0\
    );
\leds[1]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pulse_counter_1_reg(4),
      I1 => pulse_counter_1_reg(3),
      I2 => pulse_counter_1_reg(0),
      O => \leds[1]_INST_0_i_3_n_0\
    );
\leds[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_counter_1_reg(21),
      I1 => pulse_counter_1_reg(22),
      I2 => pulse_counter_1_reg(19),
      I3 => pulse_counter_1_reg(20),
      I4 => pulse_counter_1_reg(18),
      I5 => pulse_counter_1_reg(17),
      O => \leds[1]_INST_0_i_4_n_0\
    );
\pulse_counter_0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_mosi_prev_pulse,
      I1 => spi_mosi,
      O => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(3),
      O => \pulse_counter_0[0]_i_3_n_0\
    );
\pulse_counter_0[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(2),
      O => \pulse_counter_0[0]_i_4_n_0\
    );
\pulse_counter_0[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(1),
      O => \pulse_counter_0[0]_i_5_n_0\
    );
\pulse_counter_0[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(0),
      O => \pulse_counter_0[0]_i_6_n_0\
    );
\pulse_counter_0[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(15),
      O => \pulse_counter_0[12]_i_2_n_0\
    );
\pulse_counter_0[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(14),
      O => \pulse_counter_0[12]_i_3_n_0\
    );
\pulse_counter_0[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(13),
      O => \pulse_counter_0[12]_i_4_n_0\
    );
\pulse_counter_0[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(12),
      O => \pulse_counter_0[12]_i_5_n_0\
    );
\pulse_counter_0[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(19),
      O => \pulse_counter_0[16]_i_2_n_0\
    );
\pulse_counter_0[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(18),
      O => \pulse_counter_0[16]_i_3_n_0\
    );
\pulse_counter_0[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(17),
      O => \pulse_counter_0[16]_i_4_n_0\
    );
\pulse_counter_0[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(16),
      O => \pulse_counter_0[16]_i_5_n_0\
    );
\pulse_counter_0[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(22),
      O => \pulse_counter_0[20]_i_2_n_0\
    );
\pulse_counter_0[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(21),
      O => \pulse_counter_0[20]_i_3_n_0\
    );
\pulse_counter_0[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(20),
      O => \pulse_counter_0[20]_i_4_n_0\
    );
\pulse_counter_0[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(7),
      O => \pulse_counter_0[4]_i_2_n_0\
    );
\pulse_counter_0[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(6),
      O => \pulse_counter_0[4]_i_3_n_0\
    );
\pulse_counter_0[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(5),
      O => \pulse_counter_0[4]_i_4_n_0\
    );
\pulse_counter_0[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(4),
      O => \pulse_counter_0[4]_i_5_n_0\
    );
\pulse_counter_0[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(11),
      O => \pulse_counter_0[8]_i_2_n_0\
    );
\pulse_counter_0[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(10),
      O => \pulse_counter_0[8]_i_3_n_0\
    );
\pulse_counter_0[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(9),
      O => \pulse_counter_0[8]_i_4_n_0\
    );
\pulse_counter_0[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_0_reg(8),
      O => \pulse_counter_0[8]_i_5_n_0\
    );
\pulse_counter_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[0]_i_2_n_7\,
      Q => pulse_counter_0_reg(0),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pulse_counter_0_reg[0]_i_2_n_0\,
      CO(2) => \pulse_counter_0_reg[0]_i_2_n_1\,
      CO(1) => \pulse_counter_0_reg[0]_i_2_n_2\,
      CO(0) => \pulse_counter_0_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_0_reg[0]_i_2_n_4\,
      O(2) => \pulse_counter_0_reg[0]_i_2_n_5\,
      O(1) => \pulse_counter_0_reg[0]_i_2_n_6\,
      O(0) => \pulse_counter_0_reg[0]_i_2_n_7\,
      S(3) => \pulse_counter_0[0]_i_3_n_0\,
      S(2) => \pulse_counter_0[0]_i_4_n_0\,
      S(1) => \pulse_counter_0[0]_i_5_n_0\,
      S(0) => \pulse_counter_0[0]_i_6_n_0\
    );
\pulse_counter_0_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[8]_i_1_n_5\,
      Q => pulse_counter_0_reg(10),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[8]_i_1_n_4\,
      Q => pulse_counter_0_reg(11),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[12]_i_1_n_7\,
      Q => pulse_counter_0_reg(12),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_0_reg[8]_i_1_n_0\,
      CO(3) => \pulse_counter_0_reg[12]_i_1_n_0\,
      CO(2) => \pulse_counter_0_reg[12]_i_1_n_1\,
      CO(1) => \pulse_counter_0_reg[12]_i_1_n_2\,
      CO(0) => \pulse_counter_0_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_0_reg[12]_i_1_n_4\,
      O(2) => \pulse_counter_0_reg[12]_i_1_n_5\,
      O(1) => \pulse_counter_0_reg[12]_i_1_n_6\,
      O(0) => \pulse_counter_0_reg[12]_i_1_n_7\,
      S(3) => \pulse_counter_0[12]_i_2_n_0\,
      S(2) => \pulse_counter_0[12]_i_3_n_0\,
      S(1) => \pulse_counter_0[12]_i_4_n_0\,
      S(0) => \pulse_counter_0[12]_i_5_n_0\
    );
\pulse_counter_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[12]_i_1_n_6\,
      Q => pulse_counter_0_reg(13),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[12]_i_1_n_5\,
      Q => pulse_counter_0_reg(14),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[12]_i_1_n_4\,
      Q => pulse_counter_0_reg(15),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[16]_i_1_n_7\,
      Q => pulse_counter_0_reg(16),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_0_reg[12]_i_1_n_0\,
      CO(3) => \pulse_counter_0_reg[16]_i_1_n_0\,
      CO(2) => \pulse_counter_0_reg[16]_i_1_n_1\,
      CO(1) => \pulse_counter_0_reg[16]_i_1_n_2\,
      CO(0) => \pulse_counter_0_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_0_reg[16]_i_1_n_4\,
      O(2) => \pulse_counter_0_reg[16]_i_1_n_5\,
      O(1) => \pulse_counter_0_reg[16]_i_1_n_6\,
      O(0) => \pulse_counter_0_reg[16]_i_1_n_7\,
      S(3) => \pulse_counter_0[16]_i_2_n_0\,
      S(2) => \pulse_counter_0[16]_i_3_n_0\,
      S(1) => \pulse_counter_0[16]_i_4_n_0\,
      S(0) => \pulse_counter_0[16]_i_5_n_0\
    );
\pulse_counter_0_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[16]_i_1_n_6\,
      Q => pulse_counter_0_reg(17),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[16]_i_1_n_5\,
      Q => pulse_counter_0_reg(18),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[16]_i_1_n_4\,
      Q => pulse_counter_0_reg(19),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[0]_i_2_n_6\,
      Q => pulse_counter_0_reg(1),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[20]_i_1_n_7\,
      Q => pulse_counter_0_reg(20),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_0_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pulse_counter_0_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pulse_counter_0_reg[20]_i_1_n_2\,
      CO(0) => \pulse_counter_0_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \NLW_pulse_counter_0_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \pulse_counter_0_reg[20]_i_1_n_5\,
      O(1) => \pulse_counter_0_reg[20]_i_1_n_6\,
      O(0) => \pulse_counter_0_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2) => \pulse_counter_0[20]_i_2_n_0\,
      S(1) => \pulse_counter_0[20]_i_3_n_0\,
      S(0) => \pulse_counter_0[20]_i_4_n_0\
    );
\pulse_counter_0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[20]_i_1_n_6\,
      Q => pulse_counter_0_reg(21),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[20]_i_1_n_5\,
      Q => pulse_counter_0_reg(22),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[0]_i_2_n_5\,
      Q => pulse_counter_0_reg(2),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[0]_i_2_n_4\,
      Q => pulse_counter_0_reg(3),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[4]_i_1_n_7\,
      Q => pulse_counter_0_reg(4),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_0_reg[0]_i_2_n_0\,
      CO(3) => \pulse_counter_0_reg[4]_i_1_n_0\,
      CO(2) => \pulse_counter_0_reg[4]_i_1_n_1\,
      CO(1) => \pulse_counter_0_reg[4]_i_1_n_2\,
      CO(0) => \pulse_counter_0_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_0_reg[4]_i_1_n_4\,
      O(2) => \pulse_counter_0_reg[4]_i_1_n_5\,
      O(1) => \pulse_counter_0_reg[4]_i_1_n_6\,
      O(0) => \pulse_counter_0_reg[4]_i_1_n_7\,
      S(3) => \pulse_counter_0[4]_i_2_n_0\,
      S(2) => \pulse_counter_0[4]_i_3_n_0\,
      S(1) => \pulse_counter_0[4]_i_4_n_0\,
      S(0) => \pulse_counter_0[4]_i_5_n_0\
    );
\pulse_counter_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[4]_i_1_n_6\,
      Q => pulse_counter_0_reg(5),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[4]_i_1_n_5\,
      Q => pulse_counter_0_reg(6),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[4]_i_1_n_4\,
      Q => pulse_counter_0_reg(7),
      S => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[8]_i_1_n_7\,
      Q => pulse_counter_0_reg(8),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_0_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_0_reg[4]_i_1_n_0\,
      CO(3) => \pulse_counter_0_reg[8]_i_1_n_0\,
      CO(2) => \pulse_counter_0_reg[8]_i_1_n_1\,
      CO(1) => \pulse_counter_0_reg[8]_i_1_n_2\,
      CO(0) => \pulse_counter_0_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_0_reg[8]_i_1_n_4\,
      O(2) => \pulse_counter_0_reg[8]_i_1_n_5\,
      O(1) => \pulse_counter_0_reg[8]_i_1_n_6\,
      O(0) => \pulse_counter_0_reg[8]_i_1_n_7\,
      S(3) => \pulse_counter_0[8]_i_2_n_0\,
      S(2) => \pulse_counter_0[8]_i_3_n_0\,
      S(1) => \pulse_counter_0[8]_i_4_n_0\,
      S(0) => \pulse_counter_0[8]_i_5_n_0\
    );
\pulse_counter_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(0),
      D => \pulse_counter_0_reg[8]_i_1_n_6\,
      Q => pulse_counter_0_reg(9),
      R => \pulse_counter_0[0]_i_1_n_0\
    );
\pulse_counter_1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_miso_prev_pulse,
      I1 => spi_miso,
      O => clear
    );
\pulse_counter_1[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(3),
      O => \pulse_counter_1[0]_i_3_n_0\
    );
\pulse_counter_1[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(2),
      O => \pulse_counter_1[0]_i_4_n_0\
    );
\pulse_counter_1[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(1),
      O => \pulse_counter_1[0]_i_5_n_0\
    );
\pulse_counter_1[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(0),
      O => \pulse_counter_1[0]_i_6_n_0\
    );
\pulse_counter_1[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(15),
      O => \pulse_counter_1[12]_i_2_n_0\
    );
\pulse_counter_1[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(14),
      O => \pulse_counter_1[12]_i_3_n_0\
    );
\pulse_counter_1[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(13),
      O => \pulse_counter_1[12]_i_4_n_0\
    );
\pulse_counter_1[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(12),
      O => \pulse_counter_1[12]_i_5_n_0\
    );
\pulse_counter_1[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(19),
      O => \pulse_counter_1[16]_i_2_n_0\
    );
\pulse_counter_1[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(18),
      O => \pulse_counter_1[16]_i_3_n_0\
    );
\pulse_counter_1[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(17),
      O => \pulse_counter_1[16]_i_4_n_0\
    );
\pulse_counter_1[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(16),
      O => \pulse_counter_1[16]_i_5_n_0\
    );
\pulse_counter_1[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(22),
      O => \pulse_counter_1[20]_i_2_n_0\
    );
\pulse_counter_1[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(21),
      O => \pulse_counter_1[20]_i_3_n_0\
    );
\pulse_counter_1[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(20),
      O => \pulse_counter_1[20]_i_4_n_0\
    );
\pulse_counter_1[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(7),
      O => \pulse_counter_1[4]_i_2_n_0\
    );
\pulse_counter_1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(6),
      O => \pulse_counter_1[4]_i_3_n_0\
    );
\pulse_counter_1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(5),
      O => \pulse_counter_1[4]_i_4_n_0\
    );
\pulse_counter_1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(4),
      O => \pulse_counter_1[4]_i_5_n_0\
    );
\pulse_counter_1[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(11),
      O => \pulse_counter_1[8]_i_2_n_0\
    );
\pulse_counter_1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(10),
      O => \pulse_counter_1[8]_i_3_n_0\
    );
\pulse_counter_1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(9),
      O => \pulse_counter_1[8]_i_4_n_0\
    );
\pulse_counter_1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_counter_1_reg(8),
      O => \pulse_counter_1[8]_i_5_n_0\
    );
\pulse_counter_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[0]_i_2_n_7\,
      Q => pulse_counter_1_reg(0),
      R => clear
    );
\pulse_counter_1_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pulse_counter_1_reg[0]_i_2_n_0\,
      CO(2) => \pulse_counter_1_reg[0]_i_2_n_1\,
      CO(1) => \pulse_counter_1_reg[0]_i_2_n_2\,
      CO(0) => \pulse_counter_1_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_1_reg[0]_i_2_n_4\,
      O(2) => \pulse_counter_1_reg[0]_i_2_n_5\,
      O(1) => \pulse_counter_1_reg[0]_i_2_n_6\,
      O(0) => \pulse_counter_1_reg[0]_i_2_n_7\,
      S(3) => \pulse_counter_1[0]_i_3_n_0\,
      S(2) => \pulse_counter_1[0]_i_4_n_0\,
      S(1) => \pulse_counter_1[0]_i_5_n_0\,
      S(0) => \pulse_counter_1[0]_i_6_n_0\
    );
\pulse_counter_1_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[8]_i_1_n_5\,
      Q => pulse_counter_1_reg(10),
      S => clear
    );
\pulse_counter_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[8]_i_1_n_4\,
      Q => pulse_counter_1_reg(11),
      R => clear
    );
\pulse_counter_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[12]_i_1_n_7\,
      Q => pulse_counter_1_reg(12),
      R => clear
    );
\pulse_counter_1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_1_reg[8]_i_1_n_0\,
      CO(3) => \pulse_counter_1_reg[12]_i_1_n_0\,
      CO(2) => \pulse_counter_1_reg[12]_i_1_n_1\,
      CO(1) => \pulse_counter_1_reg[12]_i_1_n_2\,
      CO(0) => \pulse_counter_1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_1_reg[12]_i_1_n_4\,
      O(2) => \pulse_counter_1_reg[12]_i_1_n_5\,
      O(1) => \pulse_counter_1_reg[12]_i_1_n_6\,
      O(0) => \pulse_counter_1_reg[12]_i_1_n_7\,
      S(3) => \pulse_counter_1[12]_i_2_n_0\,
      S(2) => \pulse_counter_1[12]_i_3_n_0\,
      S(1) => \pulse_counter_1[12]_i_4_n_0\,
      S(0) => \pulse_counter_1[12]_i_5_n_0\
    );
\pulse_counter_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[12]_i_1_n_6\,
      Q => pulse_counter_1_reg(13),
      R => clear
    );
\pulse_counter_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[12]_i_1_n_5\,
      Q => pulse_counter_1_reg(14),
      R => clear
    );
\pulse_counter_1_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[12]_i_1_n_4\,
      Q => pulse_counter_1_reg(15),
      S => clear
    );
\pulse_counter_1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[16]_i_1_n_7\,
      Q => pulse_counter_1_reg(16),
      R => clear
    );
\pulse_counter_1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_1_reg[12]_i_1_n_0\,
      CO(3) => \pulse_counter_1_reg[16]_i_1_n_0\,
      CO(2) => \pulse_counter_1_reg[16]_i_1_n_1\,
      CO(1) => \pulse_counter_1_reg[16]_i_1_n_2\,
      CO(0) => \pulse_counter_1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_1_reg[16]_i_1_n_4\,
      O(2) => \pulse_counter_1_reg[16]_i_1_n_5\,
      O(1) => \pulse_counter_1_reg[16]_i_1_n_6\,
      O(0) => \pulse_counter_1_reg[16]_i_1_n_7\,
      S(3) => \pulse_counter_1[16]_i_2_n_0\,
      S(2) => \pulse_counter_1[16]_i_3_n_0\,
      S(1) => \pulse_counter_1[16]_i_4_n_0\,
      S(0) => \pulse_counter_1[16]_i_5_n_0\
    );
\pulse_counter_1_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[16]_i_1_n_6\,
      Q => pulse_counter_1_reg(17),
      S => clear
    );
\pulse_counter_1_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[16]_i_1_n_5\,
      Q => pulse_counter_1_reg(18),
      S => clear
    );
\pulse_counter_1_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[16]_i_1_n_4\,
      Q => pulse_counter_1_reg(19),
      S => clear
    );
\pulse_counter_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[0]_i_2_n_6\,
      Q => pulse_counter_1_reg(1),
      R => clear
    );
\pulse_counter_1_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[20]_i_1_n_7\,
      Q => pulse_counter_1_reg(20),
      S => clear
    );
\pulse_counter_1_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_1_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pulse_counter_1_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pulse_counter_1_reg[20]_i_1_n_2\,
      CO(0) => \pulse_counter_1_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \NLW_pulse_counter_1_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \pulse_counter_1_reg[20]_i_1_n_5\,
      O(1) => \pulse_counter_1_reg[20]_i_1_n_6\,
      O(0) => \pulse_counter_1_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2) => \pulse_counter_1[20]_i_2_n_0\,
      S(1) => \pulse_counter_1[20]_i_3_n_0\,
      S(0) => \pulse_counter_1[20]_i_4_n_0\
    );
\pulse_counter_1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[20]_i_1_n_6\,
      Q => pulse_counter_1_reg(21),
      R => clear
    );
\pulse_counter_1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[20]_i_1_n_5\,
      Q => pulse_counter_1_reg(22),
      R => clear
    );
\pulse_counter_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[0]_i_2_n_5\,
      Q => pulse_counter_1_reg(2),
      R => clear
    );
\pulse_counter_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[0]_i_2_n_4\,
      Q => pulse_counter_1_reg(3),
      R => clear
    );
\pulse_counter_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[4]_i_1_n_7\,
      Q => pulse_counter_1_reg(4),
      R => clear
    );
\pulse_counter_1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_1_reg[0]_i_2_n_0\,
      CO(3) => \pulse_counter_1_reg[4]_i_1_n_0\,
      CO(2) => \pulse_counter_1_reg[4]_i_1_n_1\,
      CO(1) => \pulse_counter_1_reg[4]_i_1_n_2\,
      CO(0) => \pulse_counter_1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_1_reg[4]_i_1_n_4\,
      O(2) => \pulse_counter_1_reg[4]_i_1_n_5\,
      O(1) => \pulse_counter_1_reg[4]_i_1_n_6\,
      O(0) => \pulse_counter_1_reg[4]_i_1_n_7\,
      S(3) => \pulse_counter_1[4]_i_2_n_0\,
      S(2) => \pulse_counter_1[4]_i_3_n_0\,
      S(1) => \pulse_counter_1[4]_i_4_n_0\,
      S(0) => \pulse_counter_1[4]_i_5_n_0\
    );
\pulse_counter_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[4]_i_1_n_6\,
      Q => pulse_counter_1_reg(5),
      R => clear
    );
\pulse_counter_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[4]_i_1_n_5\,
      Q => pulse_counter_1_reg(6),
      R => clear
    );
\pulse_counter_1_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[4]_i_1_n_4\,
      Q => pulse_counter_1_reg(7),
      S => clear
    );
\pulse_counter_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[8]_i_1_n_7\,
      Q => pulse_counter_1_reg(8),
      R => clear
    );
\pulse_counter_1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_counter_1_reg[4]_i_1_n_0\,
      CO(3) => \pulse_counter_1_reg[8]_i_1_n_0\,
      CO(2) => \pulse_counter_1_reg[8]_i_1_n_1\,
      CO(1) => \pulse_counter_1_reg[8]_i_1_n_2\,
      CO(0) => \pulse_counter_1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \pulse_counter_1_reg[8]_i_1_n_4\,
      O(2) => \pulse_counter_1_reg[8]_i_1_n_5\,
      O(1) => \pulse_counter_1_reg[8]_i_1_n_6\,
      O(0) => \pulse_counter_1_reg[8]_i_1_n_7\,
      S(3) => \pulse_counter_1[8]_i_2_n_0\,
      S(2) => \pulse_counter_1[8]_i_3_n_0\,
      S(1) => \pulse_counter_1[8]_i_4_n_0\,
      S(0) => \pulse_counter_1[8]_i_5_n_0\
    );
\pulse_counter_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^leds\(1),
      D => \pulse_counter_1_reg[8]_i_1_n_6\,
      Q => pulse_counter_1_reg(9),
      R => clear
    );
spi_miso_prev_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => spi_miso,
      Q => spi_miso_prev_pulse,
      R => '0'
    );
spi_mosi_prev_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => spi_mosi,
      Q => spi_mosi_prev_pulse,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_led_driver_0_0 is
  port (
    clk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_led_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_led_driver_0_0 : entity is "dac_bd_1_led_driver_0_0,led_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_led_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_led_driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_led_driver_0_0 : entity is "led_driver,Vivado 2023.1";
end dac_bd_1_led_driver_0_0;

architecture STRUCTURE of dac_bd_1_led_driver_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.dac_bd_1_led_driver_0_0_led_driver
     port map (
      clk => clk,
      leds(1 downto 0) => leds(1 downto 0),
      spi_miso => spi_miso,
      spi_mosi => spi_mosi
    );
end STRUCTURE;
