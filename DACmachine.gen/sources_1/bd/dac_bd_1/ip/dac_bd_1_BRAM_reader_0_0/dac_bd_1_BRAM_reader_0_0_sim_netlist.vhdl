-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Jun  8 02:03:20 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_BRAM_reader_0_0/dac_bd_1_BRAM_reader_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_BRAM_reader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_BRAM_reader_0_0_BRAM_reader is
  port (
    O_ADDR : out STD_LOGIC_VECTOR ( 29 downto 0 );
    O_ENABLE : out STD_LOGIC;
    O_SPI_TRX : out STD_LOGIC_VECTOR ( 23 downto 0 );
    O_START_SPI : out STD_LOGIC;
    O_CLEAR_REQ : out STD_LOGIC;
    O_LDAC_REQ : out STD_LOGIC;
    O_RESET_REQ : out STD_LOGIC;
    I_DATA : in STD_LOGIC_VECTOR ( 27 downto 0 );
    clk : in STD_LOGIC;
    I_CONFIGURE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I_START_MACRO : in STD_LOGIC;
    I_SPI_DONE : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dac_bd_1_BRAM_reader_0_0_BRAM_reader : entity is "BRAM_reader";
end dac_bd_1_BRAM_reader_0_0_BRAM_reader;

architecture STRUCTURE of dac_bd_1_BRAM_reader_0_0_BRAM_reader is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^o_addr\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \O_ADDR0_carry__0_n_0\ : STD_LOGIC;
  signal \O_ADDR0_carry__0_n_1\ : STD_LOGIC;
  signal \O_ADDR0_carry__0_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__0_n_3\ : STD_LOGIC;
  signal \O_ADDR0_carry__1_n_0\ : STD_LOGIC;
  signal \O_ADDR0_carry__1_n_1\ : STD_LOGIC;
  signal \O_ADDR0_carry__1_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__1_n_3\ : STD_LOGIC;
  signal \O_ADDR0_carry__2_n_0\ : STD_LOGIC;
  signal \O_ADDR0_carry__2_n_1\ : STD_LOGIC;
  signal \O_ADDR0_carry__2_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__2_n_3\ : STD_LOGIC;
  signal \O_ADDR0_carry__3_n_0\ : STD_LOGIC;
  signal \O_ADDR0_carry__3_n_1\ : STD_LOGIC;
  signal \O_ADDR0_carry__3_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__3_n_3\ : STD_LOGIC;
  signal \O_ADDR0_carry__4_n_0\ : STD_LOGIC;
  signal \O_ADDR0_carry__4_n_1\ : STD_LOGIC;
  signal \O_ADDR0_carry__4_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__4_n_3\ : STD_LOGIC;
  signal \O_ADDR0_carry__5_n_0\ : STD_LOGIC;
  signal \O_ADDR0_carry__5_n_1\ : STD_LOGIC;
  signal \O_ADDR0_carry__5_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__5_n_3\ : STD_LOGIC;
  signal \O_ADDR0_carry__6_n_2\ : STD_LOGIC;
  signal \O_ADDR0_carry__6_n_3\ : STD_LOGIC;
  signal O_ADDR0_carry_i_1_n_0 : STD_LOGIC;
  signal O_ADDR0_carry_n_0 : STD_LOGIC;
  signal O_ADDR0_carry_n_1 : STD_LOGIC;
  signal O_ADDR0_carry_n_2 : STD_LOGIC;
  signal O_ADDR0_carry_n_3 : STD_LOGIC;
  signal O_ADDR0_in : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \O_ADDR[31]_i_10_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_11_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_12_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_13_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_14_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_1_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_3_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_4_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_5_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_6_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_7_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_8_n_0\ : STD_LOGIC;
  signal \O_ADDR[31]_i_9_n_0\ : STD_LOGIC;
  signal O_CLEAR_REQ_i_1_n_0 : STD_LOGIC;
  signal O_CLEAR_REQ_i_2_n_0 : STD_LOGIC;
  signal O_ENABLE_i_1_n_0 : STD_LOGIC;
  signal O_LDAC_REQ_i_1_n_0 : STD_LOGIC;
  signal O_RESET_REQ_i_1_n_0 : STD_LOGIC;
  signal \O_SPI_TRX[23]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in22 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wait_counter : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \wait_counter0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \wait_counter0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \wait_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_10_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_11_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_12_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_2_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_5_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_6_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_7_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_8_n_0\ : STD_LOGIC;
  signal \wait_counter[22]_i_9_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_10_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_11_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_12_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_13_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_14_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_3_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_4_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_5_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_6_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_7_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_8_n_0\ : STD_LOGIC;
  signal \wait_counter[23]_i_9_n_0\ : STD_LOGIC;
  signal \wait_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal wait_counter_0 : STD_LOGIC;
  signal \wait_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \wait_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_O_ADDR0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_O_ADDR0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_O_ADDR0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_counter0_inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_counter0_inferred__0/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_WAIT_DATA:010,S_DECODE_CMD:011,S_SPI_TRX_WAIT:100,S_WAIT_CYCLES:101,S_READ_CMD:001,S_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_WAIT_DATA:010,S_DECODE_CMD:011,S_SPI_TRX_WAIT:100,S_WAIT_CYCLES:101,S_READ_CMD:001,S_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "S_WAIT_DATA:010,S_DECODE_CMD:011,S_SPI_TRX_WAIT:100,S_WAIT_CYCLES:101,S_READ_CMD:001,S_IDLE:000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of O_ADDR0_carry : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \O_ADDR0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \O_ADDR[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \O_ADDR[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \O_ADDR[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \O_ADDR[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \O_ADDR[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \O_ADDR[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \O_ADDR[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \O_ADDR[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \O_ADDR[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \O_ADDR[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \O_ADDR[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \O_ADDR[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \O_ADDR[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \O_ADDR[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \O_ADDR[24]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \O_ADDR[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \O_ADDR[26]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \O_ADDR[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \O_ADDR[28]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \O_ADDR[29]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \O_ADDR[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \O_ADDR[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \O_ADDR[31]_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \O_ADDR[31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \O_ADDR[31]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \O_ADDR[31]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \O_ADDR[31]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \O_ADDR[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \O_ADDR[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \O_ADDR[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \O_ADDR[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \O_ADDR[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \O_ADDR[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \O_ADDR[9]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of O_CLEAR_REQ_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of O_CLEAR_REQ_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of O_ENABLE_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of O_LDAC_REQ_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of O_RESET_REQ_i_1 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \wait_counter0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \wait_counter0_inferred__0/i__carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \wait_counter[0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_counter[0]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wait_counter[10]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wait_counter[10]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_counter[22]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wait_counter[22]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wait_counter[22]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wait_counter[22]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_counter[22]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wait_counter[22]_i_9\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_10\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_13\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wait_counter[23]_i_9\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wait_counter[9]_i_2\ : label is "soft_lutpair0";
begin
  O_ADDR(29 downto 0) <= \^o_addr\(29 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFFFFFF0000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_2_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I_CONFIGURE(1),
      I1 => I_CONFIGURE(0),
      I2 => I_DATA(24),
      I3 => I_DATA(26),
      I4 => I_DATA(25),
      I5 => I_CONFIGURE(2),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_DATA(27),
      I1 => I_DATA(26),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \O_ADDR[31]_i_7_n_0\,
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333BBB8"
    )
        port map (
      I0 => \O_ADDR[31]_i_4_n_0\,
      I1 => state(2),
      I2 => I_START_MACRO,
      I3 => state(0),
      I4 => state(1),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
O_ADDR0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => O_ADDR0_carry_n_0,
      CO(2) => O_ADDR0_carry_n_1,
      CO(1) => O_ADDR0_carry_n_2,
      CO(0) => O_ADDR0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^o_addr\(0),
      DI(0) => '0',
      O(3 downto 1) => in22(4 downto 2),
      O(0) => NLW_O_ADDR0_carry_O_UNCONNECTED(0),
      S(3 downto 2) => \^o_addr\(2 downto 1),
      S(1) => O_ADDR0_carry_i_1_n_0,
      S(0) => '0'
    );
\O_ADDR0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => O_ADDR0_carry_n_0,
      CO(3) => \O_ADDR0_carry__0_n_0\,
      CO(2) => \O_ADDR0_carry__0_n_1\,
      CO(1) => \O_ADDR0_carry__0_n_2\,
      CO(0) => \O_ADDR0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(8 downto 5),
      S(3 downto 0) => \^o_addr\(6 downto 3)
    );
\O_ADDR0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_ADDR0_carry__0_n_0\,
      CO(3) => \O_ADDR0_carry__1_n_0\,
      CO(2) => \O_ADDR0_carry__1_n_1\,
      CO(1) => \O_ADDR0_carry__1_n_2\,
      CO(0) => \O_ADDR0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(12 downto 9),
      S(3 downto 0) => \^o_addr\(10 downto 7)
    );
\O_ADDR0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_ADDR0_carry__1_n_0\,
      CO(3) => \O_ADDR0_carry__2_n_0\,
      CO(2) => \O_ADDR0_carry__2_n_1\,
      CO(1) => \O_ADDR0_carry__2_n_2\,
      CO(0) => \O_ADDR0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(16 downto 13),
      S(3 downto 0) => \^o_addr\(14 downto 11)
    );
\O_ADDR0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_ADDR0_carry__2_n_0\,
      CO(3) => \O_ADDR0_carry__3_n_0\,
      CO(2) => \O_ADDR0_carry__3_n_1\,
      CO(1) => \O_ADDR0_carry__3_n_2\,
      CO(0) => \O_ADDR0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(20 downto 17),
      S(3 downto 0) => \^o_addr\(18 downto 15)
    );
\O_ADDR0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_ADDR0_carry__3_n_0\,
      CO(3) => \O_ADDR0_carry__4_n_0\,
      CO(2) => \O_ADDR0_carry__4_n_1\,
      CO(1) => \O_ADDR0_carry__4_n_2\,
      CO(0) => \O_ADDR0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(24 downto 21),
      S(3 downto 0) => \^o_addr\(22 downto 19)
    );
\O_ADDR0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_ADDR0_carry__4_n_0\,
      CO(3) => \O_ADDR0_carry__5_n_0\,
      CO(2) => \O_ADDR0_carry__5_n_1\,
      CO(1) => \O_ADDR0_carry__5_n_2\,
      CO(0) => \O_ADDR0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(28 downto 25),
      S(3 downto 0) => \^o_addr\(26 downto 23)
    );
\O_ADDR0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \O_ADDR0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_O_ADDR0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \O_ADDR0_carry__6_n_2\,
      CO(0) => \O_ADDR0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_O_ADDR0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in22(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^o_addr\(29 downto 27)
    );
O_ADDR0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_addr\(0),
      O => O_ADDR0_carry_i_1_n_0
    );
\O_ADDR[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(10),
      O => O_ADDR0_in(10)
    );
\O_ADDR[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(11),
      O => O_ADDR0_in(11)
    );
\O_ADDR[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(12),
      O => O_ADDR0_in(12)
    );
\O_ADDR[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(13),
      O => O_ADDR0_in(13)
    );
\O_ADDR[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(14),
      O => O_ADDR0_in(14)
    );
\O_ADDR[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(15),
      O => O_ADDR0_in(15)
    );
\O_ADDR[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(16),
      O => O_ADDR0_in(16)
    );
\O_ADDR[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(17),
      O => O_ADDR0_in(17)
    );
\O_ADDR[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(18),
      O => O_ADDR0_in(18)
    );
\O_ADDR[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(19),
      O => O_ADDR0_in(19)
    );
\O_ADDR[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(20),
      O => O_ADDR0_in(20)
    );
\O_ADDR[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(21),
      O => O_ADDR0_in(21)
    );
\O_ADDR[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(22),
      O => O_ADDR0_in(22)
    );
\O_ADDR[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(23),
      O => O_ADDR0_in(23)
    );
\O_ADDR[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(24),
      O => O_ADDR0_in(24)
    );
\O_ADDR[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(25),
      O => O_ADDR0_in(25)
    );
\O_ADDR[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(26),
      O => O_ADDR0_in(26)
    );
\O_ADDR[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(27),
      O => O_ADDR0_in(27)
    );
\O_ADDR[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(28),
      O => O_ADDR0_in(28)
    );
\O_ADDR[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(29),
      O => O_ADDR0_in(29)
    );
\O_ADDR[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(2),
      O => O_ADDR0_in(2)
    );
\O_ADDR[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(30),
      O => O_ADDR0_in(30)
    );
\O_ADDR[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \O_ADDR[31]_i_4_n_0\,
      I1 => state(2),
      I2 => \O_ADDR[31]_i_5_n_0\,
      I3 => \O_ADDR[31]_i_6_n_0\,
      I4 => \O_ADDR[31]_i_7_n_0\,
      O => \O_ADDR[31]_i_1_n_0\
    );
\O_ADDR[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[23]\,
      I1 => \wait_counter_reg_n_0_[22]\,
      I2 => \wait_counter_reg_n_0_[14]\,
      I3 => \wait_counter_reg_n_0_[19]\,
      I4 => \wait_counter_reg_n_0_[15]\,
      I5 => \wait_counter_reg_n_0_[18]\,
      O => \O_ADDR[31]_i_10_n_0\
    );
\O_ADDR[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[4]\,
      I1 => \wait_counter_reg_n_0_[1]\,
      I2 => \wait_counter_reg_n_0_[0]\,
      I3 => state(0),
      I4 => \wait_counter_reg_n_0_[5]\,
      I5 => \wait_counter_reg_n_0_[16]\,
      O => \O_ADDR[31]_i_11_n_0\
    );
\O_ADDR[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[11]\,
      I1 => \wait_counter_reg_n_0_[8]\,
      I2 => \wait_counter_reg_n_0_[12]\,
      I3 => \wait_counter_reg_n_0_[17]\,
      I4 => \wait_counter_reg_n_0_[20]\,
      I5 => \wait_counter_reg_n_0_[21]\,
      O => \O_ADDR[31]_i_12_n_0\
    );
\O_ADDR[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[13]\,
      I1 => \wait_counter_reg_n_0_[9]\,
      I2 => \wait_counter_reg_n_0_[10]\,
      I3 => \wait_counter_reg_n_0_[6]\,
      O => \O_ADDR[31]_i_13_n_0\
    );
\O_ADDR[31]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[3]\,
      I1 => \wait_counter_reg_n_0_[7]\,
      I2 => \wait_counter_reg_n_0_[2]\,
      O => \O_ADDR[31]_i_14_n_0\
    );
\O_ADDR[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(31),
      O => O_ADDR0_in(31)
    );
\O_ADDR[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \O_ADDR[31]_i_3_n_0\
    );
\O_ADDR[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \O_ADDR[31]_i_9_n_0\,
      I1 => \O_ADDR[31]_i_10_n_0\,
      I2 => \O_ADDR[31]_i_11_n_0\,
      I3 => \O_ADDR[31]_i_12_n_0\,
      I4 => \O_ADDR[31]_i_13_n_0\,
      I5 => \O_ADDR[31]_i_14_n_0\,
      O => \O_ADDR[31]_i_4_n_0\
    );
\O_ADDR[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(1),
      I1 => I_START_MACRO,
      I2 => state(0),
      O => \O_ADDR[31]_i_5_n_0\
    );
\O_ADDR[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \O_ADDR[31]_i_8_n_0\,
      I3 => I_CONFIGURE(2),
      O => \O_ADDR[31]_i_6_n_0\
    );
\O_ADDR[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F700FFFF"
    )
        port map (
      I0 => I_DATA(25),
      I1 => I_DATA(24),
      I2 => \wait_counter[23]_i_7_n_0\,
      I3 => I_DATA(26),
      I4 => I_DATA(27),
      O => \O_ADDR[31]_i_7_n_0\
    );
\O_ADDR[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I_DATA(26),
      I1 => I_DATA(25),
      I2 => I_DATA(27),
      I3 => I_CONFIGURE(1),
      I4 => I_CONFIGURE(0),
      I5 => I_DATA(24),
      O => \O_ADDR[31]_i_8_n_0\
    );
\O_ADDR[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I_SPI_DONE,
      I1 => state(0),
      O => \O_ADDR[31]_i_9_n_0\
    );
\O_ADDR[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(3),
      O => O_ADDR0_in(3)
    );
\O_ADDR[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(4),
      O => O_ADDR0_in(4)
    );
\O_ADDR[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(5),
      O => O_ADDR0_in(5)
    );
\O_ADDR[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(6),
      O => O_ADDR0_in(6)
    );
\O_ADDR[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(7),
      O => O_ADDR0_in(7)
    );
\O_ADDR[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(8),
      O => O_ADDR0_in(8)
    );
\O_ADDR[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3800"
    )
        port map (
      I0 => \O_ADDR[31]_i_8_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => in22(9),
      O => O_ADDR0_in(9)
    );
\O_ADDR_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(10),
      Q => \^o_addr\(8)
    );
\O_ADDR_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(11),
      Q => \^o_addr\(9)
    );
\O_ADDR_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(12),
      Q => \^o_addr\(10)
    );
\O_ADDR_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(13),
      Q => \^o_addr\(11)
    );
\O_ADDR_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(14),
      Q => \^o_addr\(12)
    );
\O_ADDR_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(15),
      Q => \^o_addr\(13)
    );
\O_ADDR_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(16),
      Q => \^o_addr\(14)
    );
\O_ADDR_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(17),
      Q => \^o_addr\(15)
    );
\O_ADDR_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(18),
      Q => \^o_addr\(16)
    );
\O_ADDR_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(19),
      Q => \^o_addr\(17)
    );
\O_ADDR_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(20),
      Q => \^o_addr\(18)
    );
\O_ADDR_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(21),
      Q => \^o_addr\(19)
    );
\O_ADDR_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(22),
      Q => \^o_addr\(20)
    );
\O_ADDR_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(23),
      Q => \^o_addr\(21)
    );
\O_ADDR_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(24),
      Q => \^o_addr\(22)
    );
\O_ADDR_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(25),
      Q => \^o_addr\(23)
    );
\O_ADDR_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(26),
      Q => \^o_addr\(24)
    );
\O_ADDR_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(27),
      Q => \^o_addr\(25)
    );
\O_ADDR_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(28),
      Q => \^o_addr\(26)
    );
\O_ADDR_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(29),
      Q => \^o_addr\(27)
    );
\O_ADDR_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(2),
      Q => \^o_addr\(0)
    );
\O_ADDR_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(30),
      Q => \^o_addr\(28)
    );
\O_ADDR_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(31),
      Q => \^o_addr\(29)
    );
\O_ADDR_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(3),
      Q => \^o_addr\(1)
    );
\O_ADDR_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(4),
      Q => \^o_addr\(2)
    );
\O_ADDR_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(5),
      Q => \^o_addr\(3)
    );
\O_ADDR_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(6),
      Q => \^o_addr\(4)
    );
\O_ADDR_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(7),
      Q => \^o_addr\(5)
    );
\O_ADDR_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(8),
      Q => \^o_addr\(6)
    );
\O_ADDR_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_ADDR[31]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ADDR0_in(9),
      Q => \^o_addr\(7)
    );
O_CLEAR_REQ_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => I_DATA(25),
      I1 => O_CLEAR_REQ_i_2_n_0,
      I2 => I_DATA(24),
      I3 => I_DATA(26),
      I4 => I_DATA(27),
      O => O_CLEAR_REQ_i_1_n_0
    );
O_CLEAR_REQ_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => O_CLEAR_REQ_i_2_n_0
    );
O_CLEAR_REQ_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_CLEAR_REQ_i_1_n_0,
      Q => O_CLEAR_REQ
    );
O_ENABLE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => O_ENABLE_i_1_n_0
    );
O_ENABLE_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_ENABLE_i_1_n_0,
      Q => O_ENABLE
    );
O_LDAC_REQ_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => O_CLEAR_REQ_i_2_n_0,
      I1 => I_DATA(25),
      I2 => I_DATA(24),
      I3 => I_DATA(27),
      I4 => I_DATA(26),
      O => O_LDAC_REQ_i_1_n_0
    );
O_LDAC_REQ_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_LDAC_REQ_i_1_n_0,
      Q => O_LDAC_REQ
    );
O_RESET_REQ_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => I_DATA(25),
      I1 => O_CLEAR_REQ_i_2_n_0,
      I2 => I_DATA(26),
      I3 => I_DATA(27),
      I4 => I_DATA(24),
      O => O_RESET_REQ_i_1_n_0
    );
O_RESET_REQ_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => O_RESET_REQ_i_1_n_0,
      Q => O_RESET_REQ
    );
\O_SPI_TRX[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => I_DATA(26),
      I4 => I_DATA(27),
      O => \O_SPI_TRX[23]_i_1_n_0\
    );
\O_SPI_TRX_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(0),
      Q => O_SPI_TRX(0)
    );
\O_SPI_TRX_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(10),
      Q => O_SPI_TRX(10)
    );
\O_SPI_TRX_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(11),
      Q => O_SPI_TRX(11)
    );
\O_SPI_TRX_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(12),
      Q => O_SPI_TRX(12)
    );
\O_SPI_TRX_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(13),
      Q => O_SPI_TRX(13)
    );
\O_SPI_TRX_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(14),
      Q => O_SPI_TRX(14)
    );
\O_SPI_TRX_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(15),
      Q => O_SPI_TRX(15)
    );
\O_SPI_TRX_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(16),
      Q => O_SPI_TRX(16)
    );
\O_SPI_TRX_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(17),
      Q => O_SPI_TRX(17)
    );
\O_SPI_TRX_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(18),
      Q => O_SPI_TRX(18)
    );
\O_SPI_TRX_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(19),
      Q => O_SPI_TRX(19)
    );
\O_SPI_TRX_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(1),
      Q => O_SPI_TRX(1)
    );
\O_SPI_TRX_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(20),
      Q => O_SPI_TRX(20)
    );
\O_SPI_TRX_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(21),
      Q => O_SPI_TRX(21)
    );
\O_SPI_TRX_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(22),
      Q => O_SPI_TRX(22)
    );
\O_SPI_TRX_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(23),
      Q => O_SPI_TRX(23)
    );
\O_SPI_TRX_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(2),
      Q => O_SPI_TRX(2)
    );
\O_SPI_TRX_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(3),
      Q => O_SPI_TRX(3)
    );
\O_SPI_TRX_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(4),
      Q => O_SPI_TRX(4)
    );
\O_SPI_TRX_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(5),
      Q => O_SPI_TRX(5)
    );
\O_SPI_TRX_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(6),
      Q => O_SPI_TRX(6)
    );
\O_SPI_TRX_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(7),
      Q => O_SPI_TRX(7)
    );
\O_SPI_TRX_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(8),
      Q => O_SPI_TRX(8)
    );
\O_SPI_TRX_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \O_SPI_TRX[23]_i_1_n_0\,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => I_DATA(9),
      Q => O_SPI_TRX(9)
    );
O_START_SPI_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => \O_SPI_TRX[23]_i_1_n_0\,
      Q => O_START_SPI
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[8]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[7]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[6]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[5]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[12]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[11]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[10]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[9]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[16]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[15]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[14]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[13]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[20]\,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[19]\,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[18]\,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[17]\,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[23]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[22]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[21]\,
      O => \i__carry__4_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[4]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[3]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[2]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_counter_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\wait_counter0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_counter0_inferred__0/i__carry_n_0\,
      CO(2) => \wait_counter0_inferred__0/i__carry_n_1\,
      CO(1) => \wait_counter0_inferred__0/i__carry_n_2\,
      CO(0) => \wait_counter0_inferred__0/i__carry_n_3\,
      CYINIT => \wait_counter_reg_n_0_[0]\,
      DI(3) => \wait_counter_reg_n_0_[4]\,
      DI(2) => \wait_counter_reg_n_0_[3]\,
      DI(1) => \wait_counter_reg_n_0_[2]\,
      DI(0) => \wait_counter_reg_n_0_[1]\,
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\wait_counter0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_inferred__0/i__carry_n_0\,
      CO(3) => \wait_counter0_inferred__0/i__carry__0_n_0\,
      CO(2) => \wait_counter0_inferred__0/i__carry__0_n_1\,
      CO(1) => \wait_counter0_inferred__0/i__carry__0_n_2\,
      CO(0) => \wait_counter0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \wait_counter_reg_n_0_[8]\,
      DI(2) => \wait_counter_reg_n_0_[7]\,
      DI(1) => \wait_counter_reg_n_0_[6]\,
      DI(0) => \wait_counter_reg_n_0_[5]\,
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\wait_counter0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_inferred__0/i__carry__0_n_0\,
      CO(3) => \wait_counter0_inferred__0/i__carry__1_n_0\,
      CO(2) => \wait_counter0_inferred__0/i__carry__1_n_1\,
      CO(1) => \wait_counter0_inferred__0/i__carry__1_n_2\,
      CO(0) => \wait_counter0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \wait_counter_reg_n_0_[12]\,
      DI(2) => \wait_counter_reg_n_0_[11]\,
      DI(1) => \wait_counter_reg_n_0_[10]\,
      DI(0) => \wait_counter_reg_n_0_[9]\,
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\wait_counter0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_inferred__0/i__carry__1_n_0\,
      CO(3) => \wait_counter0_inferred__0/i__carry__2_n_0\,
      CO(2) => \wait_counter0_inferred__0/i__carry__2_n_1\,
      CO(1) => \wait_counter0_inferred__0/i__carry__2_n_2\,
      CO(0) => \wait_counter0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \wait_counter_reg_n_0_[16]\,
      DI(2) => \wait_counter_reg_n_0_[15]\,
      DI(1) => \wait_counter_reg_n_0_[14]\,
      DI(0) => \wait_counter_reg_n_0_[13]\,
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\wait_counter0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_inferred__0/i__carry__2_n_0\,
      CO(3) => \wait_counter0_inferred__0/i__carry__3_n_0\,
      CO(2) => \wait_counter0_inferred__0/i__carry__3_n_1\,
      CO(1) => \wait_counter0_inferred__0/i__carry__3_n_2\,
      CO(0) => \wait_counter0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \wait_counter_reg_n_0_[20]\,
      DI(2) => \wait_counter_reg_n_0_[19]\,
      DI(1) => \wait_counter_reg_n_0_[18]\,
      DI(0) => \wait_counter_reg_n_0_[17]\,
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\wait_counter0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_counter0_inferred__0/i__carry__3_n_0\,
      CO(3 downto 2) => \NLW_wait_counter0_inferred__0/i__carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wait_counter0_inferred__0/i__carry__4_n_2\,
      CO(0) => \wait_counter0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \wait_counter_reg_n_0_[22]\,
      DI(0) => \wait_counter_reg_n_0_[21]\,
      O(3) => \NLW_wait_counter0_inferred__0/i__carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(23 downto 21),
      S(3) => '0',
      S(2) => \i__carry__4_i_1_n_0\,
      S(1) => \i__carry__4_i_2_n_0\,
      S(0) => \i__carry__4_i_3_n_0\
    );
\wait_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3A30000B3B33333"
    )
        port map (
      I0 => I_DATA(0),
      I1 => \wait_counter_reg_n_0_[0]\,
      I2 => \wait_counter[22]_i_2_n_0\,
      I3 => \wait_counter[0]_i_2_n_0\,
      I4 => O_CLEAR_REQ_i_2_n_0,
      I5 => \wait_counter[22]_i_4_n_0\,
      O => wait_counter(0)
    );
\wait_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \wait_counter[22]_i_6_n_0\,
      I1 => \wait_counter[0]_i_3_n_0\,
      I2 => \wait_counter[22]_i_8_n_0\,
      I3 => \wait_counter[0]_i_4_n_0\,
      I4 => \wait_counter[0]_i_5_n_0\,
      I5 => \wait_counter[22]_i_5_n_0\,
      O => \wait_counter[0]_i_2_n_0\
    );
\wait_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I_DATA(1),
      I1 => I_DATA(2),
      O => \wait_counter[0]_i_3_n_0\
    );
\wait_counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(11),
      I1 => I_DATA(10),
      I2 => I_DATA(8),
      I3 => I_DATA(7),
      O => \wait_counter[0]_i_4_n_0\
    );
\wait_counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => I_DATA(9),
      I1 => I_DATA(10),
      I2 => I_DATA(11),
      I3 => I_DATA(21),
      I4 => I_DATA(22),
      I5 => I_DATA(23),
      O => \wait_counter[0]_i_5_n_0\
    );
\wait_counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AFFFF88008800"
    )
        port map (
      I0 => O_CLEAR_REQ_i_2_n_0,
      I1 => I_DATA(27),
      I2 => \wait_counter[10]_i_2_n_0\,
      I3 => \wait_counter[10]_i_3_n_0\,
      I4 => \wait_counter[22]_i_4_n_0\,
      I5 => data0(10),
      O => wait_counter(10)
    );
\wait_counter[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \wait_counter[23]_i_7_n_0\,
      I1 => I_DATA(24),
      I2 => I_DATA(25),
      I3 => I_DATA(26),
      O => \wait_counter[10]_i_2_n_0\
    );
\wait_counter[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => I_DATA(26),
      I1 => I_DATA(25),
      I2 => I_DATA(24),
      I3 => I_DATA(10),
      I4 => I_DATA(27),
      O => \wait_counter[10]_i_3_n_0\
    );
\wait_counter[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(11),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(11),
      O => wait_counter(11)
    );
\wait_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(12),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(12),
      O => wait_counter(12)
    );
\wait_counter[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(13),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(13),
      O => wait_counter(13)
    );
\wait_counter[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(14),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(14),
      O => wait_counter(14)
    );
\wait_counter[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(15),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(15),
      O => wait_counter(15)
    );
\wait_counter[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(16),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(16),
      O => wait_counter(16)
    );
\wait_counter[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(17),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(17),
      O => wait_counter(17)
    );
\wait_counter[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(18),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(18),
      O => wait_counter(18)
    );
\wait_counter[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(19),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(19),
      O => wait_counter(19)
    );
\wait_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(1),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(1),
      O => wait_counter(1)
    );
\wait_counter[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(20),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(20),
      O => wait_counter(20)
    );
\wait_counter[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(21),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(21),
      O => wait_counter(21)
    );
\wait_counter[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC4FFFF88808880"
    )
        port map (
      I0 => \wait_counter[22]_i_2_n_0\,
      I1 => O_CLEAR_REQ_i_2_n_0,
      I2 => \wait_counter[22]_i_3_n_0\,
      I3 => I_DATA(22),
      I4 => \wait_counter[22]_i_4_n_0\,
      I5 => data0(22),
      O => wait_counter(22)
    );
\wait_counter[22]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(17),
      I1 => I_DATA(13),
      I2 => I_DATA(16),
      I3 => I_DATA(14),
      O => \wait_counter[22]_i_10_n_0\
    );
\wait_counter[22]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => I_DATA(13),
      I1 => I_DATA(12),
      I2 => I_DATA(16),
      I3 => I_DATA(15),
      O => \wait_counter[22]_i_11_n_0\
    );
\wait_counter[22]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => I_DATA(7),
      I1 => I_DATA(6),
      I2 => I_DATA(19),
      I3 => I_DATA(18),
      O => \wait_counter[22]_i_12_n_0\
    );
\wait_counter[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => I_DATA(25),
      I1 => I_DATA(24),
      I2 => I_DATA(27),
      I3 => I_DATA(26),
      O => \wait_counter[22]_i_2_n_0\
    );
\wait_counter[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \wait_counter[22]_i_5_n_0\,
      I1 => \wait_counter[22]_i_6_n_0\,
      I2 => \wait_counter[22]_i_7_n_0\,
      I3 => \wait_counter[22]_i_8_n_0\,
      I4 => data0(22),
      I5 => \wait_counter[22]_i_9_n_0\,
      O => \wait_counter[22]_i_3_n_0\
    );
\wait_counter[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \wait_counter[22]_i_4_n_0\
    );
\wait_counter[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I_DATA(3),
      I1 => I_DATA(5),
      I2 => I_DATA(4),
      I3 => \wait_counter[22]_i_10_n_0\,
      I4 => I_DATA(20),
      I5 => I_DATA(19),
      O => \wait_counter[22]_i_5_n_0\
    );
\wait_counter[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => I_DATA(14),
      I1 => I_DATA(20),
      I2 => I_DATA(8),
      I3 => I_DATA(17),
      I4 => \wait_counter[22]_i_11_n_0\,
      I5 => \wait_counter[22]_i_12_n_0\,
      O => \wait_counter[22]_i_6_n_0\
    );
\wait_counter[22]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \wait_counter[0]_i_4_n_0\,
      I1 => I_DATA(0),
      I2 => I_DATA(9),
      I3 => I_DATA(1),
      I4 => I_DATA(2),
      O => \wait_counter[22]_i_7_n_0\
    );
\wait_counter[22]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => I_DATA(23),
      I1 => I_DATA(22),
      O => \wait_counter[22]_i_8_n_0\
    );
\wait_counter[22]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => I_DATA(23),
      I1 => I_DATA(22),
      I2 => I_DATA(21),
      O => \wait_counter[22]_i_9_n_0\
    );
\wait_counter[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044404440444FFFF"
    )
        port map (
      I0 => \wait_counter[23]_i_3_n_0\,
      I1 => state(2),
      I2 => \wait_counter[23]_i_4_n_0\,
      I3 => \wait_counter[23]_i_5_n_0\,
      I4 => \wait_counter[23]_i_6_n_0\,
      I5 => \wait_counter[23]_i_7_n_0\,
      O => wait_counter_0
    );
\wait_counter[23]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(13),
      I1 => I_DATA(12),
      I2 => I_DATA(15),
      I3 => I_DATA(14),
      O => \wait_counter[23]_i_10_n_0\
    );
\wait_counter[23]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(1),
      I1 => I_DATA(0),
      I2 => I_DATA(3),
      I3 => I_DATA(2),
      O => \wait_counter[23]_i_11_n_0\
    );
\wait_counter[23]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(5),
      I1 => I_DATA(4),
      I2 => I_DATA(7),
      I3 => I_DATA(6),
      O => \wait_counter[23]_i_12_n_0\
    );
\wait_counter[23]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(22),
      I1 => I_DATA(23),
      I2 => I_DATA(21),
      I3 => I_DATA(20),
      O => \wait_counter[23]_i_13_n_0\
    );
\wait_counter[23]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(17),
      I1 => I_DATA(16),
      I2 => I_DATA(19),
      I3 => I_DATA(18),
      O => \wait_counter[23]_i_14_n_0\
    );
\wait_counter[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(23),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(23),
      O => wait_counter(23)
    );
\wait_counter[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \wait_counter[23]_i_3_n_0\
    );
\wait_counter[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \O_ADDR[31]_i_12_n_0\,
      I1 => \O_ADDR[31]_i_13_n_0\,
      I2 => \wait_counter_reg_n_0_[3]\,
      I3 => \wait_counter_reg_n_0_[7]\,
      I4 => \wait_counter_reg_n_0_[2]\,
      O => \wait_counter[23]_i_4_n_0\
    );
\wait_counter[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \O_ADDR[31]_i_10_n_0\,
      I1 => \wait_counter_reg_n_0_[0]\,
      I2 => \wait_counter_reg_n_0_[4]\,
      I3 => \wait_counter_reg_n_0_[1]\,
      I4 => \wait_counter_reg_n_0_[5]\,
      I5 => \wait_counter_reg_n_0_[16]\,
      O => \wait_counter[23]_i_5_n_0\
    );
\wait_counter[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => O_CLEAR_REQ_i_2_n_0,
      I1 => I_DATA(26),
      I2 => I_DATA(27),
      I3 => I_DATA(24),
      I4 => I_DATA(25),
      O => \wait_counter[23]_i_6_n_0\
    );
\wait_counter[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wait_counter[23]_i_9_n_0\,
      I1 => \wait_counter[23]_i_10_n_0\,
      I2 => \wait_counter[23]_i_11_n_0\,
      I3 => \wait_counter[23]_i_12_n_0\,
      I4 => \wait_counter[23]_i_13_n_0\,
      I5 => \wait_counter[23]_i_14_n_0\,
      O => \wait_counter[23]_i_7_n_0\
    );
\wait_counter[23]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F200F000"
    )
        port map (
      I0 => \wait_counter[22]_i_2_n_0\,
      I1 => \wait_counter[23]_i_7_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => \wait_counter[23]_i_8_n_0\
    );
\wait_counter[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_DATA(11),
      I1 => I_DATA(10),
      I2 => I_DATA(9),
      I3 => I_DATA(8),
      O => \wait_counter[23]_i_9_n_0\
    );
\wait_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(2),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(2),
      O => wait_counter(2)
    );
\wait_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(3),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(3),
      O => wait_counter(3)
    );
\wait_counter[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(4),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(4),
      O => wait_counter(4)
    );
\wait_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(5),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(5),
      O => wait_counter(5)
    );
\wait_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(6),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(6),
      O => wait_counter(6)
    );
\wait_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(7),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(7),
      O => wait_counter(7)
    );
\wait_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wait_counter[23]_i_6_n_0\,
      I1 => I_DATA(8),
      I2 => \wait_counter[23]_i_8_n_0\,
      I3 => data0(8),
      O => wait_counter(8)
    );
\wait_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AFFFF88008800"
    )
        port map (
      I0 => O_CLEAR_REQ_i_2_n_0,
      I1 => I_DATA(27),
      I2 => \wait_counter[10]_i_2_n_0\,
      I3 => \wait_counter[9]_i_2_n_0\,
      I4 => \wait_counter[22]_i_4_n_0\,
      I5 => data0(9),
      O => wait_counter(9)
    );
\wait_counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => I_DATA(26),
      I1 => I_DATA(25),
      I2 => I_DATA(24),
      I3 => I_DATA(9),
      I4 => I_DATA(27),
      O => \wait_counter[9]_i_2_n_0\
    );
\wait_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(0),
      Q => \wait_counter_reg_n_0_[0]\
    );
\wait_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(10),
      Q => \wait_counter_reg_n_0_[10]\
    );
\wait_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(11),
      Q => \wait_counter_reg_n_0_[11]\
    );
\wait_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(12),
      Q => \wait_counter_reg_n_0_[12]\
    );
\wait_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(13),
      Q => \wait_counter_reg_n_0_[13]\
    );
\wait_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(14),
      Q => \wait_counter_reg_n_0_[14]\
    );
\wait_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(15),
      Q => \wait_counter_reg_n_0_[15]\
    );
\wait_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(16),
      Q => \wait_counter_reg_n_0_[16]\
    );
\wait_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(17),
      Q => \wait_counter_reg_n_0_[17]\
    );
\wait_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(18),
      Q => \wait_counter_reg_n_0_[18]\
    );
\wait_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(19),
      Q => \wait_counter_reg_n_0_[19]\
    );
\wait_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(1),
      Q => \wait_counter_reg_n_0_[1]\
    );
\wait_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(20),
      Q => \wait_counter_reg_n_0_[20]\
    );
\wait_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(21),
      Q => \wait_counter_reg_n_0_[21]\
    );
\wait_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(22),
      Q => \wait_counter_reg_n_0_[22]\
    );
\wait_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(23),
      Q => \wait_counter_reg_n_0_[23]\
    );
\wait_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(2),
      Q => \wait_counter_reg_n_0_[2]\
    );
\wait_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(3),
      Q => \wait_counter_reg_n_0_[3]\
    );
\wait_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(4),
      Q => \wait_counter_reg_n_0_[4]\
    );
\wait_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(5),
      Q => \wait_counter_reg_n_0_[5]\
    );
\wait_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(6),
      Q => \wait_counter_reg_n_0_[6]\
    );
\wait_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(7),
      Q => \wait_counter_reg_n_0_[7]\
    );
\wait_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(8),
      Q => \wait_counter_reg_n_0_[8]\
    );
\wait_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => wait_counter_0,
      CLR => \O_ADDR[31]_i_3_n_0\,
      D => wait_counter(9),
      Q => \wait_counter_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_BRAM_reader_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    O_ADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I_DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    O_ENABLE : out STD_LOGIC;
    O_WE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I_START_MACRO : in STD_LOGIC;
    I_CONFIGURE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O_SPI_TRX : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O_START_SPI : out STD_LOGIC;
    I_SPI_DONE : in STD_LOGIC;
    O_CLEAR_REQ : out STD_LOGIC;
    O_LDAC_REQ : out STD_LOGIC;
    O_RESET_REQ : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_BRAM_reader_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_BRAM_reader_0_0 : entity is "dac_bd_1_BRAM_reader_0_0,BRAM_reader,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_BRAM_reader_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_BRAM_reader_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_BRAM_reader_0_0 : entity is "BRAM_reader,Vivado 2023.1";
end dac_bd_1_BRAM_reader_0_0;

architecture STRUCTURE of dac_bd_1_BRAM_reader_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_addr\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^o_spi_trx\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  O_ADDR(31 downto 2) <= \^o_addr\(31 downto 2);
  O_ADDR(1) <= \<const0>\;
  O_ADDR(0) <= \<const0>\;
  O_SPI_TRX(31) <= \<const0>\;
  O_SPI_TRX(30) <= \<const0>\;
  O_SPI_TRX(29) <= \<const0>\;
  O_SPI_TRX(28) <= \<const0>\;
  O_SPI_TRX(27) <= \<const0>\;
  O_SPI_TRX(26) <= \<const0>\;
  O_SPI_TRX(25) <= \<const0>\;
  O_SPI_TRX(24) <= \<const0>\;
  O_SPI_TRX(23 downto 0) <= \^o_spi_trx\(23 downto 0);
  O_WE(3) <= \<const0>\;
  O_WE(2) <= \<const0>\;
  O_WE(1) <= \<const0>\;
  O_WE(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.dac_bd_1_BRAM_reader_0_0_BRAM_reader
     port map (
      I_CONFIGURE(2 downto 0) => I_CONFIGURE(2 downto 0),
      I_DATA(27 downto 24) => I_DATA(31 downto 28),
      I_DATA(23 downto 0) => I_DATA(23 downto 0),
      I_SPI_DONE => I_SPI_DONE,
      I_START_MACRO => I_START_MACRO,
      O_ADDR(29 downto 0) => \^o_addr\(31 downto 2),
      O_CLEAR_REQ => O_CLEAR_REQ,
      O_ENABLE => O_ENABLE,
      O_LDAC_REQ => O_LDAC_REQ,
      O_RESET_REQ => O_RESET_REQ,
      O_SPI_TRX(23 downto 0) => \^o_spi_trx\(23 downto 0),
      O_START_SPI => O_START_SPI,
      clk => clk,
      rst_n => rst_n
    );
end STRUCTURE;
