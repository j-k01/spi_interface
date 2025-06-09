-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Jun  6 21:56:03 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_spi_interface_0_0/dac_bd_1_spi_interface_0_0_sim_netlist.vhdl
-- Design      : dac_bd_1_spi_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_spi_interface_0_0_spi_interface is
  port (
    ss_n : out STD_LOGIC;
    busy : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    cs_hold_time : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdi_sample_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cycles_per_bit : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bits_per_transaction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclk_high_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclk_low_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    cs_to_trx_delay : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    miso : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dac_bd_1_spi_interface_0_0_spi_interface : entity is "spi_interface";
end dac_bd_1_spi_interface_0_0_spi_interface;

architecture STRUCTURE of dac_bd_1_spi_interface_0_0_spi_interface is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal bit_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bit_counter0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \bit_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \bit_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \bit_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \bit_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \bit_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \bit_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \bit_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \bit_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \bit_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \bit_counter0_carry__2_n_3\ : STD_LOGIC;
  signal bit_counter0_carry_n_0 : STD_LOGIC;
  signal bit_counter0_carry_n_1 : STD_LOGIC;
  signal bit_counter0_carry_n_2 : STD_LOGIC;
  signal bit_counter0_carry_n_3 : STD_LOGIC;
  signal bit_counter_3 : STD_LOGIC;
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal bits_per_transaction_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal cpol : STD_LOGIC;
  signal cs_hold_time_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cs_hold_time_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal cs_to_trx_delay_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cycle_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cycle_counter0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \cycle_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \cycle_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \cycle_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \cycle_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \cycle_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \cycle_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \cycle_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \cycle_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \cycle_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \cycle_counter0_carry__2_n_3\ : STD_LOGIC;
  signal cycle_counter0_carry_n_0 : STD_LOGIC;
  signal cycle_counter0_carry_n_1 : STD_LOGIC;
  signal cycle_counter0_carry_n_2 : STD_LOGIC;
  signal cycle_counter0_carry_n_3 : STD_LOGIC;
  signal \cycle_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \cycle_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal cycles_per_bit_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_7_n_0\ : STD_LOGIC;
  signal delay_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \delay_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \delay_counter0_carry__2_n_3\ : STD_LOGIC;
  signal delay_counter0_carry_n_0 : STD_LOGIC;
  signal delay_counter0_carry_n_1 : STD_LOGIC;
  signal delay_counter0_carry_n_2 : STD_LOGIC;
  signal delay_counter0_carry_n_3 : STD_LOGIC;
  signal delay_counter_0 : STD_LOGIC;
  signal \delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal in15 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rx_shift_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_shift_reg0 : STD_LOGIC;
  signal \rx_shift_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rx_shift_reg0_carry__0_n_3\ : STD_LOGIC;
  signal rx_shift_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal rx_shift_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal rx_shift_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal rx_shift_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal rx_shift_reg0_carry_n_0 : STD_LOGIC;
  signal rx_shift_reg0_carry_n_1 : STD_LOGIC;
  signal rx_shift_reg0_carry_n_2 : STD_LOGIC;
  signal rx_shift_reg0_carry_n_3 : STD_LOGIC;
  signal rx_shift_reg_2 : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal sclk0 : STD_LOGIC;
  signal \sclk0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sclk0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sclk0_carry__0_n_3\ : STD_LOGIC;
  signal sclk0_carry_i_1_n_0 : STD_LOGIC;
  signal sclk0_carry_i_2_n_0 : STD_LOGIC;
  signal sclk0_carry_i_3_n_0 : STD_LOGIC;
  signal sclk0_carry_i_4_n_0 : STD_LOGIC;
  signal sclk0_carry_n_0 : STD_LOGIC;
  signal sclk0_carry_n_1 : STD_LOGIC;
  signal sclk0_carry_n_2 : STD_LOGIC;
  signal sclk0_carry_n_3 : STD_LOGIC;
  signal sclk1 : STD_LOGIC;
  signal \sclk1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sclk1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sclk1_carry__0_n_3\ : STD_LOGIC;
  signal sclk1_carry_i_1_n_0 : STD_LOGIC;
  signal sclk1_carry_i_2_n_0 : STD_LOGIC;
  signal sclk1_carry_i_3_n_0 : STD_LOGIC;
  signal sclk1_carry_i_4_n_0 : STD_LOGIC;
  signal sclk1_carry_n_0 : STD_LOGIC;
  signal sclk1_carry_n_1 : STD_LOGIC;
  signal sclk1_carry_n_2 : STD_LOGIC;
  signal sclk1_carry_n_3 : STD_LOGIC;
  signal sclk_high_offset_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal sclk_i_2_n_0 : STD_LOGIC;
  signal sclk_i_3_n_0 : STD_LOGIC;
  signal sclk_low_offset_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sdi_sample_offset_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ss_n\ : STD_LOGIC;
  signal ss_n_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state0_carry__0_n_0\ : STD_LOGIC;
  signal \state0_carry__0_n_1\ : STD_LOGIC;
  signal \state0_carry__0_n_2\ : STD_LOGIC;
  signal \state0_carry__0_n_3\ : STD_LOGIC;
  signal \state0_carry__1_n_1\ : STD_LOGIC;
  signal \state0_carry__1_n_2\ : STD_LOGIC;
  signal \state0_carry__1_n_3\ : STD_LOGIC;
  signal state0_carry_i_1_n_0 : STD_LOGIC;
  signal state0_carry_i_2_n_0 : STD_LOGIC;
  signal state0_carry_i_3_n_0 : STD_LOGIC;
  signal state0_carry_i_4_n_0 : STD_LOGIC;
  signal state0_carry_n_0 : STD_LOGIC;
  signal state0_carry_n_1 : STD_LOGIC;
  signal state0_carry_n_2 : STD_LOGIC;
  signal state0_carry_n_3 : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal state10_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state12_out : STD_LOGIC;
  signal state14_out : STD_LOGIC;
  signal \state1__10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1__10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1__10_carry__0_n_0\ : STD_LOGIC;
  signal \state1__10_carry__0_n_1\ : STD_LOGIC;
  signal \state1__10_carry__0_n_2\ : STD_LOGIC;
  signal \state1__10_carry__0_n_3\ : STD_LOGIC;
  signal \state1__10_carry__1_n_2\ : STD_LOGIC;
  signal \state1__10_carry__1_n_3\ : STD_LOGIC;
  signal \state1__10_carry_i_1_n_0\ : STD_LOGIC;
  signal \state1__10_carry_i_2_n_0\ : STD_LOGIC;
  signal \state1__10_carry_i_3_n_0\ : STD_LOGIC;
  signal \state1__10_carry_i_4_n_0\ : STD_LOGIC;
  signal \state1__10_carry_n_0\ : STD_LOGIC;
  signal \state1__10_carry_n_1\ : STD_LOGIC;
  signal \state1__10_carry_n_2\ : STD_LOGIC;
  signal \state1__10_carry_n_3\ : STD_LOGIC;
  signal \state1__21_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1__21_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1__21_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state1__21_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state1__21_carry__0_n_0\ : STD_LOGIC;
  signal \state1__21_carry__0_n_1\ : STD_LOGIC;
  signal \state1__21_carry__0_n_2\ : STD_LOGIC;
  signal \state1__21_carry__0_n_3\ : STD_LOGIC;
  signal \state1__21_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state1__21_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state1__21_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state1__21_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state1__21_carry__1_n_0\ : STD_LOGIC;
  signal \state1__21_carry__1_n_1\ : STD_LOGIC;
  signal \state1__21_carry__1_n_2\ : STD_LOGIC;
  signal \state1__21_carry__1_n_3\ : STD_LOGIC;
  signal \state1__21_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state1__21_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state1__21_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state1__21_carry__2_n_0\ : STD_LOGIC;
  signal \state1__21_carry__2_n_2\ : STD_LOGIC;
  signal \state1__21_carry__2_n_3\ : STD_LOGIC;
  signal \state1__21_carry_i_1_n_0\ : STD_LOGIC;
  signal \state1__21_carry_i_2_n_0\ : STD_LOGIC;
  signal \state1__21_carry_i_3_n_0\ : STD_LOGIC;
  signal \state1__21_carry_i_4_n_0\ : STD_LOGIC;
  signal \state1__21_carry_n_0\ : STD_LOGIC;
  signal \state1__21_carry_n_1\ : STD_LOGIC;
  signal \state1__21_carry_n_2\ : STD_LOGIC;
  signal \state1__21_carry_n_3\ : STD_LOGIC;
  signal \state1__51_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1__51_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1__51_carry__0_n_0\ : STD_LOGIC;
  signal \state1__51_carry__0_n_1\ : STD_LOGIC;
  signal \state1__51_carry__0_n_2\ : STD_LOGIC;
  signal \state1__51_carry__0_n_3\ : STD_LOGIC;
  signal \state1__51_carry__1_n_2\ : STD_LOGIC;
  signal \state1__51_carry__1_n_3\ : STD_LOGIC;
  signal \state1__51_carry_i_1_n_0\ : STD_LOGIC;
  signal \state1__51_carry_i_2_n_0\ : STD_LOGIC;
  signal \state1__51_carry_i_3_n_0\ : STD_LOGIC;
  signal \state1__51_carry_i_4_n_0\ : STD_LOGIC;
  signal \state1__51_carry_n_0\ : STD_LOGIC;
  signal \state1__51_carry_n_1\ : STD_LOGIC;
  signal \state1__51_carry_n_2\ : STD_LOGIC;
  signal \state1__51_carry_n_3\ : STD_LOGIC;
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_1\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal \state1_carry__1_n_2\ : STD_LOGIC;
  signal \state1_carry__1_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal state2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal state21_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal state23_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \state2__29_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state2__29_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state2__29_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state2__29_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state2__29_carry__0_n_0\ : STD_LOGIC;
  signal \state2__29_carry__0_n_1\ : STD_LOGIC;
  signal \state2__29_carry__0_n_2\ : STD_LOGIC;
  signal \state2__29_carry__0_n_3\ : STD_LOGIC;
  signal \state2__29_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state2__29_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state2__29_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state2__29_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state2__29_carry__1_n_0\ : STD_LOGIC;
  signal \state2__29_carry__1_n_1\ : STD_LOGIC;
  signal \state2__29_carry__1_n_2\ : STD_LOGIC;
  signal \state2__29_carry__1_n_3\ : STD_LOGIC;
  signal \state2__29_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state2__29_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state2__29_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state2__29_carry__2_n_0\ : STD_LOGIC;
  signal \state2__29_carry__2_n_2\ : STD_LOGIC;
  signal \state2__29_carry__2_n_3\ : STD_LOGIC;
  signal \state2__29_carry_i_1_n_0\ : STD_LOGIC;
  signal \state2__29_carry_i_2_n_0\ : STD_LOGIC;
  signal \state2__29_carry_i_3_n_0\ : STD_LOGIC;
  signal \state2__29_carry_i_4_n_0\ : STD_LOGIC;
  signal \state2__29_carry_n_0\ : STD_LOGIC;
  signal \state2__29_carry_n_1\ : STD_LOGIC;
  signal \state2__29_carry_n_2\ : STD_LOGIC;
  signal \state2__29_carry_n_3\ : STD_LOGIC;
  signal \state2__59_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state2__59_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state2__59_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state2__59_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state2__59_carry__0_n_0\ : STD_LOGIC;
  signal \state2__59_carry__0_n_1\ : STD_LOGIC;
  signal \state2__59_carry__0_n_2\ : STD_LOGIC;
  signal \state2__59_carry__0_n_3\ : STD_LOGIC;
  signal \state2__59_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state2__59_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state2__59_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state2__59_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state2__59_carry__1_n_0\ : STD_LOGIC;
  signal \state2__59_carry__1_n_1\ : STD_LOGIC;
  signal \state2__59_carry__1_n_2\ : STD_LOGIC;
  signal \state2__59_carry__1_n_3\ : STD_LOGIC;
  signal \state2__59_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state2__59_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state2__59_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state2__59_carry__2_n_0\ : STD_LOGIC;
  signal \state2__59_carry__2_n_2\ : STD_LOGIC;
  signal \state2__59_carry__2_n_3\ : STD_LOGIC;
  signal \state2__59_carry_i_1_n_0\ : STD_LOGIC;
  signal \state2__59_carry_i_2_n_0\ : STD_LOGIC;
  signal \state2__59_carry_i_3_n_0\ : STD_LOGIC;
  signal \state2__59_carry_i_4_n_0\ : STD_LOGIC;
  signal \state2__59_carry_n_0\ : STD_LOGIC;
  signal \state2__59_carry_n_1\ : STD_LOGIC;
  signal \state2__59_carry_n_2\ : STD_LOGIC;
  signal \state2__59_carry_n_3\ : STD_LOGIC;
  signal \state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state2_carry__0_n_0\ : STD_LOGIC;
  signal \state2_carry__0_n_1\ : STD_LOGIC;
  signal \state2_carry__0_n_2\ : STD_LOGIC;
  signal \state2_carry__0_n_3\ : STD_LOGIC;
  signal \state2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state2_carry__1_n_0\ : STD_LOGIC;
  signal \state2_carry__1_n_1\ : STD_LOGIC;
  signal \state2_carry__1_n_2\ : STD_LOGIC;
  signal \state2_carry__1_n_3\ : STD_LOGIC;
  signal \state2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state2_carry__2_n_0\ : STD_LOGIC;
  signal \state2_carry__2_n_2\ : STD_LOGIC;
  signal \state2_carry__2_n_3\ : STD_LOGIC;
  signal state2_carry_i_1_n_0 : STD_LOGIC;
  signal state2_carry_i_2_n_0 : STD_LOGIC;
  signal state2_carry_i_3_n_0 : STD_LOGIC;
  signal state2_carry_i_4_n_0 : STD_LOGIC;
  signal state2_carry_n_0 : STD_LOGIC;
  signal state2_carry_n_1 : STD_LOGIC;
  signal state2_carry_n_2 : STD_LOGIC;
  signal state2_carry_n_3 : STD_LOGIC;
  signal tx_shift_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tx_shift_reg1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \tx_shift_reg1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_n_1\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_n_2\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__0_n_3\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_n_1\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_n_2\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__1_n_3\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__2_n_2\ : STD_LOGIC;
  signal \tx_shift_reg1_carry__2_n_3\ : STD_LOGIC;
  signal tx_shift_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal tx_shift_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal tx_shift_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal tx_shift_reg1_carry_i_5_n_0 : STD_LOGIC;
  signal tx_shift_reg1_carry_n_0 : STD_LOGIC;
  signal tx_shift_reg1_carry_n_1 : STD_LOGIC;
  signal tx_shift_reg1_carry_n_2 : STD_LOGIC;
  signal tx_shift_reg1_carry_n_3 : STD_LOGIC;
  signal \tx_shift_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_16_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal tx_shift_reg_1 : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_bit_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bit_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cycle_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cycle_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_delay_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delay_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rx_shift_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_shift_reg0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_shift_reg0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sclk0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sclk0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sclk0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sclk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sclk1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sclk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1__10_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1__10_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1__10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1__10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1__21_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_state1__21_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1__51_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1__51_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1__51_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1__51_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state2__29_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_state2__29_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state2__59_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_state2__59_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_state2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tx_shift_reg1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_tx_shift_reg1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,LATCH_CONFIG:001,CS_SETUP:010,ACTIVE:011,CS_HOLD:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,LATCH_CONFIG:001,CS_SETUP:010,ACTIVE:011,CS_HOLD:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,LATCH_CONFIG:001,CS_SETUP:010,ACTIVE:011,CS_HOLD:100,";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bit_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \bit_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bit_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \bit_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_counter[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bit_counter[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_counter[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_counter[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_counter[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_counter[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bit_counter[15]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bit_counter[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bit_counter[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bit_counter[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bit_counter[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_counter[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_counter[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bit_counter[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bit_counter[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bit_counter[9]_i_1\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD of cycle_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cycle_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \cycle_counter[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cycle_counter[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cycle_counter[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cycle_counter[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cycle_counter[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cycle_counter[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cycle_counter[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cycle_counter[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cycle_counter[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cycle_counter[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cycle_counter[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cycle_counter[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cycle_counter[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cycle_counter[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cycle_counter[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cycle_counter[9]_i_1\ : label is "soft_lutpair14";
  attribute ADDER_THRESHOLD of delay_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \rx_shift_reg[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_shift_reg[10]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rx_shift_reg[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rx_shift_reg[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rx_shift_reg[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rx_shift_reg[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rx_shift_reg[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rx_shift_reg[16]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rx_shift_reg[17]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rx_shift_reg[18]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rx_shift_reg[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rx_shift_reg[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_shift_reg[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rx_shift_reg[21]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rx_shift_reg[22]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rx_shift_reg[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rx_shift_reg[24]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rx_shift_reg[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rx_shift_reg[26]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rx_shift_reg[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rx_shift_reg[28]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rx_shift_reg[29]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rx_shift_reg[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_shift_reg[30]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rx_shift_reg[31]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rx_shift_reg[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_shift_reg[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_shift_reg[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_shift_reg[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_shift_reg[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_shift_reg[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rx_shift_reg[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tx_shift_reg[10]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_shift_reg[11]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_shift_reg[12]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_shift_reg[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_shift_reg[16]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_shift_reg[17]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_shift_reg[18]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_shift_reg[19]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_shift_reg[20]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_shift_reg[21]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tx_shift_reg[22]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_shift_reg[23]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_shift_reg[24]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_shift_reg[25]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_shift_reg[26]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_shift_reg[27]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_shift_reg[28]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_shift_reg[29]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tx_shift_reg[30]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_shift_reg[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_shift_reg[8]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_shift_reg[9]_i_2\ : label is "soft_lutpair9";
begin
  busy <= \^busy\;
  mosi <= \^mosi\;
  sclk <= \^sclk\;
  ss_n <= \^ss_n\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00FF400000FF4"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => state(2),
      I5 => \data_out[31]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C83CCC00003CCC"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => state(2),
      I5 => \data_out[31]_i_3_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FBC0000000C000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => state(2),
      I5 => \data_out[31]_i_3_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABB"
    )
        port map (
      I0 => state(2),
      I1 => state14_out,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088FF000000F0"
    )
        port map (
      I0 => \state0_carry__1_n_1\,
      I1 => state12_out,
      I2 => start,
      I3 => state(1),
      I4 => state(2),
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cs_to_trx_delay_reg(4),
      I1 => cs_to_trx_delay_reg(10),
      I2 => cs_to_trx_delay_reg(3),
      I3 => cs_to_trx_delay_reg(15),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cs_to_trx_delay_reg(2),
      I1 => cs_to_trx_delay_reg(11),
      I2 => cs_to_trx_delay_reg(7),
      I3 => cs_to_trx_delay_reg(12),
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_to_trx_delay_reg(9),
      I1 => cs_to_trx_delay_reg(1),
      I2 => cs_to_trx_delay_reg(13),
      I3 => cs_to_trx_delay_reg(6),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_to_trx_delay_reg(14),
      I1 => cs_to_trx_delay_reg(5),
      I2 => cs_to_trx_delay_reg(0),
      I3 => cs_to_trx_delay_reg(8),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
bit_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bit_counter0_carry_n_0,
      CO(2) => bit_counter0_carry_n_1,
      CO(1) => bit_counter0_carry_n_2,
      CO(0) => bit_counter0_carry_n_3,
      CYINIT => \bit_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(4 downto 1),
      S(3) => \bit_counter_reg_n_0_[4]\,
      S(2) => \bit_counter_reg_n_0_[3]\,
      S(1) => \bit_counter_reg_n_0_[2]\,
      S(0) => \bit_counter_reg_n_0_[1]\
    );
\bit_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bit_counter0_carry_n_0,
      CO(3) => \bit_counter0_carry__0_n_0\,
      CO(2) => \bit_counter0_carry__0_n_1\,
      CO(1) => \bit_counter0_carry__0_n_2\,
      CO(0) => \bit_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(8 downto 5),
      S(3) => \bit_counter_reg_n_0_[8]\,
      S(2) => \bit_counter_reg_n_0_[7]\,
      S(1) => \bit_counter_reg_n_0_[6]\,
      S(0) => \bit_counter_reg_n_0_[5]\
    );
\bit_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter0_carry__0_n_0\,
      CO(3) => \bit_counter0_carry__1_n_0\,
      CO(2) => \bit_counter0_carry__1_n_1\,
      CO(1) => \bit_counter0_carry__1_n_2\,
      CO(0) => \bit_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bit_counter0(12 downto 9),
      S(3) => \bit_counter_reg_n_0_[12]\,
      S(2) => \bit_counter_reg_n_0_[11]\,
      S(1) => \bit_counter_reg_n_0_[10]\,
      S(0) => \bit_counter_reg_n_0_[9]\
    );
\bit_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_counter0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_bit_counter0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bit_counter0_carry__2_n_2\,
      CO(0) => \bit_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bit_counter0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => bit_counter0(15 downto 13),
      S(3) => '0',
      S(2) => \bit_counter_reg_n_0_[15]\,
      S(1) => \bit_counter_reg_n_0_[14]\,
      S(0) => \bit_counter_reg_n_0_[13]\
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(0)
    );
\bit_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(10),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(10)
    );
\bit_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(11),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(11)
    );
\bit_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(12),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(12)
    );
\bit_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(13),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(13)
    );
\bit_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(14),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(14)
    );
\bit_counter[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2011"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state12_out,
      I3 => state(0),
      O => bit_counter_3
    );
\bit_counter[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(15),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(15)
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(1),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(1)
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(2),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(2)
    );
\bit_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(3),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(3)
    );
\bit_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(4),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(4)
    );
\bit_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(5),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(5)
    );
\bit_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(6),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(6)
    );
\bit_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(7),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(7)
    );
\bit_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(8),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(8)
    );
\bit_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bit_counter0(9),
      I1 => state(1),
      I2 => \state0_carry__1_n_1\,
      O => bit_counter(9)
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(0),
      Q => \bit_counter_reg_n_0_[0]\
    );
\bit_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(10),
      Q => \bit_counter_reg_n_0_[10]\
    );
\bit_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(11),
      Q => \bit_counter_reg_n_0_[11]\
    );
\bit_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(12),
      Q => \bit_counter_reg_n_0_[12]\
    );
\bit_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(13),
      Q => \bit_counter_reg_n_0_[13]\
    );
\bit_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(14),
      Q => \bit_counter_reg_n_0_[14]\
    );
\bit_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(15),
      Q => \bit_counter_reg_n_0_[15]\
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(1),
      Q => \bit_counter_reg_n_0_[1]\
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(2),
      Q => \bit_counter_reg_n_0_[2]\
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(3),
      Q => \bit_counter_reg_n_0_[3]\
    );
\bit_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(4),
      Q => \bit_counter_reg_n_0_[4]\
    );
\bit_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(5),
      Q => \bit_counter_reg_n_0_[5]\
    );
\bit_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(6),
      Q => \bit_counter_reg_n_0_[6]\
    );
\bit_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(7),
      Q => \bit_counter_reg_n_0_[7]\
    );
\bit_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(8),
      Q => \bit_counter_reg_n_0_[8]\
    );
\bit_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => bit_counter_3,
      CLR => \data_out[31]_i_2_n_0\,
      D => bit_counter(9),
      Q => \bit_counter_reg_n_0_[9]\
    );
\bits_per_transaction_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(0),
      Q => bits_per_transaction_reg(0),
      R => '0'
    );
\bits_per_transaction_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(10),
      Q => bits_per_transaction_reg(10),
      R => '0'
    );
\bits_per_transaction_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(11),
      Q => bits_per_transaction_reg(11),
      R => '0'
    );
\bits_per_transaction_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(12),
      Q => bits_per_transaction_reg(12),
      R => '0'
    );
\bits_per_transaction_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(13),
      Q => bits_per_transaction_reg(13),
      R => '0'
    );
\bits_per_transaction_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(14),
      Q => bits_per_transaction_reg(14),
      R => '0'
    );
\bits_per_transaction_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(15),
      Q => bits_per_transaction_reg(15),
      R => '0'
    );
\bits_per_transaction_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(1),
      Q => bits_per_transaction_reg(1),
      R => '0'
    );
\bits_per_transaction_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(2),
      Q => bits_per_transaction_reg(2),
      R => '0'
    );
\bits_per_transaction_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(3),
      Q => bits_per_transaction_reg(3),
      R => '0'
    );
\bits_per_transaction_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(4),
      Q => bits_per_transaction_reg(4),
      R => '0'
    );
\bits_per_transaction_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(5),
      Q => bits_per_transaction_reg(5),
      R => '0'
    );
\bits_per_transaction_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(6),
      Q => bits_per_transaction_reg(6),
      R => '0'
    );
\bits_per_transaction_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(7),
      Q => bits_per_transaction_reg(7),
      R => '0'
    );
\bits_per_transaction_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(8),
      Q => bits_per_transaction_reg(8),
      R => '0'
    );
\bits_per_transaction_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => bits_per_transaction(9),
      Q => bits_per_transaction_reg(9),
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFEE00001100"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \data_out[31]_i_3_n_0\,
      I3 => start,
      I4 => state(2),
      I5 => \^busy\,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => busy_i_1_n_0,
      Q => \^busy\
    );
\cs_hold_time_reg[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^busy\,
      O => \cs_hold_time_reg[15]_i_1_n_0\
    );
\cs_hold_time_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(0),
      Q => cs_hold_time_reg(0),
      R => '0'
    );
\cs_hold_time_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(10),
      Q => cs_hold_time_reg(10),
      R => '0'
    );
\cs_hold_time_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(11),
      Q => cs_hold_time_reg(11),
      R => '0'
    );
\cs_hold_time_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(12),
      Q => cs_hold_time_reg(12),
      R => '0'
    );
\cs_hold_time_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(13),
      Q => cs_hold_time_reg(13),
      R => '0'
    );
\cs_hold_time_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(14),
      Q => cs_hold_time_reg(14),
      R => '0'
    );
\cs_hold_time_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(15),
      Q => cs_hold_time_reg(15),
      R => '0'
    );
\cs_hold_time_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(1),
      Q => cs_hold_time_reg(1),
      R => '0'
    );
\cs_hold_time_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(2),
      Q => cs_hold_time_reg(2),
      R => '0'
    );
\cs_hold_time_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(3),
      Q => cs_hold_time_reg(3),
      R => '0'
    );
\cs_hold_time_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(4),
      Q => cs_hold_time_reg(4),
      R => '0'
    );
\cs_hold_time_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(5),
      Q => cs_hold_time_reg(5),
      R => '0'
    );
\cs_hold_time_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(6),
      Q => cs_hold_time_reg(6),
      R => '0'
    );
\cs_hold_time_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(7),
      Q => cs_hold_time_reg(7),
      R => '0'
    );
\cs_hold_time_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(8),
      Q => cs_hold_time_reg(8),
      R => '0'
    );
\cs_hold_time_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_hold_time(9),
      Q => cs_hold_time_reg(9),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(0),
      Q => cs_to_trx_delay_reg(0),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(10),
      Q => cs_to_trx_delay_reg(10),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(11),
      Q => cs_to_trx_delay_reg(11),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(12),
      Q => cs_to_trx_delay_reg(12),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(13),
      Q => cs_to_trx_delay_reg(13),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(14),
      Q => cs_to_trx_delay_reg(14),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(15),
      Q => cs_to_trx_delay_reg(15),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(1),
      Q => cs_to_trx_delay_reg(1),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(2),
      Q => cs_to_trx_delay_reg(2),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(3),
      Q => cs_to_trx_delay_reg(3),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(4),
      Q => cs_to_trx_delay_reg(4),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(5),
      Q => cs_to_trx_delay_reg(5),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(6),
      Q => cs_to_trx_delay_reg(6),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(7),
      Q => cs_to_trx_delay_reg(7),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(8),
      Q => cs_to_trx_delay_reg(8),
      R => '0'
    );
\cs_to_trx_delay_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cs_to_trx_delay(9),
      Q => cs_to_trx_delay_reg(9),
      R => '0'
    );
cycle_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cycle_counter0_carry_n_0,
      CO(2) => cycle_counter0_carry_n_1,
      CO(1) => cycle_counter0_carry_n_2,
      CO(0) => cycle_counter0_carry_n_3,
      CYINIT => \cycle_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cycle_counter0(4 downto 1),
      S(3) => \cycle_counter_reg_n_0_[4]\,
      S(2) => \cycle_counter_reg_n_0_[3]\,
      S(1) => \cycle_counter_reg_n_0_[2]\,
      S(0) => \cycle_counter_reg_n_0_[1]\
    );
\cycle_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cycle_counter0_carry_n_0,
      CO(3) => \cycle_counter0_carry__0_n_0\,
      CO(2) => \cycle_counter0_carry__0_n_1\,
      CO(1) => \cycle_counter0_carry__0_n_2\,
      CO(0) => \cycle_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cycle_counter0(8 downto 5),
      S(3) => \cycle_counter_reg_n_0_[8]\,
      S(2) => \cycle_counter_reg_n_0_[7]\,
      S(1) => \cycle_counter_reg_n_0_[6]\,
      S(0) => \cycle_counter_reg_n_0_[5]\
    );
\cycle_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter0_carry__0_n_0\,
      CO(3) => \cycle_counter0_carry__1_n_0\,
      CO(2) => \cycle_counter0_carry__1_n_1\,
      CO(1) => \cycle_counter0_carry__1_n_2\,
      CO(0) => \cycle_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cycle_counter0(12 downto 9),
      S(3) => \cycle_counter_reg_n_0_[12]\,
      S(2) => \cycle_counter_reg_n_0_[11]\,
      S(1) => \cycle_counter_reg_n_0_[10]\,
      S(0) => \cycle_counter_reg_n_0_[9]\
    );
\cycle_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_counter0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_cycle_counter0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cycle_counter0_carry__2_n_2\,
      CO(0) => \cycle_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cycle_counter0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => cycle_counter0(15 downto 13),
      S(3) => '0',
      S(2) => \cycle_counter_reg_n_0_[15]\,
      S(1) => \cycle_counter_reg_n_0_[14]\,
      S(0) => \cycle_counter_reg_n_0_[13]\
    );
\cycle_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cycle_counter_reg_n_0_[0]\,
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(0)
    );
\cycle_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(10),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(10)
    );
\cycle_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(11),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(11)
    );
\cycle_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(12),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(12)
    );
\cycle_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(13),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(13)
    );
\cycle_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(14),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(14)
    );
\cycle_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \cycle_counter[15]_i_1_n_0\
    );
\cycle_counter[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(15),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(15)
    );
\cycle_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(1),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(1)
    );
\cycle_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(2),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(2)
    );
\cycle_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(3),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(3)
    );
\cycle_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(4),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(4)
    );
\cycle_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(5),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(5)
    );
\cycle_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(6),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(6)
    );
\cycle_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(7),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(7)
    );
\cycle_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(8),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(8)
    );
\cycle_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cycle_counter0(9),
      I1 => state(1),
      I2 => state12_out,
      O => cycle_counter(9)
    );
\cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(0),
      Q => \cycle_counter_reg_n_0_[0]\
    );
\cycle_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(10),
      Q => \cycle_counter_reg_n_0_[10]\
    );
\cycle_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(11),
      Q => \cycle_counter_reg_n_0_[11]\
    );
\cycle_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(12),
      Q => \cycle_counter_reg_n_0_[12]\
    );
\cycle_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(13),
      Q => \cycle_counter_reg_n_0_[13]\
    );
\cycle_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(14),
      Q => \cycle_counter_reg_n_0_[14]\
    );
\cycle_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(15),
      Q => \cycle_counter_reg_n_0_[15]\
    );
\cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(1),
      Q => \cycle_counter_reg_n_0_[1]\
    );
\cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(2),
      Q => \cycle_counter_reg_n_0_[2]\
    );
\cycle_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(3),
      Q => \cycle_counter_reg_n_0_[3]\
    );
\cycle_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(4),
      Q => \cycle_counter_reg_n_0_[4]\
    );
\cycle_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(5),
      Q => \cycle_counter_reg_n_0_[5]\
    );
\cycle_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(6),
      Q => \cycle_counter_reg_n_0_[6]\
    );
\cycle_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(7),
      Q => \cycle_counter_reg_n_0_[7]\
    );
\cycle_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(8),
      Q => \cycle_counter_reg_n_0_[8]\
    );
\cycle_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cycle_counter[15]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => cycle_counter(9),
      Q => \cycle_counter_reg_n_0_[9]\
    );
\cycles_per_bit_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(0),
      Q => cycles_per_bit_reg(0),
      R => '0'
    );
\cycles_per_bit_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(10),
      Q => cycles_per_bit_reg(10),
      R => '0'
    );
\cycles_per_bit_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(11),
      Q => cycles_per_bit_reg(11),
      R => '0'
    );
\cycles_per_bit_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(12),
      Q => cycles_per_bit_reg(12),
      R => '0'
    );
\cycles_per_bit_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(13),
      Q => cycles_per_bit_reg(13),
      R => '0'
    );
\cycles_per_bit_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(14),
      Q => cycles_per_bit_reg(14),
      R => '0'
    );
\cycles_per_bit_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(15),
      Q => cycles_per_bit_reg(15),
      R => '0'
    );
\cycles_per_bit_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(1),
      Q => cycles_per_bit_reg(1),
      R => '0'
    );
\cycles_per_bit_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(2),
      Q => cycles_per_bit_reg(2),
      R => '0'
    );
\cycles_per_bit_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(3),
      Q => cycles_per_bit_reg(3),
      R => '0'
    );
\cycles_per_bit_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(4),
      Q => cycles_per_bit_reg(4),
      R => '0'
    );
\cycles_per_bit_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(5),
      Q => cycles_per_bit_reg(5),
      R => '0'
    );
\cycles_per_bit_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(6),
      Q => cycles_per_bit_reg(6),
      R => '0'
    );
\cycles_per_bit_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(7),
      Q => cycles_per_bit_reg(7),
      R => '0'
    );
\cycles_per_bit_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(8),
      Q => cycles_per_bit_reg(8),
      R => '0'
    );
\cycles_per_bit_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => cycles_per_bit(9),
      Q => cycles_per_bit_reg(9),
      R => '0'
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \data_out[31]_i_3_n_0\,
      I3 => state(2),
      O => \data_out[31]_i_1_n_0\
    );
\data_out[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \data_out[31]_i_2_n_0\
    );
\data_out[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => state1,
      I1 => \data_out[31]_i_4_n_0\,
      I2 => \data_out[31]_i_5_n_0\,
      O => \data_out[31]_i_3_n_0\
    );
\data_out[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cs_hold_time_reg(2),
      I1 => cs_hold_time_reg(8),
      I2 => cs_hold_time_reg(4),
      I3 => cs_hold_time_reg(5),
      I4 => \data_out[31]_i_6_n_0\,
      O => \data_out[31]_i_4_n_0\
    );
\data_out[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cs_hold_time_reg(6),
      I1 => cs_hold_time_reg(9),
      I2 => cs_hold_time_reg(7),
      I3 => cs_hold_time_reg(15),
      I4 => \data_out[31]_i_7_n_0\,
      O => \data_out[31]_i_5_n_0\
    );
\data_out[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_hold_time_reg(11),
      I1 => cs_hold_time_reg(10),
      I2 => cs_hold_time_reg(0),
      I3 => cs_hold_time_reg(1),
      O => \data_out[31]_i_6_n_0\
    );
\data_out[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_hold_time_reg(14),
      I1 => cs_hold_time_reg(12),
      I2 => cs_hold_time_reg(13),
      I3 => cs_hold_time_reg(3),
      O => \data_out[31]_i_7_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[0]\,
      Q => data_out(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[10]\,
      Q => data_out(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[11]\,
      Q => data_out(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[12]\,
      Q => data_out(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[13]\,
      Q => data_out(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[14]\,
      Q => data_out(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[15]\,
      Q => data_out(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[16]\,
      Q => data_out(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[17]\,
      Q => data_out(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[18]\,
      Q => data_out(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[19]\,
      Q => data_out(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[1]\,
      Q => data_out(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[20]\,
      Q => data_out(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[21]\,
      Q => data_out(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[22]\,
      Q => data_out(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[23]\,
      Q => data_out(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[24]\,
      Q => data_out(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[25]\,
      Q => data_out(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[26]\,
      Q => data_out(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[27]\,
      Q => data_out(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[28]\,
      Q => data_out(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[29]\,
      Q => data_out(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[2]\,
      Q => data_out(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[30]\,
      Q => data_out(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[31]\,
      Q => data_out(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[3]\,
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[4]\,
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[5]\,
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[6]\,
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[7]\,
      Q => data_out(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[8]\,
      Q => data_out(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out[31]_i_2_n_0\,
      D => \rx_shift_reg_reg_n_0_[9]\,
      Q => data_out(9)
    );
delay_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_counter0_carry_n_0,
      CO(2) => delay_counter0_carry_n_1,
      CO(1) => delay_counter0_carry_n_2,
      CO(0) => delay_counter0_carry_n_3,
      CYINIT => \delay_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(4 downto 1),
      S(3) => \delay_counter_reg_n_0_[4]\,
      S(2) => \delay_counter_reg_n_0_[3]\,
      S(1) => \delay_counter_reg_n_0_[2]\,
      S(0) => \delay_counter_reg_n_0_[1]\
    );
\delay_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_counter0_carry_n_0,
      CO(3) => \delay_counter0_carry__0_n_0\,
      CO(2) => \delay_counter0_carry__0_n_1\,
      CO(1) => \delay_counter0_carry__0_n_2\,
      CO(0) => \delay_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(8 downto 5),
      S(3) => \delay_counter_reg_n_0_[8]\,
      S(2) => \delay_counter_reg_n_0_[7]\,
      S(1) => \delay_counter_reg_n_0_[6]\,
      S(0) => \delay_counter_reg_n_0_[5]\
    );
\delay_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__0_n_0\,
      CO(3) => \delay_counter0_carry__1_n_0\,
      CO(2) => \delay_counter0_carry__1_n_1\,
      CO(1) => \delay_counter0_carry__1_n_2\,
      CO(0) => \delay_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(12 downto 9),
      S(3) => \delay_counter_reg_n_0_[12]\,
      S(2) => \delay_counter_reg_n_0_[11]\,
      S(1) => \delay_counter_reg_n_0_[10]\,
      S(0) => \delay_counter_reg_n_0_[9]\
    );
\delay_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_delay_counter0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delay_counter0_carry__2_n_2\,
      CO(0) => \delay_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_delay_counter0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in15(15 downto 13),
      S(3) => '0',
      S(2) => \delay_counter_reg_n_0_[15]\,
      S(1) => \delay_counter_reg_n_0_[14]\,
      S(0) => \delay_counter_reg_n_0_[13]\
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020200"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \delay_counter_reg_n_0_[0]\,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      O => delay_counter(0)
    );
\delay_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(10),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(10)
    );
\delay_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(11),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(11)
    );
\delay_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(12),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(12)
    );
\delay_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(13),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(13)
    );
\delay_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(14),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(14)
    );
\delay_counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300000003B3B3B3B"
    )
        port map (
      I0 => \data_out[31]_i_3_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state12_out,
      I4 => \state0_carry__1_n_1\,
      I5 => state(0),
      O => delay_counter_0
    );
\delay_counter[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(15),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(15)
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(1),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(1)
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(2),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(2)
    );
\delay_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(3),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(3)
    );
\delay_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(4),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(4)
    );
\delay_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(5),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(5)
    );
\delay_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(6),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(6)
    );
\delay_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(7),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(7)
    );
\delay_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(8),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(8)
    );
\delay_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => in15(9),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => delay_counter(9)
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(0),
      Q => \delay_counter_reg_n_0_[0]\
    );
\delay_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(10),
      Q => \delay_counter_reg_n_0_[10]\
    );
\delay_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(11),
      Q => \delay_counter_reg_n_0_[11]\
    );
\delay_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(12),
      Q => \delay_counter_reg_n_0_[12]\
    );
\delay_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(13),
      Q => \delay_counter_reg_n_0_[13]\
    );
\delay_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(14),
      Q => \delay_counter_reg_n_0_[14]\
    );
\delay_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(15),
      Q => \delay_counter_reg_n_0_[15]\
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(1),
      Q => \delay_counter_reg_n_0_[1]\
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(2),
      Q => \delay_counter_reg_n_0_[2]\
    );
\delay_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(3),
      Q => \delay_counter_reg_n_0_[3]\
    );
\delay_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(4),
      Q => \delay_counter_reg_n_0_[4]\
    );
\delay_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(5),
      Q => \delay_counter_reg_n_0_[5]\
    );
\delay_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(6),
      Q => \delay_counter_reg_n_0_[6]\
    );
\delay_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(7),
      Q => \delay_counter_reg_n_0_[7]\
    );
\delay_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(8),
      Q => \delay_counter_reg_n_0_[8]\
    );
\delay_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => delay_counter_0,
      CLR => \data_out[31]_i_2_n_0\,
      D => delay_counter(9),
      Q => \delay_counter_reg_n_0_[9]\
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => \data_out[31]_i_1_n_0\,
      Q => done
    );
mosi_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => p_0_in,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => mosi_i_1_n_0,
      Q => \^mosi\
    );
rx_shift_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_shift_reg0_carry_n_0,
      CO(2) => rx_shift_reg0_carry_n_1,
      CO(1) => rx_shift_reg0_carry_n_2,
      CO(0) => rx_shift_reg0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rx_shift_reg0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rx_shift_reg0_carry_i_1_n_0,
      S(2) => rx_shift_reg0_carry_i_2_n_0,
      S(1) => rx_shift_reg0_carry_i_3_n_0,
      S(0) => rx_shift_reg0_carry_i_4_n_0
    );
\rx_shift_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_shift_reg0_carry_n_0,
      CO(3 downto 2) => \NLW_rx_shift_reg0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rx_shift_reg0,
      CO(0) => \rx_shift_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_shift_reg0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rx_shift_reg0_carry__0_i_1_n_0\,
      S(0) => \rx_shift_reg0_carry__0_i_2_n_0\
    );
\rx_shift_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sdi_sample_offset_reg(15),
      I1 => \cycle_counter_reg_n_0_[15]\,
      O => \rx_shift_reg0_carry__0_i_1_n_0\
    );
\rx_shift_reg0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sdi_sample_offset_reg(14),
      I1 => \cycle_counter_reg_n_0_[14]\,
      I2 => \cycle_counter_reg_n_0_[13]\,
      I3 => sdi_sample_offset_reg(13),
      I4 => \cycle_counter_reg_n_0_[12]\,
      I5 => sdi_sample_offset_reg(12),
      O => \rx_shift_reg0_carry__0_i_2_n_0\
    );
rx_shift_reg0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cycle_counter_reg_n_0_[11]\,
      I1 => sdi_sample_offset_reg(11),
      I2 => \cycle_counter_reg_n_0_[9]\,
      I3 => sdi_sample_offset_reg(9),
      I4 => sdi_sample_offset_reg(10),
      I5 => \cycle_counter_reg_n_0_[10]\,
      O => rx_shift_reg0_carry_i_1_n_0
    );
rx_shift_reg0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sdi_sample_offset_reg(8),
      I1 => \cycle_counter_reg_n_0_[8]\,
      I2 => \cycle_counter_reg_n_0_[6]\,
      I3 => sdi_sample_offset_reg(6),
      I4 => \cycle_counter_reg_n_0_[7]\,
      I5 => sdi_sample_offset_reg(7),
      O => rx_shift_reg0_carry_i_2_n_0
    );
rx_shift_reg0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cycle_counter_reg_n_0_[5]\,
      I1 => sdi_sample_offset_reg(5),
      I2 => \cycle_counter_reg_n_0_[3]\,
      I3 => sdi_sample_offset_reg(3),
      I4 => sdi_sample_offset_reg(4),
      I5 => \cycle_counter_reg_n_0_[4]\,
      O => rx_shift_reg0_carry_i_3_n_0
    );
rx_shift_reg0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sdi_sample_offset_reg(1),
      I1 => \cycle_counter_reg_n_0_[1]\,
      I2 => \cycle_counter_reg_n_0_[2]\,
      I3 => sdi_sample_offset_reg(2),
      I4 => \cycle_counter_reg_n_0_[0]\,
      I5 => sdi_sample_offset_reg(0),
      O => rx_shift_reg0_carry_i_4_n_0
    );
\rx_shift_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => miso,
      I1 => state(1),
      O => rx_shift_reg(0)
    );
\rx_shift_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[9]\,
      I1 => state(1),
      O => rx_shift_reg(10)
    );
\rx_shift_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[10]\,
      I1 => state(1),
      O => rx_shift_reg(11)
    );
\rx_shift_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[11]\,
      I1 => state(1),
      O => rx_shift_reg(12)
    );
\rx_shift_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[12]\,
      I1 => state(1),
      O => rx_shift_reg(13)
    );
\rx_shift_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[13]\,
      I1 => state(1),
      O => rx_shift_reg(14)
    );
\rx_shift_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[14]\,
      I1 => state(1),
      O => rx_shift_reg(15)
    );
\rx_shift_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[15]\,
      I1 => state(1),
      O => rx_shift_reg(16)
    );
\rx_shift_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[16]\,
      I1 => state(1),
      O => rx_shift_reg(17)
    );
\rx_shift_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[17]\,
      I1 => state(1),
      O => rx_shift_reg(18)
    );
\rx_shift_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[18]\,
      I1 => state(1),
      O => rx_shift_reg(19)
    );
\rx_shift_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[0]\,
      I1 => state(1),
      O => rx_shift_reg(1)
    );
\rx_shift_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[19]\,
      I1 => state(1),
      O => rx_shift_reg(20)
    );
\rx_shift_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[20]\,
      I1 => state(1),
      O => rx_shift_reg(21)
    );
\rx_shift_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[21]\,
      I1 => state(1),
      O => rx_shift_reg(22)
    );
\rx_shift_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[22]\,
      I1 => state(1),
      O => rx_shift_reg(23)
    );
\rx_shift_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[23]\,
      I1 => state(1),
      O => rx_shift_reg(24)
    );
\rx_shift_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[24]\,
      I1 => state(1),
      O => rx_shift_reg(25)
    );
\rx_shift_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[25]\,
      I1 => state(1),
      O => rx_shift_reg(26)
    );
\rx_shift_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[26]\,
      I1 => state(1),
      O => rx_shift_reg(27)
    );
\rx_shift_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[27]\,
      I1 => state(1),
      O => rx_shift_reg(28)
    );
\rx_shift_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[28]\,
      I1 => state(1),
      O => rx_shift_reg(29)
    );
\rx_shift_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[1]\,
      I1 => state(1),
      O => rx_shift_reg(2)
    );
\rx_shift_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[29]\,
      I1 => state(1),
      O => rx_shift_reg(30)
    );
\rx_shift_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => state(1),
      I1 => rx_shift_reg0,
      I2 => state(0),
      I3 => state(2),
      O => rx_shift_reg_2
    );
\rx_shift_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[30]\,
      I1 => state(1),
      O => rx_shift_reg(31)
    );
\rx_shift_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[2]\,
      I1 => state(1),
      O => rx_shift_reg(3)
    );
\rx_shift_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[3]\,
      I1 => state(1),
      O => rx_shift_reg(4)
    );
\rx_shift_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[4]\,
      I1 => state(1),
      O => rx_shift_reg(5)
    );
\rx_shift_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[5]\,
      I1 => state(1),
      O => rx_shift_reg(6)
    );
\rx_shift_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[6]\,
      I1 => state(1),
      O => rx_shift_reg(7)
    );
\rx_shift_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[7]\,
      I1 => state(1),
      O => rx_shift_reg(8)
    );
\rx_shift_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_reg_reg_n_0_[8]\,
      I1 => state(1),
      O => rx_shift_reg(9)
    );
\rx_shift_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(0),
      Q => \rx_shift_reg_reg_n_0_[0]\
    );
\rx_shift_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(10),
      Q => \rx_shift_reg_reg_n_0_[10]\
    );
\rx_shift_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(11),
      Q => \rx_shift_reg_reg_n_0_[11]\
    );
\rx_shift_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(12),
      Q => \rx_shift_reg_reg_n_0_[12]\
    );
\rx_shift_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(13),
      Q => \rx_shift_reg_reg_n_0_[13]\
    );
\rx_shift_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(14),
      Q => \rx_shift_reg_reg_n_0_[14]\
    );
\rx_shift_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(15),
      Q => \rx_shift_reg_reg_n_0_[15]\
    );
\rx_shift_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(16),
      Q => \rx_shift_reg_reg_n_0_[16]\
    );
\rx_shift_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(17),
      Q => \rx_shift_reg_reg_n_0_[17]\
    );
\rx_shift_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(18),
      Q => \rx_shift_reg_reg_n_0_[18]\
    );
\rx_shift_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(19),
      Q => \rx_shift_reg_reg_n_0_[19]\
    );
\rx_shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(1),
      Q => \rx_shift_reg_reg_n_0_[1]\
    );
\rx_shift_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(20),
      Q => \rx_shift_reg_reg_n_0_[20]\
    );
\rx_shift_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(21),
      Q => \rx_shift_reg_reg_n_0_[21]\
    );
\rx_shift_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(22),
      Q => \rx_shift_reg_reg_n_0_[22]\
    );
\rx_shift_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(23),
      Q => \rx_shift_reg_reg_n_0_[23]\
    );
\rx_shift_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(24),
      Q => \rx_shift_reg_reg_n_0_[24]\
    );
\rx_shift_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(25),
      Q => \rx_shift_reg_reg_n_0_[25]\
    );
\rx_shift_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(26),
      Q => \rx_shift_reg_reg_n_0_[26]\
    );
\rx_shift_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(27),
      Q => \rx_shift_reg_reg_n_0_[27]\
    );
\rx_shift_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(28),
      Q => \rx_shift_reg_reg_n_0_[28]\
    );
\rx_shift_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(29),
      Q => \rx_shift_reg_reg_n_0_[29]\
    );
\rx_shift_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(2),
      Q => \rx_shift_reg_reg_n_0_[2]\
    );
\rx_shift_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(30),
      Q => \rx_shift_reg_reg_n_0_[30]\
    );
\rx_shift_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(31),
      Q => \rx_shift_reg_reg_n_0_[31]\
    );
\rx_shift_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(3),
      Q => \rx_shift_reg_reg_n_0_[3]\
    );
\rx_shift_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(4),
      Q => \rx_shift_reg_reg_n_0_[4]\
    );
\rx_shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(5),
      Q => \rx_shift_reg_reg_n_0_[5]\
    );
\rx_shift_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(6),
      Q => \rx_shift_reg_reg_n_0_[6]\
    );
\rx_shift_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(7),
      Q => \rx_shift_reg_reg_n_0_[7]\
    );
\rx_shift_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(8),
      Q => \rx_shift_reg_reg_n_0_[8]\
    );
\rx_shift_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rx_shift_reg_2,
      CLR => \data_out[31]_i_2_n_0\,
      D => rx_shift_reg(9),
      Q => \rx_shift_reg_reg_n_0_[9]\
    );
sclk0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sclk0_carry_n_0,
      CO(2) => sclk0_carry_n_1,
      CO(1) => sclk0_carry_n_2,
      CO(0) => sclk0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sclk0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sclk0_carry_i_1_n_0,
      S(2) => sclk0_carry_i_2_n_0,
      S(1) => sclk0_carry_i_3_n_0,
      S(0) => sclk0_carry_i_4_n_0
    );
\sclk0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sclk0_carry_n_0,
      CO(3 downto 2) => \NLW_sclk0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sclk0,
      CO(0) => \sclk0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sclk0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \sclk0_carry__0_i_1_n_0\,
      S(0) => \sclk0_carry__0_i_2_n_0\
    );
\sclk0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclk_low_offset_reg(15),
      I1 => \cycle_counter_reg_n_0_[15]\,
      O => \sclk0_carry__0_i_1_n_0\
    );
\sclk0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_low_offset_reg(14),
      I1 => \cycle_counter_reg_n_0_[14]\,
      I2 => \cycle_counter_reg_n_0_[12]\,
      I3 => sclk_low_offset_reg(12),
      I4 => \cycle_counter_reg_n_0_[13]\,
      I5 => sclk_low_offset_reg(13),
      O => \sclk0_carry__0_i_2_n_0\
    );
sclk0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_low_offset_reg(11),
      I1 => \cycle_counter_reg_n_0_[11]\,
      I2 => \cycle_counter_reg_n_0_[9]\,
      I3 => sclk_low_offset_reg(9),
      I4 => \cycle_counter_reg_n_0_[10]\,
      I5 => sclk_low_offset_reg(10),
      O => sclk0_carry_i_1_n_0
    );
sclk0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_low_offset_reg(8),
      I1 => \cycle_counter_reg_n_0_[8]\,
      I2 => \cycle_counter_reg_n_0_[6]\,
      I3 => sclk_low_offset_reg(6),
      I4 => \cycle_counter_reg_n_0_[7]\,
      I5 => sclk_low_offset_reg(7),
      O => sclk0_carry_i_2_n_0
    );
sclk0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_low_offset_reg(5),
      I1 => \cycle_counter_reg_n_0_[5]\,
      I2 => \cycle_counter_reg_n_0_[3]\,
      I3 => sclk_low_offset_reg(3),
      I4 => \cycle_counter_reg_n_0_[4]\,
      I5 => sclk_low_offset_reg(4),
      O => sclk0_carry_i_3_n_0
    );
sclk0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_low_offset_reg(1),
      I1 => \cycle_counter_reg_n_0_[1]\,
      I2 => \cycle_counter_reg_n_0_[2]\,
      I3 => sclk_low_offset_reg(2),
      I4 => \cycle_counter_reg_n_0_[0]\,
      I5 => sclk_low_offset_reg(0),
      O => sclk0_carry_i_4_n_0
    );
sclk1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sclk1_carry_n_0,
      CO(2) => sclk1_carry_n_1,
      CO(1) => sclk1_carry_n_2,
      CO(0) => sclk1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sclk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sclk1_carry_i_1_n_0,
      S(2) => sclk1_carry_i_2_n_0,
      S(1) => sclk1_carry_i_3_n_0,
      S(0) => sclk1_carry_i_4_n_0
    );
\sclk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sclk1_carry_n_0,
      CO(3 downto 2) => \NLW_sclk1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sclk1,
      CO(0) => \sclk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sclk1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \sclk1_carry__0_i_1_n_0\,
      S(0) => \sclk1_carry__0_i_2_n_0\
    );
\sclk1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclk_high_offset_reg(15),
      I1 => \cycle_counter_reg_n_0_[15]\,
      O => \sclk1_carry__0_i_1_n_0\
    );
\sclk1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_high_offset_reg(13),
      I1 => \cycle_counter_reg_n_0_[13]\,
      I2 => \cycle_counter_reg_n_0_[14]\,
      I3 => sclk_high_offset_reg(14),
      I4 => \cycle_counter_reg_n_0_[12]\,
      I5 => sclk_high_offset_reg(12),
      O => \sclk1_carry__0_i_2_n_0\
    );
sclk1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_high_offset_reg(11),
      I1 => \cycle_counter_reg_n_0_[11]\,
      I2 => \cycle_counter_reg_n_0_[10]\,
      I3 => sclk_high_offset_reg(10),
      I4 => \cycle_counter_reg_n_0_[9]\,
      I5 => sclk_high_offset_reg(9),
      O => sclk1_carry_i_1_n_0
    );
sclk1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_high_offset_reg(8),
      I1 => \cycle_counter_reg_n_0_[8]\,
      I2 => \cycle_counter_reg_n_0_[6]\,
      I3 => sclk_high_offset_reg(6),
      I4 => \cycle_counter_reg_n_0_[7]\,
      I5 => sclk_high_offset_reg(7),
      O => sclk1_carry_i_2_n_0
    );
sclk1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sclk_high_offset_reg(5),
      I1 => \cycle_counter_reg_n_0_[5]\,
      I2 => \cycle_counter_reg_n_0_[3]\,
      I3 => sclk_high_offset_reg(3),
      I4 => \cycle_counter_reg_n_0_[4]\,
      I5 => sclk_high_offset_reg(4),
      O => sclk1_carry_i_3_n_0
    );
sclk1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cycle_counter_reg_n_0_[0]\,
      I1 => sclk_high_offset_reg(0),
      I2 => \cycle_counter_reg_n_0_[1]\,
      I3 => sclk_high_offset_reg(1),
      I4 => sclk_high_offset_reg(2),
      I5 => \cycle_counter_reg_n_0_[2]\,
      O => sclk1_carry_i_4_n_0
    );
\sclk_high_offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(0),
      Q => sclk_high_offset_reg(0),
      R => '0'
    );
\sclk_high_offset_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(10),
      Q => sclk_high_offset_reg(10),
      R => '0'
    );
\sclk_high_offset_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(11),
      Q => sclk_high_offset_reg(11),
      R => '0'
    );
\sclk_high_offset_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(12),
      Q => sclk_high_offset_reg(12),
      R => '0'
    );
\sclk_high_offset_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(13),
      Q => sclk_high_offset_reg(13),
      R => '0'
    );
\sclk_high_offset_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(14),
      Q => sclk_high_offset_reg(14),
      R => '0'
    );
\sclk_high_offset_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(15),
      Q => sclk_high_offset_reg(15),
      R => '0'
    );
\sclk_high_offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(1),
      Q => sclk_high_offset_reg(1),
      R => '0'
    );
\sclk_high_offset_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(2),
      Q => sclk_high_offset_reg(2),
      R => '0'
    );
\sclk_high_offset_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(3),
      Q => sclk_high_offset_reg(3),
      R => '0'
    );
\sclk_high_offset_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(4),
      Q => sclk_high_offset_reg(4),
      R => '0'
    );
\sclk_high_offset_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(5),
      Q => sclk_high_offset_reg(5),
      R => '0'
    );
\sclk_high_offset_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(6),
      Q => sclk_high_offset_reg(6),
      R => '0'
    );
\sclk_high_offset_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(7),
      Q => sclk_high_offset_reg(7),
      R => '0'
    );
\sclk_high_offset_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(8),
      Q => sclk_high_offset_reg(8),
      R => '0'
    );
\sclk_high_offset_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_high_offset(9),
      Q => sclk_high_offset_reg(9),
      R => '0'
    );
sclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sclk_i_2_n_0,
      I1 => sclk_i_3_n_0,
      I2 => \^sclk\,
      O => sclk_i_1_n_0
    );
sclk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11223F00"
    )
        port map (
      I0 => sclk1,
      I1 => state(2),
      I2 => state(1),
      I3 => cpol,
      I4 => state(0),
      O => sclk_i_2_n_0
    );
sclk_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22207777"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => sclk0,
      I3 => sclk1,
      I4 => state(0),
      O => sclk_i_3_n_0
    );
\sclk_low_offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(0),
      Q => sclk_low_offset_reg(0),
      R => '0'
    );
\sclk_low_offset_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(10),
      Q => sclk_low_offset_reg(10),
      R => '0'
    );
\sclk_low_offset_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(11),
      Q => sclk_low_offset_reg(11),
      R => '0'
    );
\sclk_low_offset_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(12),
      Q => sclk_low_offset_reg(12),
      R => '0'
    );
\sclk_low_offset_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(13),
      Q => sclk_low_offset_reg(13),
      R => '0'
    );
\sclk_low_offset_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(14),
      Q => sclk_low_offset_reg(14),
      R => '0'
    );
\sclk_low_offset_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(15),
      Q => sclk_low_offset_reg(15),
      R => '0'
    );
\sclk_low_offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(1),
      Q => sclk_low_offset_reg(1),
      R => '0'
    );
\sclk_low_offset_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(2),
      Q => sclk_low_offset_reg(2),
      R => '0'
    );
\sclk_low_offset_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(3),
      Q => sclk_low_offset_reg(3),
      R => '0'
    );
\sclk_low_offset_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(4),
      Q => sclk_low_offset_reg(4),
      R => '0'
    );
\sclk_low_offset_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(5),
      Q => sclk_low_offset_reg(5),
      R => '0'
    );
\sclk_low_offset_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(6),
      Q => sclk_low_offset_reg(6),
      R => '0'
    );
\sclk_low_offset_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(7),
      Q => sclk_low_offset_reg(7),
      R => '0'
    );
\sclk_low_offset_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(8),
      Q => sclk_low_offset_reg(8),
      R => '0'
    );
\sclk_low_offset_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sclk_low_offset(9),
      Q => sclk_low_offset_reg(9),
      R => '0'
    );
sclk_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[31]_i_2_n_0\,
      D => sclk_i_1_n_0,
      Q => \^sclk\
    );
\sdi_sample_offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(0),
      Q => sdi_sample_offset_reg(0),
      R => '0'
    );
\sdi_sample_offset_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(10),
      Q => sdi_sample_offset_reg(10),
      R => '0'
    );
\sdi_sample_offset_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(11),
      Q => sdi_sample_offset_reg(11),
      R => '0'
    );
\sdi_sample_offset_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(12),
      Q => sdi_sample_offset_reg(12),
      R => '0'
    );
\sdi_sample_offset_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(13),
      Q => sdi_sample_offset_reg(13),
      R => '0'
    );
\sdi_sample_offset_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(14),
      Q => sdi_sample_offset_reg(14),
      R => '0'
    );
\sdi_sample_offset_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(15),
      Q => sdi_sample_offset_reg(15),
      R => '0'
    );
\sdi_sample_offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(1),
      Q => sdi_sample_offset_reg(1),
      R => '0'
    );
\sdi_sample_offset_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(2),
      Q => sdi_sample_offset_reg(2),
      R => '0'
    );
\sdi_sample_offset_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(3),
      Q => sdi_sample_offset_reg(3),
      R => '0'
    );
\sdi_sample_offset_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(4),
      Q => sdi_sample_offset_reg(4),
      R => '0'
    );
\sdi_sample_offset_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(5),
      Q => sdi_sample_offset_reg(5),
      R => '0'
    );
\sdi_sample_offset_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(6),
      Q => sdi_sample_offset_reg(6),
      R => '0'
    );
\sdi_sample_offset_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(7),
      Q => sdi_sample_offset_reg(7),
      R => '0'
    );
\sdi_sample_offset_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(8),
      Q => sdi_sample_offset_reg(8),
      R => '0'
    );
\sdi_sample_offset_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => sdi_sample_offset(9),
      Q => sdi_sample_offset_reg(9),
      R => '0'
    );
\spi_mode_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cs_hold_time_reg[15]_i_1_n_0\,
      D => spi_mode(0),
      Q => cpol,
      R => '0'
    );
ss_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBB0111"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \data_out[31]_i_3_n_0\,
      I3 => state(2),
      I4 => \^ss_n\,
      O => ss_n_i_1_n_0
    );
ss_n_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ss_n_i_1_n_0,
      PRE => \data_out[31]_i_2_n_0\,
      Q => \^ss_n\
    );
state0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state0_carry_n_0,
      CO(2) => state0_carry_n_1,
      CO(1) => state0_carry_n_2,
      CO(0) => state0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state0_carry_i_1_n_0,
      S(2) => state0_carry_i_2_n_0,
      S(1) => state0_carry_i_3_n_0,
      S(0) => state0_carry_i_4_n_0
    );
\state0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state0_carry_n_0,
      CO(3) => \state0_carry__0_n_0\,
      CO(2) => \state0_carry__0_n_1\,
      CO(1) => \state0_carry__0_n_2\,
      CO(0) => \state0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1__21_carry__2_n_0\,
      S(2) => \state1__21_carry__2_n_0\,
      S(1) => \state0_carry__0_i_1_n_0\,
      S(0) => \state0_carry__0_i_2_n_0\
    );
\state0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state1__21_carry__2_n_0\,
      I1 => state10_in(15),
      I2 => \bit_counter_reg_n_0_[15]\,
      O => \state0_carry__0_i_1_n_0\
    );
\state0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[12]\,
      I1 => state10_in(12),
      I2 => \bit_counter_reg_n_0_[13]\,
      I3 => state10_in(13),
      I4 => state10_in(14),
      I5 => \bit_counter_reg_n_0_[14]\,
      O => \state0_carry__0_i_2_n_0\
    );
\state0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_carry__0_n_0\,
      CO(3) => \NLW_state0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \state0_carry__1_n_1\,
      CO(1) => \state0_carry__1_n_2\,
      CO(0) => \state0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state1__21_carry__2_n_0\,
      S(1) => \state1__21_carry__2_n_0\,
      S(0) => \state1__21_carry__2_n_0\
    );
state0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[9]\,
      I1 => state10_in(9),
      I2 => \bit_counter_reg_n_0_[10]\,
      I3 => state10_in(10),
      I4 => state10_in(11),
      I5 => \bit_counter_reg_n_0_[11]\,
      O => state0_carry_i_1_n_0
    );
state0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[8]\,
      I1 => state10_in(8),
      I2 => \bit_counter_reg_n_0_[6]\,
      I3 => state10_in(6),
      I4 => state10_in(7),
      I5 => \bit_counter_reg_n_0_[7]\,
      O => state0_carry_i_2_n_0
    );
state0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[3]\,
      I1 => state10_in(3),
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => state10_in(4),
      I4 => state10_in(5),
      I5 => \bit_counter_reg_n_0_[5]\,
      O => state0_carry_i_3_n_0
    );
state0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[0]\,
      I1 => bits_per_transaction_reg(0),
      I2 => \bit_counter_reg_n_0_[2]\,
      I3 => state10_in(2),
      I4 => \bit_counter_reg_n_0_[1]\,
      I5 => state10_in(1),
      O => state0_carry_i_4_n_0
    );
\state1__10_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1__10_carry_n_0\,
      CO(2) => \state1__10_carry_n_1\,
      CO(1) => \state1__10_carry_n_2\,
      CO(0) => \state1__10_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1__10_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1__10_carry_i_1_n_0\,
      S(2) => \state1__10_carry_i_2_n_0\,
      S(1) => \state1__10_carry_i_3_n_0\,
      S(0) => \state1__10_carry_i_4_n_0\
    );
\state1__10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__10_carry_n_0\,
      CO(3) => \state1__10_carry__0_n_0\,
      CO(2) => \state1__10_carry__0_n_1\,
      CO(1) => \state1__10_carry__0_n_2\,
      CO(0) => \state1__10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1__10_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state2__29_carry__2_n_0\,
      S(2) => \state2__29_carry__2_n_0\,
      S(1) => \state1__10_carry__0_i_1_n_0\,
      S(0) => \state1__10_carry__0_i_2_n_0\
    );
\state1__10_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state2__29_carry__2_n_0\,
      I1 => state21_in(15),
      I2 => \cycle_counter_reg_n_0_[15]\,
      O => \state1__10_carry__0_i_1_n_0\
    );
\state1__10_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state21_in(13),
      I1 => \cycle_counter_reg_n_0_[13]\,
      I2 => \cycle_counter_reg_n_0_[14]\,
      I3 => state21_in(14),
      I4 => \cycle_counter_reg_n_0_[12]\,
      I5 => state21_in(12),
      O => \state1__10_carry__0_i_2_n_0\
    );
\state1__10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__10_carry__0_n_0\,
      CO(3) => \NLW_state1__10_carry__1_CO_UNCONNECTED\(3),
      CO(2) => state12_out,
      CO(1) => \state1__10_carry__1_n_2\,
      CO(0) => \state1__10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1__10_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state2__29_carry__2_n_0\,
      S(1) => \state2__29_carry__2_n_0\,
      S(0) => \state2__29_carry__2_n_0\
    );
\state1__10_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state21_in(11),
      I1 => \cycle_counter_reg_n_0_[11]\,
      I2 => \cycle_counter_reg_n_0_[9]\,
      I3 => state21_in(9),
      I4 => \cycle_counter_reg_n_0_[10]\,
      I5 => state21_in(10),
      O => \state1__10_carry_i_1_n_0\
    );
\state1__10_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state21_in(8),
      I1 => \cycle_counter_reg_n_0_[8]\,
      I2 => \cycle_counter_reg_n_0_[7]\,
      I3 => state21_in(7),
      I4 => \cycle_counter_reg_n_0_[6]\,
      I5 => state21_in(6),
      O => \state1__10_carry_i_2_n_0\
    );
\state1__10_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state21_in(5),
      I1 => \cycle_counter_reg_n_0_[5]\,
      I2 => \cycle_counter_reg_n_0_[3]\,
      I3 => state21_in(3),
      I4 => \cycle_counter_reg_n_0_[4]\,
      I5 => state21_in(4),
      O => \state1__10_carry_i_3_n_0\
    );
\state1__10_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => cycles_per_bit_reg(0),
      I1 => \cycle_counter_reg_n_0_[0]\,
      I2 => \cycle_counter_reg_n_0_[2]\,
      I3 => state21_in(2),
      I4 => \cycle_counter_reg_n_0_[1]\,
      I5 => state21_in(1),
      O => \state1__10_carry_i_4_n_0\
    );
\state1__21_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1__21_carry_n_0\,
      CO(2) => \state1__21_carry_n_1\,
      CO(1) => \state1__21_carry_n_2\,
      CO(0) => \state1__21_carry_n_3\,
      CYINIT => bits_per_transaction_reg(0),
      DI(3 downto 0) => bits_per_transaction_reg(4 downto 1),
      O(3 downto 0) => state10_in(4 downto 1),
      S(3) => \state1__21_carry_i_1_n_0\,
      S(2) => \state1__21_carry_i_2_n_0\,
      S(1) => \state1__21_carry_i_3_n_0\,
      S(0) => \state1__21_carry_i_4_n_0\
    );
\state1__21_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__21_carry_n_0\,
      CO(3) => \state1__21_carry__0_n_0\,
      CO(2) => \state1__21_carry__0_n_1\,
      CO(1) => \state1__21_carry__0_n_2\,
      CO(0) => \state1__21_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => bits_per_transaction_reg(8 downto 5),
      O(3 downto 0) => state10_in(8 downto 5),
      S(3) => \state1__21_carry__0_i_1_n_0\,
      S(2) => \state1__21_carry__0_i_2_n_0\,
      S(1) => \state1__21_carry__0_i_3_n_0\,
      S(0) => \state1__21_carry__0_i_4_n_0\
    );
\state1__21_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(8),
      O => \state1__21_carry__0_i_1_n_0\
    );
\state1__21_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(7),
      O => \state1__21_carry__0_i_2_n_0\
    );
\state1__21_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(6),
      O => \state1__21_carry__0_i_3_n_0\
    );
\state1__21_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(5),
      O => \state1__21_carry__0_i_4_n_0\
    );
\state1__21_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__21_carry__0_n_0\,
      CO(3) => \state1__21_carry__1_n_0\,
      CO(2) => \state1__21_carry__1_n_1\,
      CO(1) => \state1__21_carry__1_n_2\,
      CO(0) => \state1__21_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => bits_per_transaction_reg(12 downto 9),
      O(3 downto 0) => state10_in(12 downto 9),
      S(3) => \state1__21_carry__1_i_1_n_0\,
      S(2) => \state1__21_carry__1_i_2_n_0\,
      S(1) => \state1__21_carry__1_i_3_n_0\,
      S(0) => \state1__21_carry__1_i_4_n_0\
    );
\state1__21_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(12),
      O => \state1__21_carry__1_i_1_n_0\
    );
\state1__21_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(11),
      O => \state1__21_carry__1_i_2_n_0\
    );
\state1__21_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(10),
      O => \state1__21_carry__1_i_3_n_0\
    );
\state1__21_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(9),
      O => \state1__21_carry__1_i_4_n_0\
    );
\state1__21_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__21_carry__1_n_0\,
      CO(3) => \state1__21_carry__2_n_0\,
      CO(2) => \NLW_state1__21_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \state1__21_carry__2_n_2\,
      CO(0) => \state1__21_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => bits_per_transaction_reg(15 downto 13),
      O(3) => \NLW_state1__21_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => state10_in(15 downto 13),
      S(3) => '1',
      S(2) => \state1__21_carry__2_i_1_n_0\,
      S(1) => \state1__21_carry__2_i_2_n_0\,
      S(0) => \state1__21_carry__2_i_3_n_0\
    );
\state1__21_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(15),
      O => \state1__21_carry__2_i_1_n_0\
    );
\state1__21_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(14),
      O => \state1__21_carry__2_i_2_n_0\
    );
\state1__21_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(13),
      O => \state1__21_carry__2_i_3_n_0\
    );
\state1__21_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(4),
      O => \state1__21_carry_i_1_n_0\
    );
\state1__21_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(3),
      O => \state1__21_carry_i_2_n_0\
    );
\state1__21_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(2),
      O => \state1__21_carry_i_3_n_0\
    );
\state1__21_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(1),
      O => \state1__21_carry_i_4_n_0\
    );
\state1__51_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state1__51_carry_n_0\,
      CO(2) => \state1__51_carry_n_1\,
      CO(1) => \state1__51_carry_n_2\,
      CO(0) => \state1__51_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1__51_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1__51_carry_i_1_n_0\,
      S(2) => \state1__51_carry_i_2_n_0\,
      S(1) => \state1__51_carry_i_3_n_0\,
      S(0) => \state1__51_carry_i_4_n_0\
    );
\state1__51_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__51_carry_n_0\,
      CO(3) => \state1__51_carry__0_n_0\,
      CO(2) => \state1__51_carry__0_n_1\,
      CO(1) => \state1__51_carry__0_n_2\,
      CO(0) => \state1__51_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1__51_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state2__59_carry__2_n_0\,
      S(2) => \state2__59_carry__2_n_0\,
      S(1) => \state1__51_carry__0_i_1_n_0\,
      S(0) => \state1__51_carry__0_i_2_n_0\
    );
\state1__51_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state2__59_carry__2_n_0\,
      I1 => state23_in(15),
      I2 => \delay_counter_reg_n_0_[15]\,
      O => \state1__51_carry__0_i_1_n_0\
    );
\state1__51_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[13]\,
      I1 => state23_in(13),
      I2 => \delay_counter_reg_n_0_[12]\,
      I3 => state23_in(12),
      I4 => state23_in(14),
      I5 => \delay_counter_reg_n_0_[14]\,
      O => \state1__51_carry__0_i_2_n_0\
    );
\state1__51_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1__51_carry__0_n_0\,
      CO(3) => \NLW_state1__51_carry__1_CO_UNCONNECTED\(3),
      CO(2) => state14_out,
      CO(1) => \state1__51_carry__1_n_2\,
      CO(0) => \state1__51_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1__51_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state2__59_carry__2_n_0\,
      S(1) => \state2__59_carry__2_n_0\,
      S(0) => \state2__59_carry__2_n_0\
    );
\state1__51_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state23_in(11),
      I1 => \delay_counter_reg_n_0_[11]\,
      I2 => \delay_counter_reg_n_0_[9]\,
      I3 => state23_in(9),
      I4 => \delay_counter_reg_n_0_[10]\,
      I5 => state23_in(10),
      O => \state1__51_carry_i_1_n_0\
    );
\state1__51_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[8]\,
      I1 => state23_in(8),
      I2 => \delay_counter_reg_n_0_[6]\,
      I3 => state23_in(6),
      I4 => state23_in(7),
      I5 => \delay_counter_reg_n_0_[7]\,
      O => \state1__51_carry_i_2_n_0\
    );
\state1__51_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state23_in(5),
      I1 => \delay_counter_reg_n_0_[5]\,
      I2 => \delay_counter_reg_n_0_[4]\,
      I3 => state23_in(4),
      I4 => \delay_counter_reg_n_0_[3]\,
      I5 => state23_in(3),
      O => \state1__51_carry_i_3_n_0\
    );
\state1__51_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[1]\,
      I1 => state23_in(1),
      I2 => \delay_counter_reg_n_0_[0]\,
      I3 => cs_to_trx_delay_reg(0),
      I4 => state23_in(2),
      I5 => \delay_counter_reg_n_0_[2]\,
      O => \state1__51_carry_i_4_n_0\
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_1_n_0,
      S(2) => state1_carry_i_2_n_0,
      S(1) => state1_carry_i_3_n_0,
      S(0) => state1_carry_i_4_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3) => \state1_carry__0_n_0\,
      CO(2) => \state1_carry__0_n_1\,
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state2_carry__2_n_0\,
      S(2) => \state2_carry__2_n_0\,
      S(1) => \state1_carry__0_i_1_n_0\,
      S(0) => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state2_carry__2_n_0\,
      I1 => state2(15),
      I2 => \delay_counter_reg_n_0_[15]\,
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[14]\,
      I1 => state2(14),
      I2 => \delay_counter_reg_n_0_[12]\,
      I3 => state2(12),
      I4 => state2(13),
      I5 => \delay_counter_reg_n_0_[13]\,
      O => \state1_carry__0_i_2_n_0\
    );
\state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__0_n_0\,
      CO(3) => \NLW_state1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => state1,
      CO(1) => \state1_carry__1_n_2\,
      CO(0) => \state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state2_carry__2_n_0\,
      S(1) => \state2_carry__2_n_0\,
      S(0) => \state2_carry__2_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state2(11),
      I1 => \delay_counter_reg_n_0_[11]\,
      I2 => \delay_counter_reg_n_0_[9]\,
      I3 => state2(9),
      I4 => \delay_counter_reg_n_0_[10]\,
      I5 => state2(10),
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[6]\,
      I1 => state2(6),
      I2 => \delay_counter_reg_n_0_[7]\,
      I3 => state2(7),
      I4 => state2(8),
      I5 => \delay_counter_reg_n_0_[8]\,
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => state2(5),
      I1 => \delay_counter_reg_n_0_[5]\,
      I2 => \delay_counter_reg_n_0_[3]\,
      I3 => state2(3),
      I4 => \delay_counter_reg_n_0_[4]\,
      I5 => state2(4),
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => cs_hold_time_reg(0),
      I1 => \delay_counter_reg_n_0_[0]\,
      I2 => \delay_counter_reg_n_0_[2]\,
      I3 => state2(2),
      I4 => \delay_counter_reg_n_0_[1]\,
      I5 => state2(1),
      O => state1_carry_i_4_n_0
    );
\state2__29_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state2__29_carry_n_0\,
      CO(2) => \state2__29_carry_n_1\,
      CO(1) => \state2__29_carry_n_2\,
      CO(0) => \state2__29_carry_n_3\,
      CYINIT => cycles_per_bit_reg(0),
      DI(3 downto 0) => cycles_per_bit_reg(4 downto 1),
      O(3 downto 0) => state21_in(4 downto 1),
      S(3) => \state2__29_carry_i_1_n_0\,
      S(2) => \state2__29_carry_i_2_n_0\,
      S(1) => \state2__29_carry_i_3_n_0\,
      S(0) => \state2__29_carry_i_4_n_0\
    );
\state2__29_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2__29_carry_n_0\,
      CO(3) => \state2__29_carry__0_n_0\,
      CO(2) => \state2__29_carry__0_n_1\,
      CO(1) => \state2__29_carry__0_n_2\,
      CO(0) => \state2__29_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cycles_per_bit_reg(8 downto 5),
      O(3 downto 0) => state21_in(8 downto 5),
      S(3) => \state2__29_carry__0_i_1_n_0\,
      S(2) => \state2__29_carry__0_i_2_n_0\,
      S(1) => \state2__29_carry__0_i_3_n_0\,
      S(0) => \state2__29_carry__0_i_4_n_0\
    );
\state2__29_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(8),
      O => \state2__29_carry__0_i_1_n_0\
    );
\state2__29_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(7),
      O => \state2__29_carry__0_i_2_n_0\
    );
\state2__29_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(6),
      O => \state2__29_carry__0_i_3_n_0\
    );
\state2__29_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(5),
      O => \state2__29_carry__0_i_4_n_0\
    );
\state2__29_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2__29_carry__0_n_0\,
      CO(3) => \state2__29_carry__1_n_0\,
      CO(2) => \state2__29_carry__1_n_1\,
      CO(1) => \state2__29_carry__1_n_2\,
      CO(0) => \state2__29_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cycles_per_bit_reg(12 downto 9),
      O(3 downto 0) => state21_in(12 downto 9),
      S(3) => \state2__29_carry__1_i_1_n_0\,
      S(2) => \state2__29_carry__1_i_2_n_0\,
      S(1) => \state2__29_carry__1_i_3_n_0\,
      S(0) => \state2__29_carry__1_i_4_n_0\
    );
\state2__29_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(12),
      O => \state2__29_carry__1_i_1_n_0\
    );
\state2__29_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(11),
      O => \state2__29_carry__1_i_2_n_0\
    );
\state2__29_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(10),
      O => \state2__29_carry__1_i_3_n_0\
    );
\state2__29_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(9),
      O => \state2__29_carry__1_i_4_n_0\
    );
\state2__29_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2__29_carry__1_n_0\,
      CO(3) => \state2__29_carry__2_n_0\,
      CO(2) => \NLW_state2__29_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \state2__29_carry__2_n_2\,
      CO(0) => \state2__29_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => cycles_per_bit_reg(15 downto 13),
      O(3) => \NLW_state2__29_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => state21_in(15 downto 13),
      S(3) => '1',
      S(2) => \state2__29_carry__2_i_1_n_0\,
      S(1) => \state2__29_carry__2_i_2_n_0\,
      S(0) => \state2__29_carry__2_i_3_n_0\
    );
\state2__29_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(15),
      O => \state2__29_carry__2_i_1_n_0\
    );
\state2__29_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(14),
      O => \state2__29_carry__2_i_2_n_0\
    );
\state2__29_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(13),
      O => \state2__29_carry__2_i_3_n_0\
    );
\state2__29_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(4),
      O => \state2__29_carry_i_1_n_0\
    );
\state2__29_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(3),
      O => \state2__29_carry_i_2_n_0\
    );
\state2__29_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(2),
      O => \state2__29_carry_i_3_n_0\
    );
\state2__29_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_per_bit_reg(1),
      O => \state2__29_carry_i_4_n_0\
    );
\state2__59_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state2__59_carry_n_0\,
      CO(2) => \state2__59_carry_n_1\,
      CO(1) => \state2__59_carry_n_2\,
      CO(0) => \state2__59_carry_n_3\,
      CYINIT => cs_to_trx_delay_reg(0),
      DI(3 downto 0) => cs_to_trx_delay_reg(4 downto 1),
      O(3 downto 0) => state23_in(4 downto 1),
      S(3) => \state2__59_carry_i_1_n_0\,
      S(2) => \state2__59_carry_i_2_n_0\,
      S(1) => \state2__59_carry_i_3_n_0\,
      S(0) => \state2__59_carry_i_4_n_0\
    );
\state2__59_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2__59_carry_n_0\,
      CO(3) => \state2__59_carry__0_n_0\,
      CO(2) => \state2__59_carry__0_n_1\,
      CO(1) => \state2__59_carry__0_n_2\,
      CO(0) => \state2__59_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cs_to_trx_delay_reg(8 downto 5),
      O(3 downto 0) => state23_in(8 downto 5),
      S(3) => \state2__59_carry__0_i_1_n_0\,
      S(2) => \state2__59_carry__0_i_2_n_0\,
      S(1) => \state2__59_carry__0_i_3_n_0\,
      S(0) => \state2__59_carry__0_i_4_n_0\
    );
\state2__59_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(8),
      O => \state2__59_carry__0_i_1_n_0\
    );
\state2__59_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(7),
      O => \state2__59_carry__0_i_2_n_0\
    );
\state2__59_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(6),
      O => \state2__59_carry__0_i_3_n_0\
    );
\state2__59_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(5),
      O => \state2__59_carry__0_i_4_n_0\
    );
\state2__59_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2__59_carry__0_n_0\,
      CO(3) => \state2__59_carry__1_n_0\,
      CO(2) => \state2__59_carry__1_n_1\,
      CO(1) => \state2__59_carry__1_n_2\,
      CO(0) => \state2__59_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cs_to_trx_delay_reg(12 downto 9),
      O(3 downto 0) => state23_in(12 downto 9),
      S(3) => \state2__59_carry__1_i_1_n_0\,
      S(2) => \state2__59_carry__1_i_2_n_0\,
      S(1) => \state2__59_carry__1_i_3_n_0\,
      S(0) => \state2__59_carry__1_i_4_n_0\
    );
\state2__59_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(12),
      O => \state2__59_carry__1_i_1_n_0\
    );
\state2__59_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(11),
      O => \state2__59_carry__1_i_2_n_0\
    );
\state2__59_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(10),
      O => \state2__59_carry__1_i_3_n_0\
    );
\state2__59_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(9),
      O => \state2__59_carry__1_i_4_n_0\
    );
\state2__59_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2__59_carry__1_n_0\,
      CO(3) => \state2__59_carry__2_n_0\,
      CO(2) => \NLW_state2__59_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \state2__59_carry__2_n_2\,
      CO(0) => \state2__59_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => cs_to_trx_delay_reg(15 downto 13),
      O(3) => \NLW_state2__59_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => state23_in(15 downto 13),
      S(3) => '1',
      S(2) => \state2__59_carry__2_i_1_n_0\,
      S(1) => \state2__59_carry__2_i_2_n_0\,
      S(0) => \state2__59_carry__2_i_3_n_0\
    );
\state2__59_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(15),
      O => \state2__59_carry__2_i_1_n_0\
    );
\state2__59_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(14),
      O => \state2__59_carry__2_i_2_n_0\
    );
\state2__59_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(13),
      O => \state2__59_carry__2_i_3_n_0\
    );
\state2__59_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(4),
      O => \state2__59_carry_i_1_n_0\
    );
\state2__59_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(3),
      O => \state2__59_carry_i_2_n_0\
    );
\state2__59_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(2),
      O => \state2__59_carry_i_3_n_0\
    );
\state2__59_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_to_trx_delay_reg(1),
      O => \state2__59_carry_i_4_n_0\
    );
state2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state2_carry_n_0,
      CO(2) => state2_carry_n_1,
      CO(1) => state2_carry_n_2,
      CO(0) => state2_carry_n_3,
      CYINIT => cs_hold_time_reg(0),
      DI(3 downto 0) => cs_hold_time_reg(4 downto 1),
      O(3 downto 0) => state2(4 downto 1),
      S(3) => state2_carry_i_1_n_0,
      S(2) => state2_carry_i_2_n_0,
      S(1) => state2_carry_i_3_n_0,
      S(0) => state2_carry_i_4_n_0
    );
\state2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state2_carry_n_0,
      CO(3) => \state2_carry__0_n_0\,
      CO(2) => \state2_carry__0_n_1\,
      CO(1) => \state2_carry__0_n_2\,
      CO(0) => \state2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cs_hold_time_reg(8 downto 5),
      O(3 downto 0) => state2(8 downto 5),
      S(3) => \state2_carry__0_i_1_n_0\,
      S(2) => \state2_carry__0_i_2_n_0\,
      S(1) => \state2_carry__0_i_3_n_0\,
      S(0) => \state2_carry__0_i_4_n_0\
    );
\state2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(8),
      O => \state2_carry__0_i_1_n_0\
    );
\state2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(7),
      O => \state2_carry__0_i_2_n_0\
    );
\state2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(6),
      O => \state2_carry__0_i_3_n_0\
    );
\state2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(5),
      O => \state2_carry__0_i_4_n_0\
    );
\state2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2_carry__0_n_0\,
      CO(3) => \state2_carry__1_n_0\,
      CO(2) => \state2_carry__1_n_1\,
      CO(1) => \state2_carry__1_n_2\,
      CO(0) => \state2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cs_hold_time_reg(12 downto 9),
      O(3 downto 0) => state2(12 downto 9),
      S(3) => \state2_carry__1_i_1_n_0\,
      S(2) => \state2_carry__1_i_2_n_0\,
      S(1) => \state2_carry__1_i_3_n_0\,
      S(0) => \state2_carry__1_i_4_n_0\
    );
\state2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(12),
      O => \state2_carry__1_i_1_n_0\
    );
\state2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(11),
      O => \state2_carry__1_i_2_n_0\
    );
\state2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(10),
      O => \state2_carry__1_i_3_n_0\
    );
\state2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(9),
      O => \state2_carry__1_i_4_n_0\
    );
\state2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state2_carry__1_n_0\,
      CO(3) => \state2_carry__2_n_0\,
      CO(2) => \NLW_state2_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \state2_carry__2_n_2\,
      CO(0) => \state2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => cs_hold_time_reg(15 downto 13),
      O(3) => \NLW_state2_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => state2(15 downto 13),
      S(3) => '1',
      S(2) => \state2_carry__2_i_1_n_0\,
      S(1) => \state2_carry__2_i_2_n_0\,
      S(0) => \state2_carry__2_i_3_n_0\
    );
\state2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(15),
      O => \state2_carry__2_i_1_n_0\
    );
\state2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(14),
      O => \state2_carry__2_i_2_n_0\
    );
\state2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(13),
      O => \state2_carry__2_i_3_n_0\
    );
state2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(4),
      O => state2_carry_i_1_n_0
    );
state2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(3),
      O => state2_carry_i_2_n_0
    );
state2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(2),
      O => state2_carry_i_3_n_0
    );
state2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs_hold_time_reg(1),
      O => state2_carry_i_4_n_0
    );
tx_shift_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tx_shift_reg1_carry_n_0,
      CO(2) => tx_shift_reg1_carry_n_1,
      CO(1) => tx_shift_reg1_carry_n_2,
      CO(0) => tx_shift_reg1_carry_n_3,
      CYINIT => state10_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tx_shift_reg1(4 downto 1),
      S(3) => tx_shift_reg1_carry_i_2_n_0,
      S(2) => tx_shift_reg1_carry_i_3_n_0,
      S(1) => tx_shift_reg1_carry_i_4_n_0,
      S(0) => tx_shift_reg1_carry_i_5_n_0
    );
\tx_shift_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tx_shift_reg1_carry_n_0,
      CO(3) => \tx_shift_reg1_carry__0_n_0\,
      CO(2) => \tx_shift_reg1_carry__0_n_1\,
      CO(1) => \tx_shift_reg1_carry__0_n_2\,
      CO(0) => \tx_shift_reg1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \tx_shift_reg1_carry__0_i_1_n_0\,
      O(3 downto 0) => tx_shift_reg1(8 downto 5),
      S(3) => \tx_shift_reg1_carry__0_i_2_n_0\,
      S(2) => \tx_shift_reg1_carry__0_i_3_n_0\,
      S(1) => \tx_shift_reg1_carry__0_i_4_n_0\,
      S(0) => bits_per_transaction_reg(5)
    );
\tx_shift_reg1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(5),
      O => \tx_shift_reg1_carry__0_i_1_n_0\
    );
\tx_shift_reg1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(8),
      O => \tx_shift_reg1_carry__0_i_2_n_0\
    );
\tx_shift_reg1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(7),
      O => \tx_shift_reg1_carry__0_i_3_n_0\
    );
\tx_shift_reg1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(6),
      O => \tx_shift_reg1_carry__0_i_4_n_0\
    );
\tx_shift_reg1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_shift_reg1_carry__0_n_0\,
      CO(3) => \tx_shift_reg1_carry__1_n_0\,
      CO(2) => \tx_shift_reg1_carry__1_n_1\,
      CO(1) => \tx_shift_reg1_carry__1_n_2\,
      CO(0) => \tx_shift_reg1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tx_shift_reg1(12 downto 9),
      S(3) => \tx_shift_reg1_carry__1_i_1_n_0\,
      S(2) => \tx_shift_reg1_carry__1_i_2_n_0\,
      S(1) => \tx_shift_reg1_carry__1_i_3_n_0\,
      S(0) => \tx_shift_reg1_carry__1_i_4_n_0\
    );
\tx_shift_reg1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(12),
      O => \tx_shift_reg1_carry__1_i_1_n_0\
    );
\tx_shift_reg1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(11),
      O => \tx_shift_reg1_carry__1_i_2_n_0\
    );
\tx_shift_reg1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(10),
      O => \tx_shift_reg1_carry__1_i_3_n_0\
    );
\tx_shift_reg1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(9),
      O => \tx_shift_reg1_carry__1_i_4_n_0\
    );
\tx_shift_reg1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_shift_reg1_carry__1_n_0\,
      CO(3) => \tx_shift_reg1_carry__2_n_0\,
      CO(2) => \NLW_tx_shift_reg1_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \tx_shift_reg1_carry__2_n_2\,
      CO(0) => \tx_shift_reg1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tx_shift_reg1_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => tx_shift_reg1(15 downto 13),
      S(3) => '1',
      S(2) => \tx_shift_reg1_carry__2_i_1_n_0\,
      S(1) => \tx_shift_reg1_carry__2_i_2_n_0\,
      S(0) => \tx_shift_reg1_carry__2_i_3_n_0\
    );
\tx_shift_reg1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(15),
      O => \tx_shift_reg1_carry__2_i_1_n_0\
    );
\tx_shift_reg1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(14),
      O => \tx_shift_reg1_carry__2_i_2_n_0\
    );
\tx_shift_reg1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(13),
      O => \tx_shift_reg1_carry__2_i_3_n_0\
    );
tx_shift_reg1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(0),
      O => state10_in(0)
    );
tx_shift_reg1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(4),
      O => tx_shift_reg1_carry_i_2_n_0
    );
tx_shift_reg1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(3),
      O => tx_shift_reg1_carry_i_3_n_0
    );
tx_shift_reg1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(2),
      O => tx_shift_reg1_carry_i_4_n_0
    );
tx_shift_reg1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_per_transaction_reg(1),
      O => tx_shift_reg1_carry_i_5_n_0
    );
\tx_shift_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_3_n_0\,
      I1 => tx_shift_reg1(2),
      I2 => tx_shift_reg1(4),
      I3 => data_in(0),
      I4 => tx_shift_reg1(3),
      I5 => tx_shift_reg1(1),
      O => tx_shift_reg(0)
    );
\tx_shift_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[10]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[11]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[9]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(10)
    );
\tx_shift_reg[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_shift_reg[10]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[12]_i_3_n_0\,
      O => \tx_shift_reg[10]_i_2_n_0\
    );
\tx_shift_reg[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => data_in(3),
      I1 => tx_shift_reg1(2),
      I2 => tx_shift_reg1(3),
      I3 => tx_shift_reg1(4),
      I4 => data_in(7),
      O => \tx_shift_reg[10]_i_3_n_0\
    );
\tx_shift_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[12]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_3_n_0\,
      I2 => \tx_shift_reg[31]_i_6_n_0\,
      I3 => \tx_shift_reg[11]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[10]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(11)
    );
\tx_shift_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_shift_reg[11]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[13]_i_3_n_0\,
      O => \tx_shift_reg[11]_i_2_n_0\
    );
\tx_shift_reg[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => data_in(4),
      I1 => tx_shift_reg1(2),
      I2 => data_in(0),
      I3 => tx_shift_reg1(3),
      I4 => tx_shift_reg1(4),
      I5 => data_in(8),
      O => \tx_shift_reg[11]_i_3_n_0\
    );
\tx_shift_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[12]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[13]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[11]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(12)
    );
\tx_shift_reg[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_shift_reg[12]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[14]_i_3_n_0\,
      O => \tx_shift_reg[12]_i_2_n_0\
    );
\tx_shift_reg[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => data_in(5),
      I1 => tx_shift_reg1(2),
      I2 => data_in(1),
      I3 => tx_shift_reg1(3),
      I4 => tx_shift_reg1(4),
      I5 => data_in(9),
      O => \tx_shift_reg[12]_i_3_n_0\
    );
\tx_shift_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[13]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[14]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[12]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(13)
    );
\tx_shift_reg[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B888B"
    )
        port map (
      I0 => \tx_shift_reg[13]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[19]_i_3_n_0\,
      I3 => tx_shift_reg1(2),
      I4 => \tx_shift_reg[15]_i_3_n_0\,
      O => \tx_shift_reg[13]_i_2_n_0\
    );
\tx_shift_reg[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => data_in(6),
      I1 => tx_shift_reg1(2),
      I2 => data_in(2),
      I3 => tx_shift_reg1(3),
      I4 => tx_shift_reg1(4),
      I5 => data_in(10),
      O => \tx_shift_reg[13]_i_3_n_0\
    );
\tx_shift_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[14]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[15]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[13]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(14)
    );
\tx_shift_reg[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B888B"
    )
        port map (
      I0 => \tx_shift_reg[14]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[20]_i_3_n_0\,
      I3 => tx_shift_reg1(2),
      I4 => \tx_shift_reg[16]_i_3_n_0\,
      O => \tx_shift_reg[14]_i_2_n_0\
    );
\tx_shift_reg[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => data_in(7),
      I1 => tx_shift_reg1(2),
      I2 => data_in(3),
      I3 => tx_shift_reg1(3),
      I4 => tx_shift_reg1(4),
      I5 => data_in(11),
      O => \tx_shift_reg[14]_i_3_n_0\
    );
\tx_shift_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[15]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[16]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[14]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(15)
    );
\tx_shift_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF505FC0C0505F"
    )
        port map (
      I0 => \tx_shift_reg[19]_i_3_n_0\,
      I1 => \tx_shift_reg[15]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[21]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[17]_i_3_n_0\,
      O => \tx_shift_reg[15]_i_2_n_0\
    );
\tx_shift_reg[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => data_in(0),
      I1 => tx_shift_reg1(3),
      I2 => tx_shift_reg1(4),
      I3 => data_in(8),
      O => \tx_shift_reg[15]_i_3_n_0\
    );
\tx_shift_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444F444F444F"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_3_n_0\,
      I1 => \tx_shift_reg[17]_i_2_n_0\,
      I2 => \tx_shift_reg[31]_i_6_n_0\,
      I3 => \tx_shift_reg[16]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[15]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(16)
    );
\tx_shift_reg[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF505FC0C0505F"
    )
        port map (
      I0 => \tx_shift_reg[20]_i_3_n_0\,
      I1 => \tx_shift_reg[16]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[22]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[18]_i_3_n_0\,
      O => \tx_shift_reg[16]_i_2_n_0\
    );
\tx_shift_reg[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => data_in(1),
      I1 => tx_shift_reg1(3),
      I2 => tx_shift_reg1(4),
      I3 => data_in(9),
      O => \tx_shift_reg[16]_i_3_n_0\
    );
\tx_shift_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[17]_i_2_n_0\,
      I2 => \tx_shift_reg[18]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[16]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(17)
    );
\tx_shift_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => \tx_shift_reg[17]_i_3_n_0\,
      I1 => \tx_shift_reg[21]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[19]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[23]_i_3_n_0\,
      O => \tx_shift_reg[17]_i_2_n_0\
    );
\tx_shift_reg[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => data_in(2),
      I1 => tx_shift_reg1(3),
      I2 => tx_shift_reg1(4),
      I3 => data_in(10),
      O => \tx_shift_reg[17]_i_3_n_0\
    );
\tx_shift_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[18]_i_2_n_0\,
      I2 => \tx_shift_reg[19]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[17]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(18)
    );
\tx_shift_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => \tx_shift_reg[18]_i_3_n_0\,
      I1 => \tx_shift_reg[22]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[20]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[24]_i_3_n_0\,
      O => \tx_shift_reg[18]_i_2_n_0\
    );
\tx_shift_reg[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => data_in(3),
      I1 => tx_shift_reg1(3),
      I2 => tx_shift_reg1(4),
      I3 => data_in(11),
      O => \tx_shift_reg[18]_i_3_n_0\
    );
\tx_shift_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[19]_i_2_n_0\,
      I2 => \tx_shift_reg[20]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[18]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(19)
    );
\tx_shift_reg[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[19]_i_3_n_0\,
      I1 => \tx_shift_reg[23]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[21]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[25]_i_3_n_0\,
      O => \tx_shift_reg[19]_i_2_n_0\
    );
\tx_shift_reg[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data_in(4),
      I1 => tx_shift_reg1(3),
      I2 => data_in(12),
      I3 => tx_shift_reg1(4),
      O => \tx_shift_reg[19]_i_3_n_0\
    );
\tx_shift_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[1]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[2]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[0]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(1)
    );
\tx_shift_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => tx_shift_reg1(1),
      I1 => tx_shift_reg1(3),
      I2 => data_in(0),
      I3 => tx_shift_reg1(4),
      I4 => tx_shift_reg1(2),
      O => \tx_shift_reg[1]_i_2_n_0\
    );
\tx_shift_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[20]_i_2_n_0\,
      I2 => \tx_shift_reg[21]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[19]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(20)
    );
\tx_shift_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[20]_i_3_n_0\,
      I1 => \tx_shift_reg[24]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[22]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[26]_i_3_n_0\,
      O => \tx_shift_reg[20]_i_2_n_0\
    );
\tx_shift_reg[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data_in(5),
      I1 => tx_shift_reg1(3),
      I2 => data_in(13),
      I3 => tx_shift_reg1(4),
      O => \tx_shift_reg[20]_i_3_n_0\
    );
\tx_shift_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[21]_i_2_n_0\,
      I2 => \tx_shift_reg[22]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[20]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(21)
    );
\tx_shift_reg[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[21]_i_3_n_0\,
      I1 => \tx_shift_reg[25]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[23]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[27]_i_3_n_0\,
      O => \tx_shift_reg[21]_i_2_n_0\
    );
\tx_shift_reg[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data_in(6),
      I1 => tx_shift_reg1(3),
      I2 => data_in(14),
      I3 => tx_shift_reg1(4),
      O => \tx_shift_reg[21]_i_3_n_0\
    );
\tx_shift_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[22]_i_2_n_0\,
      I2 => \tx_shift_reg[23]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[21]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(22)
    );
\tx_shift_reg[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[22]_i_3_n_0\,
      I1 => \tx_shift_reg[26]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[24]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[28]_i_3_n_0\,
      O => \tx_shift_reg[22]_i_2_n_0\
    );
\tx_shift_reg[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data_in(7),
      I1 => tx_shift_reg1(3),
      I2 => data_in(15),
      I3 => tx_shift_reg1(4),
      O => \tx_shift_reg[22]_i_3_n_0\
    );
\tx_shift_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[23]_i_2_n_0\,
      I2 => \tx_shift_reg[24]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[22]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(23)
    );
\tx_shift_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[23]_i_3_n_0\,
      I1 => \tx_shift_reg[27]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[25]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[29]_i_3_n_0\,
      O => \tx_shift_reg[23]_i_2_n_0\
    );
\tx_shift_reg[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(8),
      I1 => tx_shift_reg1(3),
      I2 => data_in(0),
      I3 => tx_shift_reg1(4),
      I4 => data_in(16),
      O => \tx_shift_reg[23]_i_3_n_0\
    );
\tx_shift_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[24]_i_2_n_0\,
      I2 => \tx_shift_reg[25]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[23]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(24)
    );
\tx_shift_reg[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[24]_i_3_n_0\,
      I1 => \tx_shift_reg[28]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[26]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[30]_i_3_n_0\,
      O => \tx_shift_reg[24]_i_2_n_0\
    );
\tx_shift_reg[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(9),
      I1 => tx_shift_reg1(3),
      I2 => data_in(1),
      I3 => tx_shift_reg1(4),
      I4 => data_in(17),
      O => \tx_shift_reg[24]_i_3_n_0\
    );
\tx_shift_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[25]_i_2_n_0\,
      I2 => \tx_shift_reg[26]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[24]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(25)
    );
\tx_shift_reg[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[25]_i_3_n_0\,
      I1 => \tx_shift_reg[29]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[27]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_15_n_0\,
      O => \tx_shift_reg[25]_i_2_n_0\
    );
\tx_shift_reg[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(10),
      I1 => tx_shift_reg1(3),
      I2 => data_in(2),
      I3 => tx_shift_reg1(4),
      I4 => data_in(18),
      O => \tx_shift_reg[25]_i_3_n_0\
    );
\tx_shift_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[26]_i_2_n_0\,
      I2 => \tx_shift_reg[27]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[25]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(26)
    );
\tx_shift_reg[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[26]_i_3_n_0\,
      I1 => \tx_shift_reg[30]_i_3_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[28]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_11_n_0\,
      O => \tx_shift_reg[26]_i_2_n_0\
    );
\tx_shift_reg[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(11),
      I1 => tx_shift_reg1(3),
      I2 => data_in(3),
      I3 => tx_shift_reg1(4),
      I4 => data_in(19),
      O => \tx_shift_reg[26]_i_3_n_0\
    );
\tx_shift_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[27]_i_2_n_0\,
      I2 => \tx_shift_reg[28]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[26]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(27)
    );
\tx_shift_reg[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[27]_i_3_n_0\,
      I1 => \tx_shift_reg[31]_i_15_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[29]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_17_n_0\,
      O => \tx_shift_reg[27]_i_2_n_0\
    );
\tx_shift_reg[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(12),
      I1 => tx_shift_reg1(3),
      I2 => data_in(4),
      I3 => tx_shift_reg1(4),
      I4 => data_in(20),
      O => \tx_shift_reg[27]_i_3_n_0\
    );
\tx_shift_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[28]_i_2_n_0\,
      I2 => \tx_shift_reg[29]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[27]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(28)
    );
\tx_shift_reg[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[28]_i_3_n_0\,
      I1 => \tx_shift_reg[31]_i_11_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[30]_i_3_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_13_n_0\,
      O => \tx_shift_reg[28]_i_2_n_0\
    );
\tx_shift_reg[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(13),
      I1 => tx_shift_reg1(3),
      I2 => data_in(5),
      I3 => tx_shift_reg1(4),
      I4 => data_in(21),
      O => \tx_shift_reg[28]_i_3_n_0\
    );
\tx_shift_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[29]_i_2_n_0\,
      I2 => \tx_shift_reg[30]_i_2_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[28]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(29)
    );
\tx_shift_reg[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[29]_i_3_n_0\,
      I1 => \tx_shift_reg[31]_i_17_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[31]_i_15_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_16_n_0\,
      O => \tx_shift_reg[29]_i_2_n_0\
    );
\tx_shift_reg[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(14),
      I1 => tx_shift_reg1(3),
      I2 => data_in(6),
      I3 => tx_shift_reg1(4),
      I4 => data_in(22),
      O => \tx_shift_reg[29]_i_3_n_0\
    );
\tx_shift_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[2]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[3]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[1]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(2)
    );
\tx_shift_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => tx_shift_reg1(1),
      I1 => tx_shift_reg1(3),
      I2 => data_in(1),
      I3 => tx_shift_reg1(4),
      I4 => tx_shift_reg1(2),
      O => \tx_shift_reg[2]_i_2_n_0\
    );
\tx_shift_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_6_n_0\,
      I1 => \tx_shift_reg[30]_i_2_n_0\,
      I2 => \tx_shift_reg[31]_i_5_n_0\,
      I3 => \tx_shift_reg[31]_i_3_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[29]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(30)
    );
\tx_shift_reg[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[30]_i_3_n_0\,
      I1 => \tx_shift_reg[31]_i_13_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[31]_i_11_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_12_n_0\,
      O => \tx_shift_reg[30]_i_2_n_0\
    );
\tx_shift_reg[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(15),
      I1 => tx_shift_reg1(3),
      I2 => data_in(7),
      I3 => tx_shift_reg1(4),
      I4 => data_in(23),
      O => \tx_shift_reg[30]_i_3_n_0\
    );
\tx_shift_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005D00"
    )
        port map (
      I0 => state(1),
      I1 => state12_out,
      I2 => \state0_carry__1_n_1\,
      I3 => state(0),
      I4 => state(2),
      O => tx_shift_reg_1
    );
\tx_shift_reg[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => tx_shift_reg1(6),
      I3 => tx_shift_reg1(11),
      I4 => tx_shift_reg1(5),
      I5 => tx_shift_reg1(9),
      O => \tx_shift_reg[31]_i_10_n_0\
    );
\tx_shift_reg[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(17),
      I2 => tx_shift_reg1(3),
      I3 => data_in(9),
      I4 => tx_shift_reg1(4),
      I5 => data_in(25),
      O => \tx_shift_reg[31]_i_11_n_0\
    );
\tx_shift_reg[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(21),
      I2 => tx_shift_reg1(3),
      I3 => data_in(13),
      I4 => tx_shift_reg1(4),
      I5 => data_in(29),
      O => \tx_shift_reg[31]_i_12_n_0\
    );
\tx_shift_reg[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(19),
      I2 => tx_shift_reg1(3),
      I3 => data_in(11),
      I4 => tx_shift_reg1(4),
      I5 => data_in(27),
      O => \tx_shift_reg[31]_i_13_n_0\
    );
\tx_shift_reg[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(23),
      I2 => tx_shift_reg1(3),
      I3 => data_in(15),
      I4 => tx_shift_reg1(4),
      I5 => data_in(31),
      O => \tx_shift_reg[31]_i_14_n_0\
    );
\tx_shift_reg[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(16),
      I2 => tx_shift_reg1(3),
      I3 => data_in(8),
      I4 => tx_shift_reg1(4),
      I5 => data_in(24),
      O => \tx_shift_reg[31]_i_15_n_0\
    );
\tx_shift_reg[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(4),
      I1 => data_in(20),
      I2 => tx_shift_reg1(3),
      I3 => data_in(12),
      I4 => tx_shift_reg1(4),
      I5 => data_in(28),
      O => \tx_shift_reg[31]_i_16_n_0\
    );
\tx_shift_reg[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(18),
      I2 => tx_shift_reg1(3),
      I3 => data_in(10),
      I4 => tx_shift_reg1(4),
      I5 => data_in(26),
      O => \tx_shift_reg[31]_i_17_n_0\
    );
\tx_shift_reg[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(6),
      I1 => data_in(22),
      I2 => tx_shift_reg1(3),
      I3 => data_in(14),
      I4 => tx_shift_reg1(4),
      I5 => data_in(30),
      O => \tx_shift_reg[31]_i_18_n_0\
    );
\tx_shift_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_3_n_0\,
      I1 => \tx_shift_reg[31]_i_4_n_0\,
      I2 => \tx_shift_reg[31]_i_5_n_0\,
      I3 => \tx_shift_reg[31]_i_6_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[30]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(31)
    );
\tx_shift_reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bits_per_transaction_reg(0),
      I1 => \tx_shift_reg[31]_i_8_n_0\,
      I2 => \tx_shift_reg[31]_i_9_n_0\,
      I3 => \tx_shift_reg[31]_i_10_n_0\,
      O => \tx_shift_reg[31]_i_3_n_0\
    );
\tx_shift_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_11_n_0\,
      I1 => \tx_shift_reg[31]_i_12_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[31]_i_13_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_14_n_0\,
      O => \tx_shift_reg[31]_i_4_n_0\
    );
\tx_shift_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_15_n_0\,
      I1 => \tx_shift_reg[31]_i_16_n_0\,
      I2 => tx_shift_reg1(1),
      I3 => \tx_shift_reg[31]_i_17_n_0\,
      I4 => tx_shift_reg1(2),
      I5 => \tx_shift_reg[31]_i_18_n_0\,
      O => \tx_shift_reg[31]_i_5_n_0\
    );
\tx_shift_reg[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \tx_shift_reg[31]_i_8_n_0\,
      I1 => \tx_shift_reg[31]_i_9_n_0\,
      I2 => \tx_shift_reg[31]_i_10_n_0\,
      I3 => bits_per_transaction_reg(0),
      O => \tx_shift_reg[31]_i_6_n_0\
    );
\tx_shift_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \tx_shift_reg[31]_i_7_n_0\
    );
\tx_shift_reg[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tx_shift_reg1(8),
      I1 => tx_shift_reg1(7),
      I2 => tx_shift_reg1(14),
      I3 => tx_shift_reg1(12),
      O => \tx_shift_reg[31]_i_8_n_0\
    );
\tx_shift_reg[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \tx_shift_reg1_carry__2_n_0\,
      I1 => tx_shift_reg1(15),
      I2 => tx_shift_reg1(13),
      I3 => tx_shift_reg1(10),
      O => \tx_shift_reg[31]_i_9_n_0\
    );
\tx_shift_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[3]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[4]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[2]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(3)
    );
\tx_shift_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFF7"
    )
        port map (
      I0 => data_in(0),
      I1 => tx_shift_reg1(1),
      I2 => tx_shift_reg1(2),
      I3 => tx_shift_reg1(4),
      I4 => data_in(2),
      I5 => tx_shift_reg1(3),
      O => \tx_shift_reg[3]_i_2_n_0\
    );
\tx_shift_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[5]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_3_n_0\,
      I2 => \tx_shift_reg[31]_i_6_n_0\,
      I3 => \tx_shift_reg[4]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[3]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(4)
    );
\tx_shift_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFF7"
    )
        port map (
      I0 => data_in(1),
      I1 => tx_shift_reg1(1),
      I2 => tx_shift_reg1(2),
      I3 => tx_shift_reg1(4),
      I4 => data_in(3),
      I5 => tx_shift_reg1(3),
      O => \tx_shift_reg[4]_i_2_n_0\
    );
\tx_shift_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[5]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[6]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[4]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(5)
    );
\tx_shift_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFEF0000"
    )
        port map (
      I0 => tx_shift_reg1(2),
      I1 => tx_shift_reg1(4),
      I2 => data_in(2),
      I3 => tx_shift_reg1(3),
      I4 => tx_shift_reg1(1),
      I5 => \tx_shift_reg[7]_i_3_n_0\,
      O => \tx_shift_reg[5]_i_2_n_0\
    );
\tx_shift_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[6]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[7]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[5]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(6)
    );
\tx_shift_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFEF0000"
    )
        port map (
      I0 => tx_shift_reg1(2),
      I1 => tx_shift_reg1(4),
      I2 => data_in(3),
      I3 => tx_shift_reg1(3),
      I4 => tx_shift_reg1(1),
      I5 => \tx_shift_reg[8]_i_3_n_0\,
      O => \tx_shift_reg[6]_i_2_n_0\
    );
\tx_shift_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[8]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[6]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(7)
    );
\tx_shift_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[9]_i_3_n_0\,
      O => \tx_shift_reg[7]_i_2_n_0\
    );
\tx_shift_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => data_in(0),
      I1 => tx_shift_reg1(2),
      I2 => tx_shift_reg1(3),
      I3 => tx_shift_reg1(4),
      I4 => data_in(4),
      O => \tx_shift_reg[7]_i_3_n_0\
    );
\tx_shift_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[9]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_3_n_0\,
      I2 => \tx_shift_reg[31]_i_6_n_0\,
      I3 => \tx_shift_reg[8]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[7]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(8)
    );
\tx_shift_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_shift_reg[8]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[10]_i_3_n_0\,
      O => \tx_shift_reg[8]_i_2_n_0\
    );
\tx_shift_reg[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => data_in(1),
      I1 => tx_shift_reg1(2),
      I2 => tx_shift_reg1(3),
      I3 => tx_shift_reg1(4),
      I4 => data_in(5),
      O => \tx_shift_reg[8]_i_3_n_0\
    );
\tx_shift_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F111F111F"
    )
        port map (
      I0 => \tx_shift_reg[9]_i_2_n_0\,
      I1 => \tx_shift_reg[31]_i_6_n_0\,
      I2 => \tx_shift_reg[31]_i_3_n_0\,
      I3 => \tx_shift_reg[10]_i_2_n_0\,
      I4 => \tx_shift_reg_reg_n_0_[8]\,
      I5 => \tx_shift_reg[31]_i_7_n_0\,
      O => tx_shift_reg(9)
    );
\tx_shift_reg[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_shift_reg[9]_i_3_n_0\,
      I1 => tx_shift_reg1(1),
      I2 => \tx_shift_reg[11]_i_3_n_0\,
      O => \tx_shift_reg[9]_i_2_n_0\
    );
\tx_shift_reg[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => data_in(2),
      I1 => tx_shift_reg1(2),
      I2 => tx_shift_reg1(3),
      I3 => tx_shift_reg1(4),
      I4 => data_in(6),
      O => \tx_shift_reg[9]_i_3_n_0\
    );
\tx_shift_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(0),
      Q => \tx_shift_reg_reg_n_0_[0]\
    );
\tx_shift_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(10),
      Q => \tx_shift_reg_reg_n_0_[10]\
    );
\tx_shift_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(11),
      Q => \tx_shift_reg_reg_n_0_[11]\
    );
\tx_shift_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(12),
      Q => \tx_shift_reg_reg_n_0_[12]\
    );
\tx_shift_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(13),
      Q => \tx_shift_reg_reg_n_0_[13]\
    );
\tx_shift_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(14),
      Q => \tx_shift_reg_reg_n_0_[14]\
    );
\tx_shift_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(15),
      Q => \tx_shift_reg_reg_n_0_[15]\
    );
\tx_shift_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(16),
      Q => \tx_shift_reg_reg_n_0_[16]\
    );
\tx_shift_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(17),
      Q => \tx_shift_reg_reg_n_0_[17]\
    );
\tx_shift_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(18),
      Q => \tx_shift_reg_reg_n_0_[18]\
    );
\tx_shift_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(19),
      Q => \tx_shift_reg_reg_n_0_[19]\
    );
\tx_shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(1),
      Q => \tx_shift_reg_reg_n_0_[1]\
    );
\tx_shift_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(20),
      Q => \tx_shift_reg_reg_n_0_[20]\
    );
\tx_shift_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(21),
      Q => \tx_shift_reg_reg_n_0_[21]\
    );
\tx_shift_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(22),
      Q => \tx_shift_reg_reg_n_0_[22]\
    );
\tx_shift_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(23),
      Q => \tx_shift_reg_reg_n_0_[23]\
    );
\tx_shift_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(24),
      Q => \tx_shift_reg_reg_n_0_[24]\
    );
\tx_shift_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(25),
      Q => \tx_shift_reg_reg_n_0_[25]\
    );
\tx_shift_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(26),
      Q => \tx_shift_reg_reg_n_0_[26]\
    );
\tx_shift_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(27),
      Q => \tx_shift_reg_reg_n_0_[27]\
    );
\tx_shift_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(28),
      Q => \tx_shift_reg_reg_n_0_[28]\
    );
\tx_shift_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(29),
      Q => \tx_shift_reg_reg_n_0_[29]\
    );
\tx_shift_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(2),
      Q => \tx_shift_reg_reg_n_0_[2]\
    );
\tx_shift_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(30),
      Q => \tx_shift_reg_reg_n_0_[30]\
    );
\tx_shift_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(31),
      Q => p_0_in
    );
\tx_shift_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(3),
      Q => \tx_shift_reg_reg_n_0_[3]\
    );
\tx_shift_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(4),
      Q => \tx_shift_reg_reg_n_0_[4]\
    );
\tx_shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(5),
      Q => \tx_shift_reg_reg_n_0_[5]\
    );
\tx_shift_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(6),
      Q => \tx_shift_reg_reg_n_0_[6]\
    );
\tx_shift_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(7),
      Q => \tx_shift_reg_reg_n_0_[7]\
    );
\tx_shift_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(8),
      Q => \tx_shift_reg_reg_n_0_[8]\
    );
\tx_shift_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => tx_shift_reg_1,
      CLR => \data_out[31]_i_2_n_0\,
      D => tx_shift_reg(9),
      Q => \tx_shift_reg_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_bd_1_spi_interface_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    ss_n : out STD_LOGIC;
    spi_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bits_per_transaction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cycles_per_bit : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclk_high_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclk_low_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdo_change_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdi_sample_offset : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cs_to_trx_delay : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cs_hold_time : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_bd_1_spi_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_bd_1_spi_interface_0_0 : entity is "dac_bd_1_spi_interface_0_0,spi_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dac_bd_1_spi_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dac_bd_1_spi_interface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dac_bd_1_spi_interface_0_0 : entity is "spi_interface,Vivado 2023.1";
end dac_bd_1_spi_interface_0_0;

architecture STRUCTURE of dac_bd_1_spi_interface_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.dac_bd_1_spi_interface_0_0_spi_interface
     port map (
      bits_per_transaction(15 downto 0) => bits_per_transaction(15 downto 0),
      busy => busy,
      clk => clk,
      cs_hold_time(15 downto 0) => cs_hold_time(15 downto 0),
      cs_to_trx_delay(15 downto 0) => cs_to_trx_delay(15 downto 0),
      cycles_per_bit(15 downto 0) => cycles_per_bit(15 downto 0),
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(31 downto 0) => data_out(31 downto 0),
      done => done,
      miso => miso,
      mosi => mosi,
      rst_n => rst_n,
      sclk => sclk,
      sclk_high_offset(15 downto 0) => sclk_high_offset(15 downto 0),
      sclk_low_offset(15 downto 0) => sclk_low_offset(15 downto 0),
      sdi_sample_offset(15 downto 0) => sdi_sample_offset(15 downto 0),
      spi_mode(0) => spi_mode(1),
      ss_n => ss_n,
      start => start
    );
end STRUCTURE;
