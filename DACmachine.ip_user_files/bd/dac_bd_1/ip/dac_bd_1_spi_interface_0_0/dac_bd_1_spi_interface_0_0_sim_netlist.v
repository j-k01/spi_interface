// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Jun  6 21:56:03 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_spi_interface_0_0/dac_bd_1_spi_interface_0_0_sim_netlist.v
// Design      : dac_bd_1_spi_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_spi_interface_0_0,spi_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_interface,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_spi_interface_0_0
   (clk,
    rst_n,
    data_in,
    start,
    data_out,
    busy,
    done,
    sclk,
    mosi,
    miso,
    ss_n,
    spi_mode,
    bits_per_transaction,
    cycles_per_bit,
    sclk_high_offset,
    sclk_low_offset,
    sdo_change_offset,
    sdi_sample_offset,
    cs_to_trx_delay,
    cs_hold_time);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [31:0]data_in;
  input start;
  output [31:0]data_out;
  output busy;
  output done;
  output sclk;
  output mosi;
  input miso;
  output ss_n;
  input [1:0]spi_mode;
  input [15:0]bits_per_transaction;
  input [15:0]cycles_per_bit;
  input [15:0]sclk_high_offset;
  input [15:0]sclk_low_offset;
  input [15:0]sdo_change_offset;
  input [15:0]sdi_sample_offset;
  input [15:0]cs_to_trx_delay;
  input [15:0]cs_hold_time;

  wire [15:0]bits_per_transaction;
  wire busy;
  wire clk;
  wire [15:0]cs_hold_time;
  wire [15:0]cs_to_trx_delay;
  wire [15:0]cycles_per_bit;
  wire [31:0]data_in;
  wire [31:0]data_out;
  wire done;
  wire miso;
  wire mosi;
  wire rst_n;
  wire sclk;
  wire [15:0]sclk_high_offset;
  wire [15:0]sclk_low_offset;
  wire [15:0]sdi_sample_offset;
  wire [1:0]spi_mode;
  wire ss_n;
  wire start;

  dac_bd_1_spi_interface_0_0_spi_interface inst
       (.bits_per_transaction(bits_per_transaction),
        .busy(busy),
        .clk(clk),
        .cs_hold_time(cs_hold_time),
        .cs_to_trx_delay(cs_to_trx_delay),
        .cycles_per_bit(cycles_per_bit),
        .data_in(data_in),
        .data_out(data_out),
        .done(done),
        .miso(miso),
        .mosi(mosi),
        .rst_n(rst_n),
        .sclk(sclk),
        .sclk_high_offset(sclk_high_offset),
        .sclk_low_offset(sclk_low_offset),
        .sdi_sample_offset(sdi_sample_offset),
        .spi_mode(spi_mode[1]),
        .ss_n(ss_n),
        .start(start));
endmodule

(* ORIG_REF_NAME = "spi_interface" *) 
module dac_bd_1_spi_interface_0_0_spi_interface
   (ss_n,
    busy,
    data_out,
    done,
    sclk,
    mosi,
    start,
    clk,
    cs_hold_time,
    sdi_sample_offset,
    cycles_per_bit,
    bits_per_transaction,
    sclk_high_offset,
    sclk_low_offset,
    spi_mode,
    cs_to_trx_delay,
    data_in,
    miso,
    rst_n);
  output ss_n;
  output busy;
  output [31:0]data_out;
  output done;
  output sclk;
  output mosi;
  input start;
  input clk;
  input [15:0]cs_hold_time;
  input [15:0]sdi_sample_offset;
  input [15:0]cycles_per_bit;
  input [15:0]bits_per_transaction;
  input [15:0]sclk_high_offset;
  input [15:0]sclk_low_offset;
  input [0:0]spi_mode;
  input [15:0]cs_to_trx_delay;
  input [31:0]data_in;
  input miso;
  input rst_n;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire [15:0]bit_counter;
  wire [15:1]bit_counter0;
  wire bit_counter0_carry__0_n_0;
  wire bit_counter0_carry__0_n_1;
  wire bit_counter0_carry__0_n_2;
  wire bit_counter0_carry__0_n_3;
  wire bit_counter0_carry__1_n_0;
  wire bit_counter0_carry__1_n_1;
  wire bit_counter0_carry__1_n_2;
  wire bit_counter0_carry__1_n_3;
  wire bit_counter0_carry__2_n_2;
  wire bit_counter0_carry__2_n_3;
  wire bit_counter0_carry_n_0;
  wire bit_counter0_carry_n_1;
  wire bit_counter0_carry_n_2;
  wire bit_counter0_carry_n_3;
  wire bit_counter_3;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[10] ;
  wire \bit_counter_reg_n_0_[11] ;
  wire \bit_counter_reg_n_0_[12] ;
  wire \bit_counter_reg_n_0_[13] ;
  wire \bit_counter_reg_n_0_[14] ;
  wire \bit_counter_reg_n_0_[15] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire \bit_counter_reg_n_0_[5] ;
  wire \bit_counter_reg_n_0_[6] ;
  wire \bit_counter_reg_n_0_[7] ;
  wire \bit_counter_reg_n_0_[8] ;
  wire \bit_counter_reg_n_0_[9] ;
  wire [15:0]bits_per_transaction;
  wire [15:0]bits_per_transaction_reg;
  wire busy;
  wire busy_i_1_n_0;
  wire clk;
  wire cpol;
  wire [15:0]cs_hold_time;
  wire [15:0]cs_hold_time_reg;
  wire \cs_hold_time_reg[15]_i_1_n_0 ;
  wire [15:0]cs_to_trx_delay;
  wire [15:0]cs_to_trx_delay_reg;
  wire [15:0]cycle_counter;
  wire [15:1]cycle_counter0;
  wire cycle_counter0_carry__0_n_0;
  wire cycle_counter0_carry__0_n_1;
  wire cycle_counter0_carry__0_n_2;
  wire cycle_counter0_carry__0_n_3;
  wire cycle_counter0_carry__1_n_0;
  wire cycle_counter0_carry__1_n_1;
  wire cycle_counter0_carry__1_n_2;
  wire cycle_counter0_carry__1_n_3;
  wire cycle_counter0_carry__2_n_2;
  wire cycle_counter0_carry__2_n_3;
  wire cycle_counter0_carry_n_0;
  wire cycle_counter0_carry_n_1;
  wire cycle_counter0_carry_n_2;
  wire cycle_counter0_carry_n_3;
  wire \cycle_counter[15]_i_1_n_0 ;
  wire \cycle_counter_reg_n_0_[0] ;
  wire \cycle_counter_reg_n_0_[10] ;
  wire \cycle_counter_reg_n_0_[11] ;
  wire \cycle_counter_reg_n_0_[12] ;
  wire \cycle_counter_reg_n_0_[13] ;
  wire \cycle_counter_reg_n_0_[14] ;
  wire \cycle_counter_reg_n_0_[15] ;
  wire \cycle_counter_reg_n_0_[1] ;
  wire \cycle_counter_reg_n_0_[2] ;
  wire \cycle_counter_reg_n_0_[3] ;
  wire \cycle_counter_reg_n_0_[4] ;
  wire \cycle_counter_reg_n_0_[5] ;
  wire \cycle_counter_reg_n_0_[6] ;
  wire \cycle_counter_reg_n_0_[7] ;
  wire \cycle_counter_reg_n_0_[8] ;
  wire \cycle_counter_reg_n_0_[9] ;
  wire [15:0]cycles_per_bit;
  wire [15:0]cycles_per_bit_reg;
  wire [31:0]data_in;
  wire [31:0]data_out;
  wire \data_out[31]_i_1_n_0 ;
  wire \data_out[31]_i_2_n_0 ;
  wire \data_out[31]_i_3_n_0 ;
  wire \data_out[31]_i_4_n_0 ;
  wire \data_out[31]_i_5_n_0 ;
  wire \data_out[31]_i_6_n_0 ;
  wire \data_out[31]_i_7_n_0 ;
  wire [15:0]delay_counter;
  wire delay_counter0_carry__0_n_0;
  wire delay_counter0_carry__0_n_1;
  wire delay_counter0_carry__0_n_2;
  wire delay_counter0_carry__0_n_3;
  wire delay_counter0_carry__1_n_0;
  wire delay_counter0_carry__1_n_1;
  wire delay_counter0_carry__1_n_2;
  wire delay_counter0_carry__1_n_3;
  wire delay_counter0_carry__2_n_2;
  wire delay_counter0_carry__2_n_3;
  wire delay_counter0_carry_n_0;
  wire delay_counter0_carry_n_1;
  wire delay_counter0_carry_n_2;
  wire delay_counter0_carry_n_3;
  wire delay_counter_0;
  wire \delay_counter_reg_n_0_[0] ;
  wire \delay_counter_reg_n_0_[10] ;
  wire \delay_counter_reg_n_0_[11] ;
  wire \delay_counter_reg_n_0_[12] ;
  wire \delay_counter_reg_n_0_[13] ;
  wire \delay_counter_reg_n_0_[14] ;
  wire \delay_counter_reg_n_0_[15] ;
  wire \delay_counter_reg_n_0_[1] ;
  wire \delay_counter_reg_n_0_[2] ;
  wire \delay_counter_reg_n_0_[3] ;
  wire \delay_counter_reg_n_0_[4] ;
  wire \delay_counter_reg_n_0_[5] ;
  wire \delay_counter_reg_n_0_[6] ;
  wire \delay_counter_reg_n_0_[7] ;
  wire \delay_counter_reg_n_0_[8] ;
  wire \delay_counter_reg_n_0_[9] ;
  wire done;
  wire [15:1]in15;
  wire miso;
  wire mosi;
  wire mosi_i_1_n_0;
  wire p_0_in;
  wire rst_n;
  wire [31:0]rx_shift_reg;
  wire rx_shift_reg0;
  wire rx_shift_reg0_carry__0_i_1_n_0;
  wire rx_shift_reg0_carry__0_i_2_n_0;
  wire rx_shift_reg0_carry__0_n_3;
  wire rx_shift_reg0_carry_i_1_n_0;
  wire rx_shift_reg0_carry_i_2_n_0;
  wire rx_shift_reg0_carry_i_3_n_0;
  wire rx_shift_reg0_carry_i_4_n_0;
  wire rx_shift_reg0_carry_n_0;
  wire rx_shift_reg0_carry_n_1;
  wire rx_shift_reg0_carry_n_2;
  wire rx_shift_reg0_carry_n_3;
  wire rx_shift_reg_2;
  wire \rx_shift_reg_reg_n_0_[0] ;
  wire \rx_shift_reg_reg_n_0_[10] ;
  wire \rx_shift_reg_reg_n_0_[11] ;
  wire \rx_shift_reg_reg_n_0_[12] ;
  wire \rx_shift_reg_reg_n_0_[13] ;
  wire \rx_shift_reg_reg_n_0_[14] ;
  wire \rx_shift_reg_reg_n_0_[15] ;
  wire \rx_shift_reg_reg_n_0_[16] ;
  wire \rx_shift_reg_reg_n_0_[17] ;
  wire \rx_shift_reg_reg_n_0_[18] ;
  wire \rx_shift_reg_reg_n_0_[19] ;
  wire \rx_shift_reg_reg_n_0_[1] ;
  wire \rx_shift_reg_reg_n_0_[20] ;
  wire \rx_shift_reg_reg_n_0_[21] ;
  wire \rx_shift_reg_reg_n_0_[22] ;
  wire \rx_shift_reg_reg_n_0_[23] ;
  wire \rx_shift_reg_reg_n_0_[24] ;
  wire \rx_shift_reg_reg_n_0_[25] ;
  wire \rx_shift_reg_reg_n_0_[26] ;
  wire \rx_shift_reg_reg_n_0_[27] ;
  wire \rx_shift_reg_reg_n_0_[28] ;
  wire \rx_shift_reg_reg_n_0_[29] ;
  wire \rx_shift_reg_reg_n_0_[2] ;
  wire \rx_shift_reg_reg_n_0_[30] ;
  wire \rx_shift_reg_reg_n_0_[31] ;
  wire \rx_shift_reg_reg_n_0_[3] ;
  wire \rx_shift_reg_reg_n_0_[4] ;
  wire \rx_shift_reg_reg_n_0_[5] ;
  wire \rx_shift_reg_reg_n_0_[6] ;
  wire \rx_shift_reg_reg_n_0_[7] ;
  wire \rx_shift_reg_reg_n_0_[8] ;
  wire \rx_shift_reg_reg_n_0_[9] ;
  wire sclk;
  wire sclk0;
  wire sclk0_carry__0_i_1_n_0;
  wire sclk0_carry__0_i_2_n_0;
  wire sclk0_carry__0_n_3;
  wire sclk0_carry_i_1_n_0;
  wire sclk0_carry_i_2_n_0;
  wire sclk0_carry_i_3_n_0;
  wire sclk0_carry_i_4_n_0;
  wire sclk0_carry_n_0;
  wire sclk0_carry_n_1;
  wire sclk0_carry_n_2;
  wire sclk0_carry_n_3;
  wire sclk1;
  wire sclk1_carry__0_i_1_n_0;
  wire sclk1_carry__0_i_2_n_0;
  wire sclk1_carry__0_n_3;
  wire sclk1_carry_i_1_n_0;
  wire sclk1_carry_i_2_n_0;
  wire sclk1_carry_i_3_n_0;
  wire sclk1_carry_i_4_n_0;
  wire sclk1_carry_n_0;
  wire sclk1_carry_n_1;
  wire sclk1_carry_n_2;
  wire sclk1_carry_n_3;
  wire [15:0]sclk_high_offset;
  wire [15:0]sclk_high_offset_reg;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire sclk_i_3_n_0;
  wire [15:0]sclk_low_offset;
  wire [15:0]sclk_low_offset_reg;
  wire [15:0]sdi_sample_offset;
  wire [15:0]sdi_sample_offset_reg;
  wire [0:0]spi_mode;
  wire ss_n;
  wire ss_n_i_1_n_0;
  wire start;
  wire [2:0]state;
  wire state0_carry__0_i_1_n_0;
  wire state0_carry__0_i_2_n_0;
  wire state0_carry__0_n_0;
  wire state0_carry__0_n_1;
  wire state0_carry__0_n_2;
  wire state0_carry__0_n_3;
  wire state0_carry__1_n_1;
  wire state0_carry__1_n_2;
  wire state0_carry__1_n_3;
  wire state0_carry_i_1_n_0;
  wire state0_carry_i_2_n_0;
  wire state0_carry_i_3_n_0;
  wire state0_carry_i_4_n_0;
  wire state0_carry_n_0;
  wire state0_carry_n_1;
  wire state0_carry_n_2;
  wire state0_carry_n_3;
  wire state1;
  wire [15:0]state10_in;
  wire state12_out;
  wire state14_out;
  wire state1__10_carry__0_i_1_n_0;
  wire state1__10_carry__0_i_2_n_0;
  wire state1__10_carry__0_n_0;
  wire state1__10_carry__0_n_1;
  wire state1__10_carry__0_n_2;
  wire state1__10_carry__0_n_3;
  wire state1__10_carry__1_n_2;
  wire state1__10_carry__1_n_3;
  wire state1__10_carry_i_1_n_0;
  wire state1__10_carry_i_2_n_0;
  wire state1__10_carry_i_3_n_0;
  wire state1__10_carry_i_4_n_0;
  wire state1__10_carry_n_0;
  wire state1__10_carry_n_1;
  wire state1__10_carry_n_2;
  wire state1__10_carry_n_3;
  wire state1__21_carry__0_i_1_n_0;
  wire state1__21_carry__0_i_2_n_0;
  wire state1__21_carry__0_i_3_n_0;
  wire state1__21_carry__0_i_4_n_0;
  wire state1__21_carry__0_n_0;
  wire state1__21_carry__0_n_1;
  wire state1__21_carry__0_n_2;
  wire state1__21_carry__0_n_3;
  wire state1__21_carry__1_i_1_n_0;
  wire state1__21_carry__1_i_2_n_0;
  wire state1__21_carry__1_i_3_n_0;
  wire state1__21_carry__1_i_4_n_0;
  wire state1__21_carry__1_n_0;
  wire state1__21_carry__1_n_1;
  wire state1__21_carry__1_n_2;
  wire state1__21_carry__1_n_3;
  wire state1__21_carry__2_i_1_n_0;
  wire state1__21_carry__2_i_2_n_0;
  wire state1__21_carry__2_i_3_n_0;
  wire state1__21_carry__2_n_0;
  wire state1__21_carry__2_n_2;
  wire state1__21_carry__2_n_3;
  wire state1__21_carry_i_1_n_0;
  wire state1__21_carry_i_2_n_0;
  wire state1__21_carry_i_3_n_0;
  wire state1__21_carry_i_4_n_0;
  wire state1__21_carry_n_0;
  wire state1__21_carry_n_1;
  wire state1__21_carry_n_2;
  wire state1__21_carry_n_3;
  wire state1__51_carry__0_i_1_n_0;
  wire state1__51_carry__0_i_2_n_0;
  wire state1__51_carry__0_n_0;
  wire state1__51_carry__0_n_1;
  wire state1__51_carry__0_n_2;
  wire state1__51_carry__0_n_3;
  wire state1__51_carry__1_n_2;
  wire state1__51_carry__1_n_3;
  wire state1__51_carry_i_1_n_0;
  wire state1__51_carry_i_2_n_0;
  wire state1__51_carry_i_3_n_0;
  wire state1__51_carry_i_4_n_0;
  wire state1__51_carry_n_0;
  wire state1__51_carry_n_1;
  wire state1__51_carry_n_2;
  wire state1__51_carry_n_3;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire [15:1]state2;
  wire [15:1]state21_in;
  wire [15:1]state23_in;
  wire state2__29_carry__0_i_1_n_0;
  wire state2__29_carry__0_i_2_n_0;
  wire state2__29_carry__0_i_3_n_0;
  wire state2__29_carry__0_i_4_n_0;
  wire state2__29_carry__0_n_0;
  wire state2__29_carry__0_n_1;
  wire state2__29_carry__0_n_2;
  wire state2__29_carry__0_n_3;
  wire state2__29_carry__1_i_1_n_0;
  wire state2__29_carry__1_i_2_n_0;
  wire state2__29_carry__1_i_3_n_0;
  wire state2__29_carry__1_i_4_n_0;
  wire state2__29_carry__1_n_0;
  wire state2__29_carry__1_n_1;
  wire state2__29_carry__1_n_2;
  wire state2__29_carry__1_n_3;
  wire state2__29_carry__2_i_1_n_0;
  wire state2__29_carry__2_i_2_n_0;
  wire state2__29_carry__2_i_3_n_0;
  wire state2__29_carry__2_n_0;
  wire state2__29_carry__2_n_2;
  wire state2__29_carry__2_n_3;
  wire state2__29_carry_i_1_n_0;
  wire state2__29_carry_i_2_n_0;
  wire state2__29_carry_i_3_n_0;
  wire state2__29_carry_i_4_n_0;
  wire state2__29_carry_n_0;
  wire state2__29_carry_n_1;
  wire state2__29_carry_n_2;
  wire state2__29_carry_n_3;
  wire state2__59_carry__0_i_1_n_0;
  wire state2__59_carry__0_i_2_n_0;
  wire state2__59_carry__0_i_3_n_0;
  wire state2__59_carry__0_i_4_n_0;
  wire state2__59_carry__0_n_0;
  wire state2__59_carry__0_n_1;
  wire state2__59_carry__0_n_2;
  wire state2__59_carry__0_n_3;
  wire state2__59_carry__1_i_1_n_0;
  wire state2__59_carry__1_i_2_n_0;
  wire state2__59_carry__1_i_3_n_0;
  wire state2__59_carry__1_i_4_n_0;
  wire state2__59_carry__1_n_0;
  wire state2__59_carry__1_n_1;
  wire state2__59_carry__1_n_2;
  wire state2__59_carry__1_n_3;
  wire state2__59_carry__2_i_1_n_0;
  wire state2__59_carry__2_i_2_n_0;
  wire state2__59_carry__2_i_3_n_0;
  wire state2__59_carry__2_n_0;
  wire state2__59_carry__2_n_2;
  wire state2__59_carry__2_n_3;
  wire state2__59_carry_i_1_n_0;
  wire state2__59_carry_i_2_n_0;
  wire state2__59_carry_i_3_n_0;
  wire state2__59_carry_i_4_n_0;
  wire state2__59_carry_n_0;
  wire state2__59_carry_n_1;
  wire state2__59_carry_n_2;
  wire state2__59_carry_n_3;
  wire state2_carry__0_i_1_n_0;
  wire state2_carry__0_i_2_n_0;
  wire state2_carry__0_i_3_n_0;
  wire state2_carry__0_i_4_n_0;
  wire state2_carry__0_n_0;
  wire state2_carry__0_n_1;
  wire state2_carry__0_n_2;
  wire state2_carry__0_n_3;
  wire state2_carry__1_i_1_n_0;
  wire state2_carry__1_i_2_n_0;
  wire state2_carry__1_i_3_n_0;
  wire state2_carry__1_i_4_n_0;
  wire state2_carry__1_n_0;
  wire state2_carry__1_n_1;
  wire state2_carry__1_n_2;
  wire state2_carry__1_n_3;
  wire state2_carry__2_i_1_n_0;
  wire state2_carry__2_i_2_n_0;
  wire state2_carry__2_i_3_n_0;
  wire state2_carry__2_n_0;
  wire state2_carry__2_n_2;
  wire state2_carry__2_n_3;
  wire state2_carry_i_1_n_0;
  wire state2_carry_i_2_n_0;
  wire state2_carry_i_3_n_0;
  wire state2_carry_i_4_n_0;
  wire state2_carry_n_0;
  wire state2_carry_n_1;
  wire state2_carry_n_2;
  wire state2_carry_n_3;
  wire [31:0]tx_shift_reg;
  wire [15:1]tx_shift_reg1;
  wire tx_shift_reg1_carry__0_i_1_n_0;
  wire tx_shift_reg1_carry__0_i_2_n_0;
  wire tx_shift_reg1_carry__0_i_3_n_0;
  wire tx_shift_reg1_carry__0_i_4_n_0;
  wire tx_shift_reg1_carry__0_n_0;
  wire tx_shift_reg1_carry__0_n_1;
  wire tx_shift_reg1_carry__0_n_2;
  wire tx_shift_reg1_carry__0_n_3;
  wire tx_shift_reg1_carry__1_i_1_n_0;
  wire tx_shift_reg1_carry__1_i_2_n_0;
  wire tx_shift_reg1_carry__1_i_3_n_0;
  wire tx_shift_reg1_carry__1_i_4_n_0;
  wire tx_shift_reg1_carry__1_n_0;
  wire tx_shift_reg1_carry__1_n_1;
  wire tx_shift_reg1_carry__1_n_2;
  wire tx_shift_reg1_carry__1_n_3;
  wire tx_shift_reg1_carry__2_i_1_n_0;
  wire tx_shift_reg1_carry__2_i_2_n_0;
  wire tx_shift_reg1_carry__2_i_3_n_0;
  wire tx_shift_reg1_carry__2_n_0;
  wire tx_shift_reg1_carry__2_n_2;
  wire tx_shift_reg1_carry__2_n_3;
  wire tx_shift_reg1_carry_i_2_n_0;
  wire tx_shift_reg1_carry_i_3_n_0;
  wire tx_shift_reg1_carry_i_4_n_0;
  wire tx_shift_reg1_carry_i_5_n_0;
  wire tx_shift_reg1_carry_n_0;
  wire tx_shift_reg1_carry_n_1;
  wire tx_shift_reg1_carry_n_2;
  wire tx_shift_reg1_carry_n_3;
  wire \tx_shift_reg[10]_i_2_n_0 ;
  wire \tx_shift_reg[10]_i_3_n_0 ;
  wire \tx_shift_reg[11]_i_2_n_0 ;
  wire \tx_shift_reg[11]_i_3_n_0 ;
  wire \tx_shift_reg[12]_i_2_n_0 ;
  wire \tx_shift_reg[12]_i_3_n_0 ;
  wire \tx_shift_reg[13]_i_2_n_0 ;
  wire \tx_shift_reg[13]_i_3_n_0 ;
  wire \tx_shift_reg[14]_i_2_n_0 ;
  wire \tx_shift_reg[14]_i_3_n_0 ;
  wire \tx_shift_reg[15]_i_2_n_0 ;
  wire \tx_shift_reg[15]_i_3_n_0 ;
  wire \tx_shift_reg[16]_i_2_n_0 ;
  wire \tx_shift_reg[16]_i_3_n_0 ;
  wire \tx_shift_reg[17]_i_2_n_0 ;
  wire \tx_shift_reg[17]_i_3_n_0 ;
  wire \tx_shift_reg[18]_i_2_n_0 ;
  wire \tx_shift_reg[18]_i_3_n_0 ;
  wire \tx_shift_reg[19]_i_2_n_0 ;
  wire \tx_shift_reg[19]_i_3_n_0 ;
  wire \tx_shift_reg[1]_i_2_n_0 ;
  wire \tx_shift_reg[20]_i_2_n_0 ;
  wire \tx_shift_reg[20]_i_3_n_0 ;
  wire \tx_shift_reg[21]_i_2_n_0 ;
  wire \tx_shift_reg[21]_i_3_n_0 ;
  wire \tx_shift_reg[22]_i_2_n_0 ;
  wire \tx_shift_reg[22]_i_3_n_0 ;
  wire \tx_shift_reg[23]_i_2_n_0 ;
  wire \tx_shift_reg[23]_i_3_n_0 ;
  wire \tx_shift_reg[24]_i_2_n_0 ;
  wire \tx_shift_reg[24]_i_3_n_0 ;
  wire \tx_shift_reg[25]_i_2_n_0 ;
  wire \tx_shift_reg[25]_i_3_n_0 ;
  wire \tx_shift_reg[26]_i_2_n_0 ;
  wire \tx_shift_reg[26]_i_3_n_0 ;
  wire \tx_shift_reg[27]_i_2_n_0 ;
  wire \tx_shift_reg[27]_i_3_n_0 ;
  wire \tx_shift_reg[28]_i_2_n_0 ;
  wire \tx_shift_reg[28]_i_3_n_0 ;
  wire \tx_shift_reg[29]_i_2_n_0 ;
  wire \tx_shift_reg[29]_i_3_n_0 ;
  wire \tx_shift_reg[2]_i_2_n_0 ;
  wire \tx_shift_reg[30]_i_2_n_0 ;
  wire \tx_shift_reg[30]_i_3_n_0 ;
  wire \tx_shift_reg[31]_i_10_n_0 ;
  wire \tx_shift_reg[31]_i_11_n_0 ;
  wire \tx_shift_reg[31]_i_12_n_0 ;
  wire \tx_shift_reg[31]_i_13_n_0 ;
  wire \tx_shift_reg[31]_i_14_n_0 ;
  wire \tx_shift_reg[31]_i_15_n_0 ;
  wire \tx_shift_reg[31]_i_16_n_0 ;
  wire \tx_shift_reg[31]_i_17_n_0 ;
  wire \tx_shift_reg[31]_i_18_n_0 ;
  wire \tx_shift_reg[31]_i_3_n_0 ;
  wire \tx_shift_reg[31]_i_4_n_0 ;
  wire \tx_shift_reg[31]_i_5_n_0 ;
  wire \tx_shift_reg[31]_i_6_n_0 ;
  wire \tx_shift_reg[31]_i_7_n_0 ;
  wire \tx_shift_reg[31]_i_8_n_0 ;
  wire \tx_shift_reg[31]_i_9_n_0 ;
  wire \tx_shift_reg[3]_i_2_n_0 ;
  wire \tx_shift_reg[4]_i_2_n_0 ;
  wire \tx_shift_reg[5]_i_2_n_0 ;
  wire \tx_shift_reg[6]_i_2_n_0 ;
  wire \tx_shift_reg[7]_i_2_n_0 ;
  wire \tx_shift_reg[7]_i_3_n_0 ;
  wire \tx_shift_reg[8]_i_2_n_0 ;
  wire \tx_shift_reg[8]_i_3_n_0 ;
  wire \tx_shift_reg[9]_i_2_n_0 ;
  wire \tx_shift_reg[9]_i_3_n_0 ;
  wire tx_shift_reg_1;
  wire \tx_shift_reg_reg_n_0_[0] ;
  wire \tx_shift_reg_reg_n_0_[10] ;
  wire \tx_shift_reg_reg_n_0_[11] ;
  wire \tx_shift_reg_reg_n_0_[12] ;
  wire \tx_shift_reg_reg_n_0_[13] ;
  wire \tx_shift_reg_reg_n_0_[14] ;
  wire \tx_shift_reg_reg_n_0_[15] ;
  wire \tx_shift_reg_reg_n_0_[16] ;
  wire \tx_shift_reg_reg_n_0_[17] ;
  wire \tx_shift_reg_reg_n_0_[18] ;
  wire \tx_shift_reg_reg_n_0_[19] ;
  wire \tx_shift_reg_reg_n_0_[1] ;
  wire \tx_shift_reg_reg_n_0_[20] ;
  wire \tx_shift_reg_reg_n_0_[21] ;
  wire \tx_shift_reg_reg_n_0_[22] ;
  wire \tx_shift_reg_reg_n_0_[23] ;
  wire \tx_shift_reg_reg_n_0_[24] ;
  wire \tx_shift_reg_reg_n_0_[25] ;
  wire \tx_shift_reg_reg_n_0_[26] ;
  wire \tx_shift_reg_reg_n_0_[27] ;
  wire \tx_shift_reg_reg_n_0_[28] ;
  wire \tx_shift_reg_reg_n_0_[29] ;
  wire \tx_shift_reg_reg_n_0_[2] ;
  wire \tx_shift_reg_reg_n_0_[30] ;
  wire \tx_shift_reg_reg_n_0_[3] ;
  wire \tx_shift_reg_reg_n_0_[4] ;
  wire \tx_shift_reg_reg_n_0_[5] ;
  wire \tx_shift_reg_reg_n_0_[6] ;
  wire \tx_shift_reg_reg_n_0_[7] ;
  wire \tx_shift_reg_reg_n_0_[8] ;
  wire \tx_shift_reg_reg_n_0_[9] ;
  wire [3:2]NLW_bit_counter0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_bit_counter0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_cycle_counter0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cycle_counter0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_delay_counter0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_delay_counter0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_rx_shift_reg0_carry_O_UNCONNECTED;
  wire [3:2]NLW_rx_shift_reg0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rx_shift_reg0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sclk0_carry_O_UNCONNECTED;
  wire [3:2]NLW_sclk0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sclk0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sclk1_carry_O_UNCONNECTED;
  wire [3:2]NLW_sclk1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sclk1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state0_carry_O_UNCONNECTED;
  wire [3:0]NLW_state0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_state0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_state1__10_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1__10_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_state1__10_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state1__10_carry__1_O_UNCONNECTED;
  wire [2:2]NLW_state1__21_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_state1__21_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_state1__51_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1__51_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_state1__51_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state1__51_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_state1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [2:2]NLW_state2__29_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_state2__29_carry__2_O_UNCONNECTED;
  wire [2:2]NLW_state2__59_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_state2__59_carry__2_O_UNCONNECTED;
  wire [2:2]NLW_state2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_state2_carry__2_O_UNCONNECTED;
  wire [2:2]NLW_tx_shift_reg1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_tx_shift_reg1_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00F00FF400000FF4)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\data_out[31]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C83CCC00003CCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\data_out[31]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FBC0000000C000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\data_out[31]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBABB)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[2]),
        .I1(state14_out),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088FF000000F0)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state0_carry__1_n_1),
        .I1(state12_out),
        .I2(start),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(cs_to_trx_delay_reg[4]),
        .I1(cs_to_trx_delay_reg[10]),
        .I2(cs_to_trx_delay_reg[3]),
        .I3(cs_to_trx_delay_reg[15]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(cs_to_trx_delay_reg[2]),
        .I1(cs_to_trx_delay_reg[11]),
        .I2(cs_to_trx_delay_reg[7]),
        .I3(cs_to_trx_delay_reg[12]),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(cs_to_trx_delay_reg[9]),
        .I1(cs_to_trx_delay_reg[1]),
        .I2(cs_to_trx_delay_reg[13]),
        .I3(cs_to_trx_delay_reg[6]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(cs_to_trx_delay_reg[14]),
        .I1(cs_to_trx_delay_reg[5]),
        .I2(cs_to_trx_delay_reg[0]),
        .I3(cs_to_trx_delay_reg[8]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,LATCH_CONFIG:001,CS_SETUP:010,ACTIVE:011,CS_HOLD:100," *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "IDLE:000,LATCH_CONFIG:001,CS_SETUP:010,ACTIVE:011,CS_HOLD:100," *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "IDLE:000,LATCH_CONFIG:001,CS_SETUP:010,ACTIVE:011,CS_HOLD:100," *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bit_counter0_carry
       (.CI(1'b0),
        .CO({bit_counter0_carry_n_0,bit_counter0_carry_n_1,bit_counter0_carry_n_2,bit_counter0_carry_n_3}),
        .CYINIT(\bit_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_counter0[4:1]),
        .S({\bit_counter_reg_n_0_[4] ,\bit_counter_reg_n_0_[3] ,\bit_counter_reg_n_0_[2] ,\bit_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bit_counter0_carry__0
       (.CI(bit_counter0_carry_n_0),
        .CO({bit_counter0_carry__0_n_0,bit_counter0_carry__0_n_1,bit_counter0_carry__0_n_2,bit_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_counter0[8:5]),
        .S({\bit_counter_reg_n_0_[8] ,\bit_counter_reg_n_0_[7] ,\bit_counter_reg_n_0_[6] ,\bit_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bit_counter0_carry__1
       (.CI(bit_counter0_carry__0_n_0),
        .CO({bit_counter0_carry__1_n_0,bit_counter0_carry__1_n_1,bit_counter0_carry__1_n_2,bit_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_counter0[12:9]),
        .S({\bit_counter_reg_n_0_[12] ,\bit_counter_reg_n_0_[11] ,\bit_counter_reg_n_0_[10] ,\bit_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bit_counter0_carry__2
       (.CI(bit_counter0_carry__1_n_0),
        .CO({NLW_bit_counter0_carry__2_CO_UNCONNECTED[3:2],bit_counter0_carry__2_n_2,bit_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bit_counter0_carry__2_O_UNCONNECTED[3],bit_counter0[15:13]}),
        .S({1'b0,\bit_counter_reg_n_0_[15] ,\bit_counter_reg_n_0_[14] ,\bit_counter_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[10]_i_1 
       (.I0(bit_counter0[10]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[11]_i_1 
       (.I0(bit_counter0[11]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[12]_i_1 
       (.I0(bit_counter0[12]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[13]_i_1 
       (.I0(bit_counter0[13]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[14]_i_1 
       (.I0(bit_counter0[14]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[14]));
  LUT4 #(
    .INIT(16'h2011)) 
    \bit_counter[15]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state12_out),
        .I3(state[0]),
        .O(bit_counter_3));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[15]_i_2 
       (.I0(bit_counter0[15]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter0[1]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter0[2]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[3]_i_1 
       (.I0(bit_counter0[3]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[4]_i_1 
       (.I0(bit_counter0[4]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[5]_i_1 
       (.I0(bit_counter0[5]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[6]_i_1 
       (.I0(bit_counter0[6]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[7]_i_1 
       (.I0(bit_counter0[7]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[8]_i_1 
       (.I0(bit_counter0[8]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_counter[9]_i_1 
       (.I0(bit_counter0[9]),
        .I1(state[1]),
        .I2(state0_carry__1_n_1),
        .O(bit_counter[9]));
  FDCE \bit_counter_reg[0] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[0]),
        .Q(\bit_counter_reg_n_0_[0] ));
  FDCE \bit_counter_reg[10] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[10]),
        .Q(\bit_counter_reg_n_0_[10] ));
  FDCE \bit_counter_reg[11] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[11]),
        .Q(\bit_counter_reg_n_0_[11] ));
  FDCE \bit_counter_reg[12] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[12]),
        .Q(\bit_counter_reg_n_0_[12] ));
  FDCE \bit_counter_reg[13] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[13]),
        .Q(\bit_counter_reg_n_0_[13] ));
  FDCE \bit_counter_reg[14] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[14]),
        .Q(\bit_counter_reg_n_0_[14] ));
  FDCE \bit_counter_reg[15] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[15]),
        .Q(\bit_counter_reg_n_0_[15] ));
  FDCE \bit_counter_reg[1] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[1]),
        .Q(\bit_counter_reg_n_0_[1] ));
  FDCE \bit_counter_reg[2] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[2]),
        .Q(\bit_counter_reg_n_0_[2] ));
  FDCE \bit_counter_reg[3] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[3]),
        .Q(\bit_counter_reg_n_0_[3] ));
  FDCE \bit_counter_reg[4] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[4]),
        .Q(\bit_counter_reg_n_0_[4] ));
  FDCE \bit_counter_reg[5] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[5]),
        .Q(\bit_counter_reg_n_0_[5] ));
  FDCE \bit_counter_reg[6] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[6]),
        .Q(\bit_counter_reg_n_0_[6] ));
  FDCE \bit_counter_reg[7] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[7]),
        .Q(\bit_counter_reg_n_0_[7] ));
  FDCE \bit_counter_reg[8] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[8]),
        .Q(\bit_counter_reg_n_0_[8] ));
  FDCE \bit_counter_reg[9] 
       (.C(clk),
        .CE(bit_counter_3),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(bit_counter[9]),
        .Q(\bit_counter_reg_n_0_[9] ));
  FDRE \bits_per_transaction_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[0]),
        .Q(bits_per_transaction_reg[0]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[10]),
        .Q(bits_per_transaction_reg[10]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[11]),
        .Q(bits_per_transaction_reg[11]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[12]),
        .Q(bits_per_transaction_reg[12]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[13]),
        .Q(bits_per_transaction_reg[13]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[14]),
        .Q(bits_per_transaction_reg[14]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[15]),
        .Q(bits_per_transaction_reg[15]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[1]),
        .Q(bits_per_transaction_reg[1]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[2]),
        .Q(bits_per_transaction_reg[2]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[3]),
        .Q(bits_per_transaction_reg[3]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[4]),
        .Q(bits_per_transaction_reg[4]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[5]),
        .Q(bits_per_transaction_reg[5]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[6]),
        .Q(bits_per_transaction_reg[6]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[7]),
        .Q(bits_per_transaction_reg[7]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[8]),
        .Q(bits_per_transaction_reg[8]),
        .R(1'b0));
  FDRE \bits_per_transaction_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(bits_per_transaction[9]),
        .Q(bits_per_transaction_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFEFFEE00001100)) 
    busy_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\data_out[31]_i_3_n_0 ),
        .I3(start),
        .I4(state[2]),
        .I5(busy),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(busy_i_1_n_0),
        .Q(busy));
  LUT1 #(
    .INIT(2'h1)) 
    \cs_hold_time_reg[15]_i_1 
       (.I0(busy),
        .O(\cs_hold_time_reg[15]_i_1_n_0 ));
  FDRE \cs_hold_time_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[0]),
        .Q(cs_hold_time_reg[0]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[10]),
        .Q(cs_hold_time_reg[10]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[11]),
        .Q(cs_hold_time_reg[11]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[12]),
        .Q(cs_hold_time_reg[12]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[13]),
        .Q(cs_hold_time_reg[13]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[14]),
        .Q(cs_hold_time_reg[14]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[15]),
        .Q(cs_hold_time_reg[15]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[1]),
        .Q(cs_hold_time_reg[1]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[2]),
        .Q(cs_hold_time_reg[2]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[3]),
        .Q(cs_hold_time_reg[3]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[4]),
        .Q(cs_hold_time_reg[4]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[5]),
        .Q(cs_hold_time_reg[5]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[6]),
        .Q(cs_hold_time_reg[6]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[7]),
        .Q(cs_hold_time_reg[7]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[8]),
        .Q(cs_hold_time_reg[8]),
        .R(1'b0));
  FDRE \cs_hold_time_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_hold_time[9]),
        .Q(cs_hold_time_reg[9]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[0]),
        .Q(cs_to_trx_delay_reg[0]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[10]),
        .Q(cs_to_trx_delay_reg[10]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[11]),
        .Q(cs_to_trx_delay_reg[11]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[12]),
        .Q(cs_to_trx_delay_reg[12]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[13]),
        .Q(cs_to_trx_delay_reg[13]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[14]),
        .Q(cs_to_trx_delay_reg[14]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[15]),
        .Q(cs_to_trx_delay_reg[15]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[1]),
        .Q(cs_to_trx_delay_reg[1]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[2]),
        .Q(cs_to_trx_delay_reg[2]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[3]),
        .Q(cs_to_trx_delay_reg[3]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[4]),
        .Q(cs_to_trx_delay_reg[4]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[5]),
        .Q(cs_to_trx_delay_reg[5]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[6]),
        .Q(cs_to_trx_delay_reg[6]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[7]),
        .Q(cs_to_trx_delay_reg[7]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[8]),
        .Q(cs_to_trx_delay_reg[8]),
        .R(1'b0));
  FDRE \cs_to_trx_delay_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cs_to_trx_delay[9]),
        .Q(cs_to_trx_delay_reg[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_counter0_carry
       (.CI(1'b0),
        .CO({cycle_counter0_carry_n_0,cycle_counter0_carry_n_1,cycle_counter0_carry_n_2,cycle_counter0_carry_n_3}),
        .CYINIT(\cycle_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cycle_counter0[4:1]),
        .S({\cycle_counter_reg_n_0_[4] ,\cycle_counter_reg_n_0_[3] ,\cycle_counter_reg_n_0_[2] ,\cycle_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_counter0_carry__0
       (.CI(cycle_counter0_carry_n_0),
        .CO({cycle_counter0_carry__0_n_0,cycle_counter0_carry__0_n_1,cycle_counter0_carry__0_n_2,cycle_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cycle_counter0[8:5]),
        .S({\cycle_counter_reg_n_0_[8] ,\cycle_counter_reg_n_0_[7] ,\cycle_counter_reg_n_0_[6] ,\cycle_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_counter0_carry__1
       (.CI(cycle_counter0_carry__0_n_0),
        .CO({cycle_counter0_carry__1_n_0,cycle_counter0_carry__1_n_1,cycle_counter0_carry__1_n_2,cycle_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cycle_counter0[12:9]),
        .S({\cycle_counter_reg_n_0_[12] ,\cycle_counter_reg_n_0_[11] ,\cycle_counter_reg_n_0_[10] ,\cycle_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_counter0_carry__2
       (.CI(cycle_counter0_carry__1_n_0),
        .CO({NLW_cycle_counter0_carry__2_CO_UNCONNECTED[3:2],cycle_counter0_carry__2_n_2,cycle_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cycle_counter0_carry__2_O_UNCONNECTED[3],cycle_counter0[15:13]}),
        .S({1'b0,\cycle_counter_reg_n_0_[15] ,\cycle_counter_reg_n_0_[14] ,\cycle_counter_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cycle_counter[0]_i_1 
       (.I0(\cycle_counter_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[10]_i_1 
       (.I0(cycle_counter0[10]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[11]_i_1 
       (.I0(cycle_counter0[11]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[12]_i_1 
       (.I0(cycle_counter0[12]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[13]_i_1 
       (.I0(cycle_counter0[13]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[14]_i_1 
       (.I0(cycle_counter0[14]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[14]));
  LUT3 #(
    .INIT(8'h41)) 
    \cycle_counter[15]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\cycle_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[15]_i_2 
       (.I0(cycle_counter0[15]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[1]_i_1 
       (.I0(cycle_counter0[1]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[2]_i_1 
       (.I0(cycle_counter0[2]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[3]_i_1 
       (.I0(cycle_counter0[3]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[4]_i_1 
       (.I0(cycle_counter0[4]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[5]_i_1 
       (.I0(cycle_counter0[5]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[6]_i_1 
       (.I0(cycle_counter0[6]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[7]_i_1 
       (.I0(cycle_counter0[7]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[8]_i_1 
       (.I0(cycle_counter0[8]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cycle_counter[9]_i_1 
       (.I0(cycle_counter0[9]),
        .I1(state[1]),
        .I2(state12_out),
        .O(cycle_counter[9]));
  FDCE \cycle_counter_reg[0] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[0]),
        .Q(\cycle_counter_reg_n_0_[0] ));
  FDCE \cycle_counter_reg[10] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[10]),
        .Q(\cycle_counter_reg_n_0_[10] ));
  FDCE \cycle_counter_reg[11] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[11]),
        .Q(\cycle_counter_reg_n_0_[11] ));
  FDCE \cycle_counter_reg[12] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[12]),
        .Q(\cycle_counter_reg_n_0_[12] ));
  FDCE \cycle_counter_reg[13] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[13]),
        .Q(\cycle_counter_reg_n_0_[13] ));
  FDCE \cycle_counter_reg[14] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[14]),
        .Q(\cycle_counter_reg_n_0_[14] ));
  FDCE \cycle_counter_reg[15] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[15]),
        .Q(\cycle_counter_reg_n_0_[15] ));
  FDCE \cycle_counter_reg[1] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[1]),
        .Q(\cycle_counter_reg_n_0_[1] ));
  FDCE \cycle_counter_reg[2] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[2]),
        .Q(\cycle_counter_reg_n_0_[2] ));
  FDCE \cycle_counter_reg[3] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[3]),
        .Q(\cycle_counter_reg_n_0_[3] ));
  FDCE \cycle_counter_reg[4] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[4]),
        .Q(\cycle_counter_reg_n_0_[4] ));
  FDCE \cycle_counter_reg[5] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[5]),
        .Q(\cycle_counter_reg_n_0_[5] ));
  FDCE \cycle_counter_reg[6] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[6]),
        .Q(\cycle_counter_reg_n_0_[6] ));
  FDCE \cycle_counter_reg[7] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[7]),
        .Q(\cycle_counter_reg_n_0_[7] ));
  FDCE \cycle_counter_reg[8] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[8]),
        .Q(\cycle_counter_reg_n_0_[8] ));
  FDCE \cycle_counter_reg[9] 
       (.C(clk),
        .CE(\cycle_counter[15]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(cycle_counter[9]),
        .Q(\cycle_counter_reg_n_0_[9] ));
  FDRE \cycles_per_bit_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[0]),
        .Q(cycles_per_bit_reg[0]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[10]),
        .Q(cycles_per_bit_reg[10]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[11]),
        .Q(cycles_per_bit_reg[11]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[12]),
        .Q(cycles_per_bit_reg[12]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[13]),
        .Q(cycles_per_bit_reg[13]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[14]),
        .Q(cycles_per_bit_reg[14]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[15]),
        .Q(cycles_per_bit_reg[15]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[1]),
        .Q(cycles_per_bit_reg[1]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[2]),
        .Q(cycles_per_bit_reg[2]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[3]),
        .Q(cycles_per_bit_reg[3]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[4]),
        .Q(cycles_per_bit_reg[4]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[5]),
        .Q(cycles_per_bit_reg[5]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[6]),
        .Q(cycles_per_bit_reg[6]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[7]),
        .Q(cycles_per_bit_reg[7]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[8]),
        .Q(cycles_per_bit_reg[8]),
        .R(1'b0));
  FDRE \cycles_per_bit_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(cycles_per_bit[9]),
        .Q(cycles_per_bit_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    \data_out[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\data_out[31]_i_3_n_0 ),
        .I3(state[2]),
        .O(\data_out[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[31]_i_2 
       (.I0(rst_n),
        .O(\data_out[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \data_out[31]_i_3 
       (.I0(state1),
        .I1(\data_out[31]_i_4_n_0 ),
        .I2(\data_out[31]_i_5_n_0 ),
        .O(\data_out[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[31]_i_4 
       (.I0(cs_hold_time_reg[2]),
        .I1(cs_hold_time_reg[8]),
        .I2(cs_hold_time_reg[4]),
        .I3(cs_hold_time_reg[5]),
        .I4(\data_out[31]_i_6_n_0 ),
        .O(\data_out[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_out[31]_i_5 
       (.I0(cs_hold_time_reg[6]),
        .I1(cs_hold_time_reg[9]),
        .I2(cs_hold_time_reg[7]),
        .I3(cs_hold_time_reg[15]),
        .I4(\data_out[31]_i_7_n_0 ),
        .O(\data_out[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[31]_i_6 
       (.I0(cs_hold_time_reg[11]),
        .I1(cs_hold_time_reg[10]),
        .I2(cs_hold_time_reg[0]),
        .I3(cs_hold_time_reg[1]),
        .O(\data_out[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[31]_i_7 
       (.I0(cs_hold_time_reg[14]),
        .I1(cs_hold_time_reg[12]),
        .I2(cs_hold_time_reg[13]),
        .I3(cs_hold_time_reg[3]),
        .O(\data_out[31]_i_7_n_0 ));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[0] ),
        .Q(data_out[0]));
  FDCE \data_out_reg[10] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[10] ),
        .Q(data_out[10]));
  FDCE \data_out_reg[11] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[11] ),
        .Q(data_out[11]));
  FDCE \data_out_reg[12] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[12] ),
        .Q(data_out[12]));
  FDCE \data_out_reg[13] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[13] ),
        .Q(data_out[13]));
  FDCE \data_out_reg[14] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[14] ),
        .Q(data_out[14]));
  FDCE \data_out_reg[15] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[15] ),
        .Q(data_out[15]));
  FDCE \data_out_reg[16] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[16] ),
        .Q(data_out[16]));
  FDCE \data_out_reg[17] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[17] ),
        .Q(data_out[17]));
  FDCE \data_out_reg[18] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[18] ),
        .Q(data_out[18]));
  FDCE \data_out_reg[19] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[19] ),
        .Q(data_out[19]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[1] ),
        .Q(data_out[1]));
  FDCE \data_out_reg[20] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[20] ),
        .Q(data_out[20]));
  FDCE \data_out_reg[21] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[21] ),
        .Q(data_out[21]));
  FDCE \data_out_reg[22] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[22] ),
        .Q(data_out[22]));
  FDCE \data_out_reg[23] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[23] ),
        .Q(data_out[23]));
  FDCE \data_out_reg[24] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[24] ),
        .Q(data_out[24]));
  FDCE \data_out_reg[25] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[25] ),
        .Q(data_out[25]));
  FDCE \data_out_reg[26] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[26] ),
        .Q(data_out[26]));
  FDCE \data_out_reg[27] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[27] ),
        .Q(data_out[27]));
  FDCE \data_out_reg[28] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[28] ),
        .Q(data_out[28]));
  FDCE \data_out_reg[29] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[29] ),
        .Q(data_out[29]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[2] ),
        .Q(data_out[2]));
  FDCE \data_out_reg[30] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[30] ),
        .Q(data_out[30]));
  FDCE \data_out_reg[31] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[31] ),
        .Q(data_out[31]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[3] ),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[4] ),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[5] ),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[6] ),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[7] ),
        .Q(data_out[7]));
  FDCE \data_out_reg[8] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[8] ),
        .Q(data_out[8]));
  FDCE \data_out_reg[9] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\rx_shift_reg_reg_n_0_[9] ),
        .Q(data_out[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry
       (.CI(1'b0),
        .CO({delay_counter0_carry_n_0,delay_counter0_carry_n_1,delay_counter0_carry_n_2,delay_counter0_carry_n_3}),
        .CYINIT(\delay_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[4:1]),
        .S({\delay_counter_reg_n_0_[4] ,\delay_counter_reg_n_0_[3] ,\delay_counter_reg_n_0_[2] ,\delay_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__0
       (.CI(delay_counter0_carry_n_0),
        .CO({delay_counter0_carry__0_n_0,delay_counter0_carry__0_n_1,delay_counter0_carry__0_n_2,delay_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[8:5]),
        .S({\delay_counter_reg_n_0_[8] ,\delay_counter_reg_n_0_[7] ,\delay_counter_reg_n_0_[6] ,\delay_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__1
       (.CI(delay_counter0_carry__0_n_0),
        .CO({delay_counter0_carry__1_n_0,delay_counter0_carry__1_n_1,delay_counter0_carry__1_n_2,delay_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in15[12:9]),
        .S({\delay_counter_reg_n_0_[12] ,\delay_counter_reg_n_0_[11] ,\delay_counter_reg_n_0_[10] ,\delay_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__2
       (.CI(delay_counter0_carry__1_n_0),
        .CO({NLW_delay_counter0_carry__2_CO_UNCONNECTED[3:2],delay_counter0_carry__2_n_2,delay_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_counter0_carry__2_O_UNCONNECTED[3],in15[15:13]}),
        .S({1'b0,\delay_counter_reg_n_0_[15] ,\delay_counter_reg_n_0_[14] ,\delay_counter_reg_n_0_[13] }));
  LUT5 #(
    .INIT(32'h00020200)) 
    \delay_counter[0]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\delay_counter_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(delay_counter[0]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[10]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[10]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[10]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[11]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[11]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[11]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[12]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[12]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[12]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[13]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[13]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[13]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[14]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[14]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[14]));
  LUT6 #(
    .INIT(64'h300000003B3B3B3B)) 
    \delay_counter[15]_i_1 
       (.I0(\data_out[31]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state12_out),
        .I4(state0_carry__1_n_1),
        .I5(state[0]),
        .O(delay_counter_0));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[15]_i_2 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[15]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[15]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[1]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[1]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[2]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[3]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[3]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[4]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[4]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[4]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[5]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[5]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[5]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[6]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[6]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[6]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[7]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[7]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[7]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[8]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[8]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[8]));
  LUT5 #(
    .INIT(32'h00080800)) 
    \delay_counter[9]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(in15[9]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(delay_counter[9]));
  FDCE \delay_counter_reg[0] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[0]),
        .Q(\delay_counter_reg_n_0_[0] ));
  FDCE \delay_counter_reg[10] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[10]),
        .Q(\delay_counter_reg_n_0_[10] ));
  FDCE \delay_counter_reg[11] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[11]),
        .Q(\delay_counter_reg_n_0_[11] ));
  FDCE \delay_counter_reg[12] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[12]),
        .Q(\delay_counter_reg_n_0_[12] ));
  FDCE \delay_counter_reg[13] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[13]),
        .Q(\delay_counter_reg_n_0_[13] ));
  FDCE \delay_counter_reg[14] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[14]),
        .Q(\delay_counter_reg_n_0_[14] ));
  FDCE \delay_counter_reg[15] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[15]),
        .Q(\delay_counter_reg_n_0_[15] ));
  FDCE \delay_counter_reg[1] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[1]),
        .Q(\delay_counter_reg_n_0_[1] ));
  FDCE \delay_counter_reg[2] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[2]),
        .Q(\delay_counter_reg_n_0_[2] ));
  FDCE \delay_counter_reg[3] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[3]),
        .Q(\delay_counter_reg_n_0_[3] ));
  FDCE \delay_counter_reg[4] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[4]),
        .Q(\delay_counter_reg_n_0_[4] ));
  FDCE \delay_counter_reg[5] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[5]),
        .Q(\delay_counter_reg_n_0_[5] ));
  FDCE \delay_counter_reg[6] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[6]),
        .Q(\delay_counter_reg_n_0_[6] ));
  FDCE \delay_counter_reg[7] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[7]),
        .Q(\delay_counter_reg_n_0_[7] ));
  FDCE \delay_counter_reg[8] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[8]),
        .Q(\delay_counter_reg_n_0_[8] ));
  FDCE \delay_counter_reg[9] 
       (.C(clk),
        .CE(delay_counter_0),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(delay_counter[9]),
        .Q(\delay_counter_reg_n_0_[9] ));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(\data_out[31]_i_1_n_0 ),
        .Q(done));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    mosi_i_1
       (.I0(p_0_in),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(mosi),
        .O(mosi_i_1_n_0));
  FDCE mosi_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(mosi_i_1_n_0),
        .Q(mosi));
  CARRY4 rx_shift_reg0_carry
       (.CI(1'b0),
        .CO({rx_shift_reg0_carry_n_0,rx_shift_reg0_carry_n_1,rx_shift_reg0_carry_n_2,rx_shift_reg0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_shift_reg0_carry_O_UNCONNECTED[3:0]),
        .S({rx_shift_reg0_carry_i_1_n_0,rx_shift_reg0_carry_i_2_n_0,rx_shift_reg0_carry_i_3_n_0,rx_shift_reg0_carry_i_4_n_0}));
  CARRY4 rx_shift_reg0_carry__0
       (.CI(rx_shift_reg0_carry_n_0),
        .CO({NLW_rx_shift_reg0_carry__0_CO_UNCONNECTED[3:2],rx_shift_reg0,rx_shift_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_shift_reg0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rx_shift_reg0_carry__0_i_1_n_0,rx_shift_reg0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rx_shift_reg0_carry__0_i_1
       (.I0(sdi_sample_offset_reg[15]),
        .I1(\cycle_counter_reg_n_0_[15] ),
        .O(rx_shift_reg0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_shift_reg0_carry__0_i_2
       (.I0(sdi_sample_offset_reg[14]),
        .I1(\cycle_counter_reg_n_0_[14] ),
        .I2(\cycle_counter_reg_n_0_[13] ),
        .I3(sdi_sample_offset_reg[13]),
        .I4(\cycle_counter_reg_n_0_[12] ),
        .I5(sdi_sample_offset_reg[12]),
        .O(rx_shift_reg0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_shift_reg0_carry_i_1
       (.I0(\cycle_counter_reg_n_0_[11] ),
        .I1(sdi_sample_offset_reg[11]),
        .I2(\cycle_counter_reg_n_0_[9] ),
        .I3(sdi_sample_offset_reg[9]),
        .I4(sdi_sample_offset_reg[10]),
        .I5(\cycle_counter_reg_n_0_[10] ),
        .O(rx_shift_reg0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_shift_reg0_carry_i_2
       (.I0(sdi_sample_offset_reg[8]),
        .I1(\cycle_counter_reg_n_0_[8] ),
        .I2(\cycle_counter_reg_n_0_[6] ),
        .I3(sdi_sample_offset_reg[6]),
        .I4(\cycle_counter_reg_n_0_[7] ),
        .I5(sdi_sample_offset_reg[7]),
        .O(rx_shift_reg0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_shift_reg0_carry_i_3
       (.I0(\cycle_counter_reg_n_0_[5] ),
        .I1(sdi_sample_offset_reg[5]),
        .I2(\cycle_counter_reg_n_0_[3] ),
        .I3(sdi_sample_offset_reg[3]),
        .I4(sdi_sample_offset_reg[4]),
        .I5(\cycle_counter_reg_n_0_[4] ),
        .O(rx_shift_reg0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_shift_reg0_carry_i_4
       (.I0(sdi_sample_offset_reg[1]),
        .I1(\cycle_counter_reg_n_0_[1] ),
        .I2(\cycle_counter_reg_n_0_[2] ),
        .I3(sdi_sample_offset_reg[2]),
        .I4(\cycle_counter_reg_n_0_[0] ),
        .I5(sdi_sample_offset_reg[0]),
        .O(rx_shift_reg0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[0]_i_1 
       (.I0(miso),
        .I1(state[1]),
        .O(rx_shift_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[10]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[9] ),
        .I1(state[1]),
        .O(rx_shift_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[11]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[10] ),
        .I1(state[1]),
        .O(rx_shift_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[12]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[11] ),
        .I1(state[1]),
        .O(rx_shift_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[13]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[12] ),
        .I1(state[1]),
        .O(rx_shift_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[14]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[13] ),
        .I1(state[1]),
        .O(rx_shift_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[15]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[14] ),
        .I1(state[1]),
        .O(rx_shift_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[16]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[15] ),
        .I1(state[1]),
        .O(rx_shift_reg[16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[17]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[16] ),
        .I1(state[1]),
        .O(rx_shift_reg[17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[18]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[17] ),
        .I1(state[1]),
        .O(rx_shift_reg[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[19]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[18] ),
        .I1(state[1]),
        .O(rx_shift_reg[19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[1]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[0] ),
        .I1(state[1]),
        .O(rx_shift_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[20]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[19] ),
        .I1(state[1]),
        .O(rx_shift_reg[20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[21]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[20] ),
        .I1(state[1]),
        .O(rx_shift_reg[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[22]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[21] ),
        .I1(state[1]),
        .O(rx_shift_reg[22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[23]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[22] ),
        .I1(state[1]),
        .O(rx_shift_reg[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[24]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[23] ),
        .I1(state[1]),
        .O(rx_shift_reg[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[25]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[24] ),
        .I1(state[1]),
        .O(rx_shift_reg[25]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[26]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[25] ),
        .I1(state[1]),
        .O(rx_shift_reg[26]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[27]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[26] ),
        .I1(state[1]),
        .O(rx_shift_reg[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[28]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[27] ),
        .I1(state[1]),
        .O(rx_shift_reg[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[29]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[28] ),
        .I1(state[1]),
        .O(rx_shift_reg[29]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[2]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[1] ),
        .I1(state[1]),
        .O(rx_shift_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[30]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[29] ),
        .I1(state[1]),
        .O(rx_shift_reg[30]));
  LUT4 #(
    .INIT(16'h00D0)) 
    \rx_shift_reg[31]_i_1 
       (.I0(state[1]),
        .I1(rx_shift_reg0),
        .I2(state[0]),
        .I3(state[2]),
        .O(rx_shift_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[31]_i_2 
       (.I0(\rx_shift_reg_reg_n_0_[30] ),
        .I1(state[1]),
        .O(rx_shift_reg[31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[3]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[2] ),
        .I1(state[1]),
        .O(rx_shift_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[4]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[3] ),
        .I1(state[1]),
        .O(rx_shift_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[5]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[4] ),
        .I1(state[1]),
        .O(rx_shift_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[6]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[5] ),
        .I1(state[1]),
        .O(rx_shift_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[7]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[6] ),
        .I1(state[1]),
        .O(rx_shift_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[8]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[7] ),
        .I1(state[1]),
        .O(rx_shift_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_shift_reg[9]_i_1 
       (.I0(\rx_shift_reg_reg_n_0_[8] ),
        .I1(state[1]),
        .O(rx_shift_reg[9]));
  FDCE \rx_shift_reg_reg[0] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[0]),
        .Q(\rx_shift_reg_reg_n_0_[0] ));
  FDCE \rx_shift_reg_reg[10] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[10]),
        .Q(\rx_shift_reg_reg_n_0_[10] ));
  FDCE \rx_shift_reg_reg[11] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[11]),
        .Q(\rx_shift_reg_reg_n_0_[11] ));
  FDCE \rx_shift_reg_reg[12] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[12]),
        .Q(\rx_shift_reg_reg_n_0_[12] ));
  FDCE \rx_shift_reg_reg[13] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[13]),
        .Q(\rx_shift_reg_reg_n_0_[13] ));
  FDCE \rx_shift_reg_reg[14] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[14]),
        .Q(\rx_shift_reg_reg_n_0_[14] ));
  FDCE \rx_shift_reg_reg[15] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[15]),
        .Q(\rx_shift_reg_reg_n_0_[15] ));
  FDCE \rx_shift_reg_reg[16] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[16]),
        .Q(\rx_shift_reg_reg_n_0_[16] ));
  FDCE \rx_shift_reg_reg[17] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[17]),
        .Q(\rx_shift_reg_reg_n_0_[17] ));
  FDCE \rx_shift_reg_reg[18] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[18]),
        .Q(\rx_shift_reg_reg_n_0_[18] ));
  FDCE \rx_shift_reg_reg[19] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[19]),
        .Q(\rx_shift_reg_reg_n_0_[19] ));
  FDCE \rx_shift_reg_reg[1] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[1]),
        .Q(\rx_shift_reg_reg_n_0_[1] ));
  FDCE \rx_shift_reg_reg[20] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[20]),
        .Q(\rx_shift_reg_reg_n_0_[20] ));
  FDCE \rx_shift_reg_reg[21] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[21]),
        .Q(\rx_shift_reg_reg_n_0_[21] ));
  FDCE \rx_shift_reg_reg[22] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[22]),
        .Q(\rx_shift_reg_reg_n_0_[22] ));
  FDCE \rx_shift_reg_reg[23] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[23]),
        .Q(\rx_shift_reg_reg_n_0_[23] ));
  FDCE \rx_shift_reg_reg[24] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[24]),
        .Q(\rx_shift_reg_reg_n_0_[24] ));
  FDCE \rx_shift_reg_reg[25] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[25]),
        .Q(\rx_shift_reg_reg_n_0_[25] ));
  FDCE \rx_shift_reg_reg[26] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[26]),
        .Q(\rx_shift_reg_reg_n_0_[26] ));
  FDCE \rx_shift_reg_reg[27] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[27]),
        .Q(\rx_shift_reg_reg_n_0_[27] ));
  FDCE \rx_shift_reg_reg[28] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[28]),
        .Q(\rx_shift_reg_reg_n_0_[28] ));
  FDCE \rx_shift_reg_reg[29] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[29]),
        .Q(\rx_shift_reg_reg_n_0_[29] ));
  FDCE \rx_shift_reg_reg[2] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[2]),
        .Q(\rx_shift_reg_reg_n_0_[2] ));
  FDCE \rx_shift_reg_reg[30] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[30]),
        .Q(\rx_shift_reg_reg_n_0_[30] ));
  FDCE \rx_shift_reg_reg[31] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[31]),
        .Q(\rx_shift_reg_reg_n_0_[31] ));
  FDCE \rx_shift_reg_reg[3] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[3]),
        .Q(\rx_shift_reg_reg_n_0_[3] ));
  FDCE \rx_shift_reg_reg[4] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[4]),
        .Q(\rx_shift_reg_reg_n_0_[4] ));
  FDCE \rx_shift_reg_reg[5] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[5]),
        .Q(\rx_shift_reg_reg_n_0_[5] ));
  FDCE \rx_shift_reg_reg[6] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[6]),
        .Q(\rx_shift_reg_reg_n_0_[6] ));
  FDCE \rx_shift_reg_reg[7] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[7]),
        .Q(\rx_shift_reg_reg_n_0_[7] ));
  FDCE \rx_shift_reg_reg[8] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[8]),
        .Q(\rx_shift_reg_reg_n_0_[8] ));
  FDCE \rx_shift_reg_reg[9] 
       (.C(clk),
        .CE(rx_shift_reg_2),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(rx_shift_reg[9]),
        .Q(\rx_shift_reg_reg_n_0_[9] ));
  CARRY4 sclk0_carry
       (.CI(1'b0),
        .CO({sclk0_carry_n_0,sclk0_carry_n_1,sclk0_carry_n_2,sclk0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sclk0_carry_O_UNCONNECTED[3:0]),
        .S({sclk0_carry_i_1_n_0,sclk0_carry_i_2_n_0,sclk0_carry_i_3_n_0,sclk0_carry_i_4_n_0}));
  CARRY4 sclk0_carry__0
       (.CI(sclk0_carry_n_0),
        .CO({NLW_sclk0_carry__0_CO_UNCONNECTED[3:2],sclk0,sclk0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sclk0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,sclk0_carry__0_i_1_n_0,sclk0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sclk0_carry__0_i_1
       (.I0(sclk_low_offset_reg[15]),
        .I1(\cycle_counter_reg_n_0_[15] ),
        .O(sclk0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk0_carry__0_i_2
       (.I0(sclk_low_offset_reg[14]),
        .I1(\cycle_counter_reg_n_0_[14] ),
        .I2(\cycle_counter_reg_n_0_[12] ),
        .I3(sclk_low_offset_reg[12]),
        .I4(\cycle_counter_reg_n_0_[13] ),
        .I5(sclk_low_offset_reg[13]),
        .O(sclk0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk0_carry_i_1
       (.I0(sclk_low_offset_reg[11]),
        .I1(\cycle_counter_reg_n_0_[11] ),
        .I2(\cycle_counter_reg_n_0_[9] ),
        .I3(sclk_low_offset_reg[9]),
        .I4(\cycle_counter_reg_n_0_[10] ),
        .I5(sclk_low_offset_reg[10]),
        .O(sclk0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk0_carry_i_2
       (.I0(sclk_low_offset_reg[8]),
        .I1(\cycle_counter_reg_n_0_[8] ),
        .I2(\cycle_counter_reg_n_0_[6] ),
        .I3(sclk_low_offset_reg[6]),
        .I4(\cycle_counter_reg_n_0_[7] ),
        .I5(sclk_low_offset_reg[7]),
        .O(sclk0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk0_carry_i_3
       (.I0(sclk_low_offset_reg[5]),
        .I1(\cycle_counter_reg_n_0_[5] ),
        .I2(\cycle_counter_reg_n_0_[3] ),
        .I3(sclk_low_offset_reg[3]),
        .I4(\cycle_counter_reg_n_0_[4] ),
        .I5(sclk_low_offset_reg[4]),
        .O(sclk0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk0_carry_i_4
       (.I0(sclk_low_offset_reg[1]),
        .I1(\cycle_counter_reg_n_0_[1] ),
        .I2(\cycle_counter_reg_n_0_[2] ),
        .I3(sclk_low_offset_reg[2]),
        .I4(\cycle_counter_reg_n_0_[0] ),
        .I5(sclk_low_offset_reg[0]),
        .O(sclk0_carry_i_4_n_0));
  CARRY4 sclk1_carry
       (.CI(1'b0),
        .CO({sclk1_carry_n_0,sclk1_carry_n_1,sclk1_carry_n_2,sclk1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sclk1_carry_O_UNCONNECTED[3:0]),
        .S({sclk1_carry_i_1_n_0,sclk1_carry_i_2_n_0,sclk1_carry_i_3_n_0,sclk1_carry_i_4_n_0}));
  CARRY4 sclk1_carry__0
       (.CI(sclk1_carry_n_0),
        .CO({NLW_sclk1_carry__0_CO_UNCONNECTED[3:2],sclk1,sclk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sclk1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,sclk1_carry__0_i_1_n_0,sclk1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sclk1_carry__0_i_1
       (.I0(sclk_high_offset_reg[15]),
        .I1(\cycle_counter_reg_n_0_[15] ),
        .O(sclk1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk1_carry__0_i_2
       (.I0(sclk_high_offset_reg[13]),
        .I1(\cycle_counter_reg_n_0_[13] ),
        .I2(\cycle_counter_reg_n_0_[14] ),
        .I3(sclk_high_offset_reg[14]),
        .I4(\cycle_counter_reg_n_0_[12] ),
        .I5(sclk_high_offset_reg[12]),
        .O(sclk1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk1_carry_i_1
       (.I0(sclk_high_offset_reg[11]),
        .I1(\cycle_counter_reg_n_0_[11] ),
        .I2(\cycle_counter_reg_n_0_[10] ),
        .I3(sclk_high_offset_reg[10]),
        .I4(\cycle_counter_reg_n_0_[9] ),
        .I5(sclk_high_offset_reg[9]),
        .O(sclk1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk1_carry_i_2
       (.I0(sclk_high_offset_reg[8]),
        .I1(\cycle_counter_reg_n_0_[8] ),
        .I2(\cycle_counter_reg_n_0_[6] ),
        .I3(sclk_high_offset_reg[6]),
        .I4(\cycle_counter_reg_n_0_[7] ),
        .I5(sclk_high_offset_reg[7]),
        .O(sclk1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk1_carry_i_3
       (.I0(sclk_high_offset_reg[5]),
        .I1(\cycle_counter_reg_n_0_[5] ),
        .I2(\cycle_counter_reg_n_0_[3] ),
        .I3(sclk_high_offset_reg[3]),
        .I4(\cycle_counter_reg_n_0_[4] ),
        .I5(sclk_high_offset_reg[4]),
        .O(sclk1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sclk1_carry_i_4
       (.I0(\cycle_counter_reg_n_0_[0] ),
        .I1(sclk_high_offset_reg[0]),
        .I2(\cycle_counter_reg_n_0_[1] ),
        .I3(sclk_high_offset_reg[1]),
        .I4(sclk_high_offset_reg[2]),
        .I5(\cycle_counter_reg_n_0_[2] ),
        .O(sclk1_carry_i_4_n_0));
  FDRE \sclk_high_offset_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[0]),
        .Q(sclk_high_offset_reg[0]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[10]),
        .Q(sclk_high_offset_reg[10]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[11]),
        .Q(sclk_high_offset_reg[11]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[12]),
        .Q(sclk_high_offset_reg[12]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[13]),
        .Q(sclk_high_offset_reg[13]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[14]),
        .Q(sclk_high_offset_reg[14]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[15]),
        .Q(sclk_high_offset_reg[15]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[1]),
        .Q(sclk_high_offset_reg[1]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[2]),
        .Q(sclk_high_offset_reg[2]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[3]),
        .Q(sclk_high_offset_reg[3]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[4]),
        .Q(sclk_high_offset_reg[4]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[5]),
        .Q(sclk_high_offset_reg[5]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[6]),
        .Q(sclk_high_offset_reg[6]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[7]),
        .Q(sclk_high_offset_reg[7]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[8]),
        .Q(sclk_high_offset_reg[8]),
        .R(1'b0));
  FDRE \sclk_high_offset_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_high_offset[9]),
        .Q(sclk_high_offset_reg[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    sclk_i_1
       (.I0(sclk_i_2_n_0),
        .I1(sclk_i_3_n_0),
        .I2(sclk),
        .O(sclk_i_1_n_0));
  LUT5 #(
    .INIT(32'h11223F00)) 
    sclk_i_2
       (.I0(sclk1),
        .I1(state[2]),
        .I2(state[1]),
        .I3(cpol),
        .I4(state[0]),
        .O(sclk_i_2_n_0));
  LUT5 #(
    .INIT(32'h22207777)) 
    sclk_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .I2(sclk0),
        .I3(sclk1),
        .I4(state[0]),
        .O(sclk_i_3_n_0));
  FDRE \sclk_low_offset_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[0]),
        .Q(sclk_low_offset_reg[0]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[10]),
        .Q(sclk_low_offset_reg[10]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[11]),
        .Q(sclk_low_offset_reg[11]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[12]),
        .Q(sclk_low_offset_reg[12]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[13]),
        .Q(sclk_low_offset_reg[13]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[14]),
        .Q(sclk_low_offset_reg[14]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[15]),
        .Q(sclk_low_offset_reg[15]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[1]),
        .Q(sclk_low_offset_reg[1]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[2]),
        .Q(sclk_low_offset_reg[2]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[3]),
        .Q(sclk_low_offset_reg[3]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[4]),
        .Q(sclk_low_offset_reg[4]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[5]),
        .Q(sclk_low_offset_reg[5]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[6]),
        .Q(sclk_low_offset_reg[6]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[7]),
        .Q(sclk_low_offset_reg[7]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[8]),
        .Q(sclk_low_offset_reg[8]),
        .R(1'b0));
  FDRE \sclk_low_offset_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sclk_low_offset[9]),
        .Q(sclk_low_offset_reg[9]),
        .R(1'b0));
  FDCE sclk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(sclk_i_1_n_0),
        .Q(sclk));
  FDRE \sdi_sample_offset_reg_reg[0] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[0]),
        .Q(sdi_sample_offset_reg[0]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[10] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[10]),
        .Q(sdi_sample_offset_reg[10]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[11] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[11]),
        .Q(sdi_sample_offset_reg[11]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[12] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[12]),
        .Q(sdi_sample_offset_reg[12]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[13] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[13]),
        .Q(sdi_sample_offset_reg[13]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[14] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[14]),
        .Q(sdi_sample_offset_reg[14]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[15] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[15]),
        .Q(sdi_sample_offset_reg[15]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[1]),
        .Q(sdi_sample_offset_reg[1]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[2] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[2]),
        .Q(sdi_sample_offset_reg[2]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[3] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[3]),
        .Q(sdi_sample_offset_reg[3]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[4] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[4]),
        .Q(sdi_sample_offset_reg[4]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[5] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[5]),
        .Q(sdi_sample_offset_reg[5]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[6] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[6]),
        .Q(sdi_sample_offset_reg[6]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[7] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[7]),
        .Q(sdi_sample_offset_reg[7]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[8] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[8]),
        .Q(sdi_sample_offset_reg[8]),
        .R(1'b0));
  FDRE \sdi_sample_offset_reg_reg[9] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(sdi_sample_offset[9]),
        .Q(sdi_sample_offset_reg[9]),
        .R(1'b0));
  FDRE \spi_mode_reg_reg[1] 
       (.C(clk),
        .CE(\cs_hold_time_reg[15]_i_1_n_0 ),
        .D(spi_mode),
        .Q(cpol),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBB0111)) 
    ss_n_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\data_out[31]_i_3_n_0 ),
        .I3(state[2]),
        .I4(ss_n),
        .O(ss_n_i_1_n_0));
  FDPE ss_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(ss_n_i_1_n_0),
        .PRE(\data_out[31]_i_2_n_0 ),
        .Q(ss_n));
  CARRY4 state0_carry
       (.CI(1'b0),
        .CO({state0_carry_n_0,state0_carry_n_1,state0_carry_n_2,state0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry_O_UNCONNECTED[3:0]),
        .S({state0_carry_i_1_n_0,state0_carry_i_2_n_0,state0_carry_i_3_n_0,state0_carry_i_4_n_0}));
  CARRY4 state0_carry__0
       (.CI(state0_carry_n_0),
        .CO({state0_carry__0_n_0,state0_carry__0_n_1,state0_carry__0_n_2,state0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry__0_O_UNCONNECTED[3:0]),
        .S({state1__21_carry__2_n_0,state1__21_carry__2_n_0,state0_carry__0_i_1_n_0,state0_carry__0_i_2_n_0}));
  LUT3 #(
    .INIT(8'h82)) 
    state0_carry__0_i_1
       (.I0(state1__21_carry__2_n_0),
        .I1(state10_in[15]),
        .I2(\bit_counter_reg_n_0_[15] ),
        .O(state0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry__0_i_2
       (.I0(\bit_counter_reg_n_0_[12] ),
        .I1(state10_in[12]),
        .I2(\bit_counter_reg_n_0_[13] ),
        .I3(state10_in[13]),
        .I4(state10_in[14]),
        .I5(\bit_counter_reg_n_0_[14] ),
        .O(state0_carry__0_i_2_n_0));
  CARRY4 state0_carry__1
       (.CI(state0_carry__0_n_0),
        .CO({NLW_state0_carry__1_CO_UNCONNECTED[3],state0_carry__1_n_1,state0_carry__1_n_2,state0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,state1__21_carry__2_n_0,state1__21_carry__2_n_0,state1__21_carry__2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_1
       (.I0(\bit_counter_reg_n_0_[9] ),
        .I1(state10_in[9]),
        .I2(\bit_counter_reg_n_0_[10] ),
        .I3(state10_in[10]),
        .I4(state10_in[11]),
        .I5(\bit_counter_reg_n_0_[11] ),
        .O(state0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_2
       (.I0(\bit_counter_reg_n_0_[8] ),
        .I1(state10_in[8]),
        .I2(\bit_counter_reg_n_0_[6] ),
        .I3(state10_in[6]),
        .I4(state10_in[7]),
        .I5(\bit_counter_reg_n_0_[7] ),
        .O(state0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_3
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(state10_in[3]),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(state10_in[4]),
        .I4(state10_in[5]),
        .I5(\bit_counter_reg_n_0_[5] ),
        .O(state0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    state0_carry_i_4
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(bits_per_transaction_reg[0]),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(state10_in[2]),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(state10_in[1]),
        .O(state0_carry_i_4_n_0));
  CARRY4 state1__10_carry
       (.CI(1'b0),
        .CO({state1__10_carry_n_0,state1__10_carry_n_1,state1__10_carry_n_2,state1__10_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1__10_carry_O_UNCONNECTED[3:0]),
        .S({state1__10_carry_i_1_n_0,state1__10_carry_i_2_n_0,state1__10_carry_i_3_n_0,state1__10_carry_i_4_n_0}));
  CARRY4 state1__10_carry__0
       (.CI(state1__10_carry_n_0),
        .CO({state1__10_carry__0_n_0,state1__10_carry__0_n_1,state1__10_carry__0_n_2,state1__10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1__10_carry__0_O_UNCONNECTED[3:0]),
        .S({state2__29_carry__2_n_0,state2__29_carry__2_n_0,state1__10_carry__0_i_1_n_0,state1__10_carry__0_i_2_n_0}));
  LUT3 #(
    .INIT(8'h82)) 
    state1__10_carry__0_i_1
       (.I0(state2__29_carry__2_n_0),
        .I1(state21_in[15]),
        .I2(\cycle_counter_reg_n_0_[15] ),
        .O(state1__10_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__10_carry__0_i_2
       (.I0(state21_in[13]),
        .I1(\cycle_counter_reg_n_0_[13] ),
        .I2(\cycle_counter_reg_n_0_[14] ),
        .I3(state21_in[14]),
        .I4(\cycle_counter_reg_n_0_[12] ),
        .I5(state21_in[12]),
        .O(state1__10_carry__0_i_2_n_0));
  CARRY4 state1__10_carry__1
       (.CI(state1__10_carry__0_n_0),
        .CO({NLW_state1__10_carry__1_CO_UNCONNECTED[3],state12_out,state1__10_carry__1_n_2,state1__10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1__10_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,state2__29_carry__2_n_0,state2__29_carry__2_n_0,state2__29_carry__2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__10_carry_i_1
       (.I0(state21_in[11]),
        .I1(\cycle_counter_reg_n_0_[11] ),
        .I2(\cycle_counter_reg_n_0_[9] ),
        .I3(state21_in[9]),
        .I4(\cycle_counter_reg_n_0_[10] ),
        .I5(state21_in[10]),
        .O(state1__10_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__10_carry_i_2
       (.I0(state21_in[8]),
        .I1(\cycle_counter_reg_n_0_[8] ),
        .I2(\cycle_counter_reg_n_0_[7] ),
        .I3(state21_in[7]),
        .I4(\cycle_counter_reg_n_0_[6] ),
        .I5(state21_in[6]),
        .O(state1__10_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__10_carry_i_3
       (.I0(state21_in[5]),
        .I1(\cycle_counter_reg_n_0_[5] ),
        .I2(\cycle_counter_reg_n_0_[3] ),
        .I3(state21_in[3]),
        .I4(\cycle_counter_reg_n_0_[4] ),
        .I5(state21_in[4]),
        .O(state1__10_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    state1__10_carry_i_4
       (.I0(cycles_per_bit_reg[0]),
        .I1(\cycle_counter_reg_n_0_[0] ),
        .I2(\cycle_counter_reg_n_0_[2] ),
        .I3(state21_in[2]),
        .I4(\cycle_counter_reg_n_0_[1] ),
        .I5(state21_in[1]),
        .O(state1__10_carry_i_4_n_0));
  CARRY4 state1__21_carry
       (.CI(1'b0),
        .CO({state1__21_carry_n_0,state1__21_carry_n_1,state1__21_carry_n_2,state1__21_carry_n_3}),
        .CYINIT(bits_per_transaction_reg[0]),
        .DI(bits_per_transaction_reg[4:1]),
        .O(state10_in[4:1]),
        .S({state1__21_carry_i_1_n_0,state1__21_carry_i_2_n_0,state1__21_carry_i_3_n_0,state1__21_carry_i_4_n_0}));
  CARRY4 state1__21_carry__0
       (.CI(state1__21_carry_n_0),
        .CO({state1__21_carry__0_n_0,state1__21_carry__0_n_1,state1__21_carry__0_n_2,state1__21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(bits_per_transaction_reg[8:5]),
        .O(state10_in[8:5]),
        .S({state1__21_carry__0_i_1_n_0,state1__21_carry__0_i_2_n_0,state1__21_carry__0_i_3_n_0,state1__21_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__0_i_1
       (.I0(bits_per_transaction_reg[8]),
        .O(state1__21_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__0_i_2
       (.I0(bits_per_transaction_reg[7]),
        .O(state1__21_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__0_i_3
       (.I0(bits_per_transaction_reg[6]),
        .O(state1__21_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__0_i_4
       (.I0(bits_per_transaction_reg[5]),
        .O(state1__21_carry__0_i_4_n_0));
  CARRY4 state1__21_carry__1
       (.CI(state1__21_carry__0_n_0),
        .CO({state1__21_carry__1_n_0,state1__21_carry__1_n_1,state1__21_carry__1_n_2,state1__21_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(bits_per_transaction_reg[12:9]),
        .O(state10_in[12:9]),
        .S({state1__21_carry__1_i_1_n_0,state1__21_carry__1_i_2_n_0,state1__21_carry__1_i_3_n_0,state1__21_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__1_i_1
       (.I0(bits_per_transaction_reg[12]),
        .O(state1__21_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__1_i_2
       (.I0(bits_per_transaction_reg[11]),
        .O(state1__21_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__1_i_3
       (.I0(bits_per_transaction_reg[10]),
        .O(state1__21_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__1_i_4
       (.I0(bits_per_transaction_reg[9]),
        .O(state1__21_carry__1_i_4_n_0));
  CARRY4 state1__21_carry__2
       (.CI(state1__21_carry__1_n_0),
        .CO({state1__21_carry__2_n_0,NLW_state1__21_carry__2_CO_UNCONNECTED[2],state1__21_carry__2_n_2,state1__21_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bits_per_transaction_reg[15:13]}),
        .O({NLW_state1__21_carry__2_O_UNCONNECTED[3],state10_in[15:13]}),
        .S({1'b1,state1__21_carry__2_i_1_n_0,state1__21_carry__2_i_2_n_0,state1__21_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__2_i_1
       (.I0(bits_per_transaction_reg[15]),
        .O(state1__21_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__2_i_2
       (.I0(bits_per_transaction_reg[14]),
        .O(state1__21_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry__2_i_3
       (.I0(bits_per_transaction_reg[13]),
        .O(state1__21_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry_i_1
       (.I0(bits_per_transaction_reg[4]),
        .O(state1__21_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry_i_2
       (.I0(bits_per_transaction_reg[3]),
        .O(state1__21_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry_i_3
       (.I0(bits_per_transaction_reg[2]),
        .O(state1__21_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1__21_carry_i_4
       (.I0(bits_per_transaction_reg[1]),
        .O(state1__21_carry_i_4_n_0));
  CARRY4 state1__51_carry
       (.CI(1'b0),
        .CO({state1__51_carry_n_0,state1__51_carry_n_1,state1__51_carry_n_2,state1__51_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1__51_carry_O_UNCONNECTED[3:0]),
        .S({state1__51_carry_i_1_n_0,state1__51_carry_i_2_n_0,state1__51_carry_i_3_n_0,state1__51_carry_i_4_n_0}));
  CARRY4 state1__51_carry__0
       (.CI(state1__51_carry_n_0),
        .CO({state1__51_carry__0_n_0,state1__51_carry__0_n_1,state1__51_carry__0_n_2,state1__51_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1__51_carry__0_O_UNCONNECTED[3:0]),
        .S({state2__59_carry__2_n_0,state2__59_carry__2_n_0,state1__51_carry__0_i_1_n_0,state1__51_carry__0_i_2_n_0}));
  LUT3 #(
    .INIT(8'h82)) 
    state1__51_carry__0_i_1
       (.I0(state2__59_carry__2_n_0),
        .I1(state23_in[15]),
        .I2(\delay_counter_reg_n_0_[15] ),
        .O(state1__51_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__51_carry__0_i_2
       (.I0(\delay_counter_reg_n_0_[13] ),
        .I1(state23_in[13]),
        .I2(\delay_counter_reg_n_0_[12] ),
        .I3(state23_in[12]),
        .I4(state23_in[14]),
        .I5(\delay_counter_reg_n_0_[14] ),
        .O(state1__51_carry__0_i_2_n_0));
  CARRY4 state1__51_carry__1
       (.CI(state1__51_carry__0_n_0),
        .CO({NLW_state1__51_carry__1_CO_UNCONNECTED[3],state14_out,state1__51_carry__1_n_2,state1__51_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1__51_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,state2__59_carry__2_n_0,state2__59_carry__2_n_0,state2__59_carry__2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__51_carry_i_1
       (.I0(state23_in[11]),
        .I1(\delay_counter_reg_n_0_[11] ),
        .I2(\delay_counter_reg_n_0_[9] ),
        .I3(state23_in[9]),
        .I4(\delay_counter_reg_n_0_[10] ),
        .I5(state23_in[10]),
        .O(state1__51_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__51_carry_i_2
       (.I0(\delay_counter_reg_n_0_[8] ),
        .I1(state23_in[8]),
        .I2(\delay_counter_reg_n_0_[6] ),
        .I3(state23_in[6]),
        .I4(state23_in[7]),
        .I5(\delay_counter_reg_n_0_[7] ),
        .O(state1__51_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1__51_carry_i_3
       (.I0(state23_in[5]),
        .I1(\delay_counter_reg_n_0_[5] ),
        .I2(\delay_counter_reg_n_0_[4] ),
        .I3(state23_in[4]),
        .I4(\delay_counter_reg_n_0_[3] ),
        .I5(state23_in[3]),
        .O(state1__51_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    state1__51_carry_i_4
       (.I0(\delay_counter_reg_n_0_[1] ),
        .I1(state23_in[1]),
        .I2(\delay_counter_reg_n_0_[0] ),
        .I3(cs_to_trx_delay_reg[0]),
        .I4(state23_in[2]),
        .I5(\delay_counter_reg_n_0_[2] ),
        .O(state1__51_carry_i_4_n_0));
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}));
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state2_carry__2_n_0,state2_carry__2_n_0,state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0}));
  LUT3 #(
    .INIT(8'h82)) 
    state1_carry__0_i_1
       (.I0(state2_carry__2_n_0),
        .I1(state2[15]),
        .I2(\delay_counter_reg_n_0_[15] ),
        .O(state1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry__0_i_2
       (.I0(\delay_counter_reg_n_0_[14] ),
        .I1(state2[14]),
        .I2(\delay_counter_reg_n_0_[12] ),
        .I3(state2[12]),
        .I4(state2[13]),
        .I5(\delay_counter_reg_n_0_[13] ),
        .O(state1_carry__0_i_2_n_0));
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({NLW_state1_carry__1_CO_UNCONNECTED[3],state1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,state2_carry__2_n_0,state2_carry__2_n_0,state2_carry__2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_1
       (.I0(state2[11]),
        .I1(\delay_counter_reg_n_0_[11] ),
        .I2(\delay_counter_reg_n_0_[9] ),
        .I3(state2[9]),
        .I4(\delay_counter_reg_n_0_[10] ),
        .I5(state2[10]),
        .O(state1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_2
       (.I0(\delay_counter_reg_n_0_[6] ),
        .I1(state2[6]),
        .I2(\delay_counter_reg_n_0_[7] ),
        .I3(state2[7]),
        .I4(state2[8]),
        .I5(\delay_counter_reg_n_0_[8] ),
        .O(state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_3
       (.I0(state2[5]),
        .I1(\delay_counter_reg_n_0_[5] ),
        .I2(\delay_counter_reg_n_0_[3] ),
        .I3(state2[3]),
        .I4(\delay_counter_reg_n_0_[4] ),
        .I5(state2[4]),
        .O(state1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    state1_carry_i_4
       (.I0(cs_hold_time_reg[0]),
        .I1(\delay_counter_reg_n_0_[0] ),
        .I2(\delay_counter_reg_n_0_[2] ),
        .I3(state2[2]),
        .I4(\delay_counter_reg_n_0_[1] ),
        .I5(state2[1]),
        .O(state1_carry_i_4_n_0));
  CARRY4 state2__29_carry
       (.CI(1'b0),
        .CO({state2__29_carry_n_0,state2__29_carry_n_1,state2__29_carry_n_2,state2__29_carry_n_3}),
        .CYINIT(cycles_per_bit_reg[0]),
        .DI(cycles_per_bit_reg[4:1]),
        .O(state21_in[4:1]),
        .S({state2__29_carry_i_1_n_0,state2__29_carry_i_2_n_0,state2__29_carry_i_3_n_0,state2__29_carry_i_4_n_0}));
  CARRY4 state2__29_carry__0
       (.CI(state2__29_carry_n_0),
        .CO({state2__29_carry__0_n_0,state2__29_carry__0_n_1,state2__29_carry__0_n_2,state2__29_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cycles_per_bit_reg[8:5]),
        .O(state21_in[8:5]),
        .S({state2__29_carry__0_i_1_n_0,state2__29_carry__0_i_2_n_0,state2__29_carry__0_i_3_n_0,state2__29_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__0_i_1
       (.I0(cycles_per_bit_reg[8]),
        .O(state2__29_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__0_i_2
       (.I0(cycles_per_bit_reg[7]),
        .O(state2__29_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__0_i_3
       (.I0(cycles_per_bit_reg[6]),
        .O(state2__29_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__0_i_4
       (.I0(cycles_per_bit_reg[5]),
        .O(state2__29_carry__0_i_4_n_0));
  CARRY4 state2__29_carry__1
       (.CI(state2__29_carry__0_n_0),
        .CO({state2__29_carry__1_n_0,state2__29_carry__1_n_1,state2__29_carry__1_n_2,state2__29_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(cycles_per_bit_reg[12:9]),
        .O(state21_in[12:9]),
        .S({state2__29_carry__1_i_1_n_0,state2__29_carry__1_i_2_n_0,state2__29_carry__1_i_3_n_0,state2__29_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__1_i_1
       (.I0(cycles_per_bit_reg[12]),
        .O(state2__29_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__1_i_2
       (.I0(cycles_per_bit_reg[11]),
        .O(state2__29_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__1_i_3
       (.I0(cycles_per_bit_reg[10]),
        .O(state2__29_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__1_i_4
       (.I0(cycles_per_bit_reg[9]),
        .O(state2__29_carry__1_i_4_n_0));
  CARRY4 state2__29_carry__2
       (.CI(state2__29_carry__1_n_0),
        .CO({state2__29_carry__2_n_0,NLW_state2__29_carry__2_CO_UNCONNECTED[2],state2__29_carry__2_n_2,state2__29_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cycles_per_bit_reg[15:13]}),
        .O({NLW_state2__29_carry__2_O_UNCONNECTED[3],state21_in[15:13]}),
        .S({1'b1,state2__29_carry__2_i_1_n_0,state2__29_carry__2_i_2_n_0,state2__29_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__2_i_1
       (.I0(cycles_per_bit_reg[15]),
        .O(state2__29_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__2_i_2
       (.I0(cycles_per_bit_reg[14]),
        .O(state2__29_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry__2_i_3
       (.I0(cycles_per_bit_reg[13]),
        .O(state2__29_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry_i_1
       (.I0(cycles_per_bit_reg[4]),
        .O(state2__29_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry_i_2
       (.I0(cycles_per_bit_reg[3]),
        .O(state2__29_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry_i_3
       (.I0(cycles_per_bit_reg[2]),
        .O(state2__29_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__29_carry_i_4
       (.I0(cycles_per_bit_reg[1]),
        .O(state2__29_carry_i_4_n_0));
  CARRY4 state2__59_carry
       (.CI(1'b0),
        .CO({state2__59_carry_n_0,state2__59_carry_n_1,state2__59_carry_n_2,state2__59_carry_n_3}),
        .CYINIT(cs_to_trx_delay_reg[0]),
        .DI(cs_to_trx_delay_reg[4:1]),
        .O(state23_in[4:1]),
        .S({state2__59_carry_i_1_n_0,state2__59_carry_i_2_n_0,state2__59_carry_i_3_n_0,state2__59_carry_i_4_n_0}));
  CARRY4 state2__59_carry__0
       (.CI(state2__59_carry_n_0),
        .CO({state2__59_carry__0_n_0,state2__59_carry__0_n_1,state2__59_carry__0_n_2,state2__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cs_to_trx_delay_reg[8:5]),
        .O(state23_in[8:5]),
        .S({state2__59_carry__0_i_1_n_0,state2__59_carry__0_i_2_n_0,state2__59_carry__0_i_3_n_0,state2__59_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__0_i_1
       (.I0(cs_to_trx_delay_reg[8]),
        .O(state2__59_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__0_i_2
       (.I0(cs_to_trx_delay_reg[7]),
        .O(state2__59_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__0_i_3
       (.I0(cs_to_trx_delay_reg[6]),
        .O(state2__59_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__0_i_4
       (.I0(cs_to_trx_delay_reg[5]),
        .O(state2__59_carry__0_i_4_n_0));
  CARRY4 state2__59_carry__1
       (.CI(state2__59_carry__0_n_0),
        .CO({state2__59_carry__1_n_0,state2__59_carry__1_n_1,state2__59_carry__1_n_2,state2__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(cs_to_trx_delay_reg[12:9]),
        .O(state23_in[12:9]),
        .S({state2__59_carry__1_i_1_n_0,state2__59_carry__1_i_2_n_0,state2__59_carry__1_i_3_n_0,state2__59_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__1_i_1
       (.I0(cs_to_trx_delay_reg[12]),
        .O(state2__59_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__1_i_2
       (.I0(cs_to_trx_delay_reg[11]),
        .O(state2__59_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__1_i_3
       (.I0(cs_to_trx_delay_reg[10]),
        .O(state2__59_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__1_i_4
       (.I0(cs_to_trx_delay_reg[9]),
        .O(state2__59_carry__1_i_4_n_0));
  CARRY4 state2__59_carry__2
       (.CI(state2__59_carry__1_n_0),
        .CO({state2__59_carry__2_n_0,NLW_state2__59_carry__2_CO_UNCONNECTED[2],state2__59_carry__2_n_2,state2__59_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cs_to_trx_delay_reg[15:13]}),
        .O({NLW_state2__59_carry__2_O_UNCONNECTED[3],state23_in[15:13]}),
        .S({1'b1,state2__59_carry__2_i_1_n_0,state2__59_carry__2_i_2_n_0,state2__59_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__2_i_1
       (.I0(cs_to_trx_delay_reg[15]),
        .O(state2__59_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__2_i_2
       (.I0(cs_to_trx_delay_reg[14]),
        .O(state2__59_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry__2_i_3
       (.I0(cs_to_trx_delay_reg[13]),
        .O(state2__59_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry_i_1
       (.I0(cs_to_trx_delay_reg[4]),
        .O(state2__59_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry_i_2
       (.I0(cs_to_trx_delay_reg[3]),
        .O(state2__59_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry_i_3
       (.I0(cs_to_trx_delay_reg[2]),
        .O(state2__59_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2__59_carry_i_4
       (.I0(cs_to_trx_delay_reg[1]),
        .O(state2__59_carry_i_4_n_0));
  CARRY4 state2_carry
       (.CI(1'b0),
        .CO({state2_carry_n_0,state2_carry_n_1,state2_carry_n_2,state2_carry_n_3}),
        .CYINIT(cs_hold_time_reg[0]),
        .DI(cs_hold_time_reg[4:1]),
        .O(state2[4:1]),
        .S({state2_carry_i_1_n_0,state2_carry_i_2_n_0,state2_carry_i_3_n_0,state2_carry_i_4_n_0}));
  CARRY4 state2_carry__0
       (.CI(state2_carry_n_0),
        .CO({state2_carry__0_n_0,state2_carry__0_n_1,state2_carry__0_n_2,state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cs_hold_time_reg[8:5]),
        .O(state2[8:5]),
        .S({state2_carry__0_i_1_n_0,state2_carry__0_i_2_n_0,state2_carry__0_i_3_n_0,state2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__0_i_1
       (.I0(cs_hold_time_reg[8]),
        .O(state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__0_i_2
       (.I0(cs_hold_time_reg[7]),
        .O(state2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__0_i_3
       (.I0(cs_hold_time_reg[6]),
        .O(state2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__0_i_4
       (.I0(cs_hold_time_reg[5]),
        .O(state2_carry__0_i_4_n_0));
  CARRY4 state2_carry__1
       (.CI(state2_carry__0_n_0),
        .CO({state2_carry__1_n_0,state2_carry__1_n_1,state2_carry__1_n_2,state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(cs_hold_time_reg[12:9]),
        .O(state2[12:9]),
        .S({state2_carry__1_i_1_n_0,state2_carry__1_i_2_n_0,state2_carry__1_i_3_n_0,state2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__1_i_1
       (.I0(cs_hold_time_reg[12]),
        .O(state2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__1_i_2
       (.I0(cs_hold_time_reg[11]),
        .O(state2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__1_i_3
       (.I0(cs_hold_time_reg[10]),
        .O(state2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__1_i_4
       (.I0(cs_hold_time_reg[9]),
        .O(state2_carry__1_i_4_n_0));
  CARRY4 state2_carry__2
       (.CI(state2_carry__1_n_0),
        .CO({state2_carry__2_n_0,NLW_state2_carry__2_CO_UNCONNECTED[2],state2_carry__2_n_2,state2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cs_hold_time_reg[15:13]}),
        .O({NLW_state2_carry__2_O_UNCONNECTED[3],state2[15:13]}),
        .S({1'b1,state2_carry__2_i_1_n_0,state2_carry__2_i_2_n_0,state2_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__2_i_1
       (.I0(cs_hold_time_reg[15]),
        .O(state2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__2_i_2
       (.I0(cs_hold_time_reg[14]),
        .O(state2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry__2_i_3
       (.I0(cs_hold_time_reg[13]),
        .O(state2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry_i_1
       (.I0(cs_hold_time_reg[4]),
        .O(state2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry_i_2
       (.I0(cs_hold_time_reg[3]),
        .O(state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry_i_3
       (.I0(cs_hold_time_reg[2]),
        .O(state2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state2_carry_i_4
       (.I0(cs_hold_time_reg[1]),
        .O(state2_carry_i_4_n_0));
  CARRY4 tx_shift_reg1_carry
       (.CI(1'b0),
        .CO({tx_shift_reg1_carry_n_0,tx_shift_reg1_carry_n_1,tx_shift_reg1_carry_n_2,tx_shift_reg1_carry_n_3}),
        .CYINIT(state10_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tx_shift_reg1[4:1]),
        .S({tx_shift_reg1_carry_i_2_n_0,tx_shift_reg1_carry_i_3_n_0,tx_shift_reg1_carry_i_4_n_0,tx_shift_reg1_carry_i_5_n_0}));
  CARRY4 tx_shift_reg1_carry__0
       (.CI(tx_shift_reg1_carry_n_0),
        .CO({tx_shift_reg1_carry__0_n_0,tx_shift_reg1_carry__0_n_1,tx_shift_reg1_carry__0_n_2,tx_shift_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,tx_shift_reg1_carry__0_i_1_n_0}),
        .O(tx_shift_reg1[8:5]),
        .S({tx_shift_reg1_carry__0_i_2_n_0,tx_shift_reg1_carry__0_i_3_n_0,tx_shift_reg1_carry__0_i_4_n_0,bits_per_transaction_reg[5]}));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__0_i_1
       (.I0(bits_per_transaction_reg[5]),
        .O(tx_shift_reg1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__0_i_2
       (.I0(bits_per_transaction_reg[8]),
        .O(tx_shift_reg1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__0_i_3
       (.I0(bits_per_transaction_reg[7]),
        .O(tx_shift_reg1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__0_i_4
       (.I0(bits_per_transaction_reg[6]),
        .O(tx_shift_reg1_carry__0_i_4_n_0));
  CARRY4 tx_shift_reg1_carry__1
       (.CI(tx_shift_reg1_carry__0_n_0),
        .CO({tx_shift_reg1_carry__1_n_0,tx_shift_reg1_carry__1_n_1,tx_shift_reg1_carry__1_n_2,tx_shift_reg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tx_shift_reg1[12:9]),
        .S({tx_shift_reg1_carry__1_i_1_n_0,tx_shift_reg1_carry__1_i_2_n_0,tx_shift_reg1_carry__1_i_3_n_0,tx_shift_reg1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__1_i_1
       (.I0(bits_per_transaction_reg[12]),
        .O(tx_shift_reg1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__1_i_2
       (.I0(bits_per_transaction_reg[11]),
        .O(tx_shift_reg1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__1_i_3
       (.I0(bits_per_transaction_reg[10]),
        .O(tx_shift_reg1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__1_i_4
       (.I0(bits_per_transaction_reg[9]),
        .O(tx_shift_reg1_carry__1_i_4_n_0));
  CARRY4 tx_shift_reg1_carry__2
       (.CI(tx_shift_reg1_carry__1_n_0),
        .CO({tx_shift_reg1_carry__2_n_0,NLW_tx_shift_reg1_carry__2_CO_UNCONNECTED[2],tx_shift_reg1_carry__2_n_2,tx_shift_reg1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tx_shift_reg1_carry__2_O_UNCONNECTED[3],tx_shift_reg1[15:13]}),
        .S({1'b1,tx_shift_reg1_carry__2_i_1_n_0,tx_shift_reg1_carry__2_i_2_n_0,tx_shift_reg1_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__2_i_1
       (.I0(bits_per_transaction_reg[15]),
        .O(tx_shift_reg1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__2_i_2
       (.I0(bits_per_transaction_reg[14]),
        .O(tx_shift_reg1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry__2_i_3
       (.I0(bits_per_transaction_reg[13]),
        .O(tx_shift_reg1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry_i_1
       (.I0(bits_per_transaction_reg[0]),
        .O(state10_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry_i_2
       (.I0(bits_per_transaction_reg[4]),
        .O(tx_shift_reg1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry_i_3
       (.I0(bits_per_transaction_reg[3]),
        .O(tx_shift_reg1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry_i_4
       (.I0(bits_per_transaction_reg[2]),
        .O(tx_shift_reg1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_shift_reg1_carry_i_5
       (.I0(bits_per_transaction_reg[1]),
        .O(tx_shift_reg1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \tx_shift_reg[0]_i_1 
       (.I0(\tx_shift_reg[31]_i_3_n_0 ),
        .I1(tx_shift_reg1[2]),
        .I2(tx_shift_reg1[4]),
        .I3(data_in[0]),
        .I4(tx_shift_reg1[3]),
        .I5(tx_shift_reg1[1]),
        .O(tx_shift_reg[0]));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[10]_i_1 
       (.I0(\tx_shift_reg[10]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[11]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[9] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[10]_i_2 
       (.I0(\tx_shift_reg[10]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[12]_i_3_n_0 ),
        .O(\tx_shift_reg[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \tx_shift_reg[10]_i_3 
       (.I0(data_in[3]),
        .I1(tx_shift_reg1[2]),
        .I2(tx_shift_reg1[3]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[7]),
        .O(\tx_shift_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[11]_i_1 
       (.I0(\tx_shift_reg[12]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_3_n_0 ),
        .I2(\tx_shift_reg[31]_i_6_n_0 ),
        .I3(\tx_shift_reg[11]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[10] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[11]_i_2 
       (.I0(\tx_shift_reg[11]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[13]_i_3_n_0 ),
        .O(\tx_shift_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \tx_shift_reg[11]_i_3 
       (.I0(data_in[4]),
        .I1(tx_shift_reg1[2]),
        .I2(data_in[0]),
        .I3(tx_shift_reg1[3]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[8]),
        .O(\tx_shift_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[12]_i_1 
       (.I0(\tx_shift_reg[12]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[13]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[11] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[12]_i_2 
       (.I0(\tx_shift_reg[12]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[14]_i_3_n_0 ),
        .O(\tx_shift_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \tx_shift_reg[12]_i_3 
       (.I0(data_in[5]),
        .I1(tx_shift_reg1[2]),
        .I2(data_in[1]),
        .I3(tx_shift_reg1[3]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[9]),
        .O(\tx_shift_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[13]_i_1 
       (.I0(\tx_shift_reg[13]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[14]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[12] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[13]));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \tx_shift_reg[13]_i_2 
       (.I0(\tx_shift_reg[13]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[19]_i_3_n_0 ),
        .I3(tx_shift_reg1[2]),
        .I4(\tx_shift_reg[15]_i_3_n_0 ),
        .O(\tx_shift_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \tx_shift_reg[13]_i_3 
       (.I0(data_in[6]),
        .I1(tx_shift_reg1[2]),
        .I2(data_in[2]),
        .I3(tx_shift_reg1[3]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[10]),
        .O(\tx_shift_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[14]_i_1 
       (.I0(\tx_shift_reg[14]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[15]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[13] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[14]));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \tx_shift_reg[14]_i_2 
       (.I0(\tx_shift_reg[14]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[20]_i_3_n_0 ),
        .I3(tx_shift_reg1[2]),
        .I4(\tx_shift_reg[16]_i_3_n_0 ),
        .O(\tx_shift_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \tx_shift_reg[14]_i_3 
       (.I0(data_in[7]),
        .I1(tx_shift_reg1[2]),
        .I2(data_in[3]),
        .I3(tx_shift_reg1[3]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[11]),
        .O(\tx_shift_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[15]_i_1 
       (.I0(\tx_shift_reg[15]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[16]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[14] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[15]));
  LUT6 #(
    .INIT(64'hCFCF505FC0C0505F)) 
    \tx_shift_reg[15]_i_2 
       (.I0(\tx_shift_reg[19]_i_3_n_0 ),
        .I1(\tx_shift_reg[15]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[21]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[17]_i_3_n_0 ),
        .O(\tx_shift_reg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \tx_shift_reg[15]_i_3 
       (.I0(data_in[0]),
        .I1(tx_shift_reg1[3]),
        .I2(tx_shift_reg1[4]),
        .I3(data_in[8]),
        .O(\tx_shift_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F444F444F)) 
    \tx_shift_reg[16]_i_1 
       (.I0(\tx_shift_reg[31]_i_3_n_0 ),
        .I1(\tx_shift_reg[17]_i_2_n_0 ),
        .I2(\tx_shift_reg[31]_i_6_n_0 ),
        .I3(\tx_shift_reg[16]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[15] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[16]));
  LUT6 #(
    .INIT(64'hCFCF505FC0C0505F)) 
    \tx_shift_reg[16]_i_2 
       (.I0(\tx_shift_reg[20]_i_3_n_0 ),
        .I1(\tx_shift_reg[16]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[22]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[18]_i_3_n_0 ),
        .O(\tx_shift_reg[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \tx_shift_reg[16]_i_3 
       (.I0(data_in[1]),
        .I1(tx_shift_reg1[3]),
        .I2(tx_shift_reg1[4]),
        .I3(data_in[9]),
        .O(\tx_shift_reg[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[17]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[17]_i_2_n_0 ),
        .I2(\tx_shift_reg[18]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[16] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[17]));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \tx_shift_reg[17]_i_2 
       (.I0(\tx_shift_reg[17]_i_3_n_0 ),
        .I1(\tx_shift_reg[21]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[19]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[23]_i_3_n_0 ),
        .O(\tx_shift_reg[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \tx_shift_reg[17]_i_3 
       (.I0(data_in[2]),
        .I1(tx_shift_reg1[3]),
        .I2(tx_shift_reg1[4]),
        .I3(data_in[10]),
        .O(\tx_shift_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[18]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[18]_i_2_n_0 ),
        .I2(\tx_shift_reg[19]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[17] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[18]));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \tx_shift_reg[18]_i_2 
       (.I0(\tx_shift_reg[18]_i_3_n_0 ),
        .I1(\tx_shift_reg[22]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[20]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[24]_i_3_n_0 ),
        .O(\tx_shift_reg[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \tx_shift_reg[18]_i_3 
       (.I0(data_in[3]),
        .I1(tx_shift_reg1[3]),
        .I2(tx_shift_reg1[4]),
        .I3(data_in[11]),
        .O(\tx_shift_reg[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[19]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[19]_i_2_n_0 ),
        .I2(\tx_shift_reg[20]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[18] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[19]_i_2 
       (.I0(\tx_shift_reg[19]_i_3_n_0 ),
        .I1(\tx_shift_reg[23]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[21]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[25]_i_3_n_0 ),
        .O(\tx_shift_reg[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \tx_shift_reg[19]_i_3 
       (.I0(data_in[4]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[12]),
        .I3(tx_shift_reg1[4]),
        .O(\tx_shift_reg[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[1]_i_1 
       (.I0(\tx_shift_reg[1]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[2]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[0] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[1]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \tx_shift_reg[1]_i_2 
       (.I0(tx_shift_reg1[1]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[0]),
        .I3(tx_shift_reg1[4]),
        .I4(tx_shift_reg1[2]),
        .O(\tx_shift_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[20]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[20]_i_2_n_0 ),
        .I2(\tx_shift_reg[21]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[19] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[20]_i_2 
       (.I0(\tx_shift_reg[20]_i_3_n_0 ),
        .I1(\tx_shift_reg[24]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[22]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[26]_i_3_n_0 ),
        .O(\tx_shift_reg[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \tx_shift_reg[20]_i_3 
       (.I0(data_in[5]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[13]),
        .I3(tx_shift_reg1[4]),
        .O(\tx_shift_reg[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[21]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[21]_i_2_n_0 ),
        .I2(\tx_shift_reg[22]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[20] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[21]_i_2 
       (.I0(\tx_shift_reg[21]_i_3_n_0 ),
        .I1(\tx_shift_reg[25]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[23]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[27]_i_3_n_0 ),
        .O(\tx_shift_reg[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \tx_shift_reg[21]_i_3 
       (.I0(data_in[6]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[14]),
        .I3(tx_shift_reg1[4]),
        .O(\tx_shift_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[22]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[22]_i_2_n_0 ),
        .I2(\tx_shift_reg[23]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[21] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[22]_i_2 
       (.I0(\tx_shift_reg[22]_i_3_n_0 ),
        .I1(\tx_shift_reg[26]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[24]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[28]_i_3_n_0 ),
        .O(\tx_shift_reg[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \tx_shift_reg[22]_i_3 
       (.I0(data_in[7]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[15]),
        .I3(tx_shift_reg1[4]),
        .O(\tx_shift_reg[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[23]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[23]_i_2_n_0 ),
        .I2(\tx_shift_reg[24]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[22] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[23]_i_2 
       (.I0(\tx_shift_reg[23]_i_3_n_0 ),
        .I1(\tx_shift_reg[27]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[25]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[29]_i_3_n_0 ),
        .O(\tx_shift_reg[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[23]_i_3 
       (.I0(data_in[8]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[0]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[16]),
        .O(\tx_shift_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[24]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[24]_i_2_n_0 ),
        .I2(\tx_shift_reg[25]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[23] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[24]_i_2 
       (.I0(\tx_shift_reg[24]_i_3_n_0 ),
        .I1(\tx_shift_reg[28]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[26]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[30]_i_3_n_0 ),
        .O(\tx_shift_reg[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[24]_i_3 
       (.I0(data_in[9]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[1]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[17]),
        .O(\tx_shift_reg[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[25]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[25]_i_2_n_0 ),
        .I2(\tx_shift_reg[26]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[24] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[25]_i_2 
       (.I0(\tx_shift_reg[25]_i_3_n_0 ),
        .I1(\tx_shift_reg[29]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[27]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_15_n_0 ),
        .O(\tx_shift_reg[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[25]_i_3 
       (.I0(data_in[10]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[2]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[18]),
        .O(\tx_shift_reg[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[26]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[26]_i_2_n_0 ),
        .I2(\tx_shift_reg[27]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[25] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[26]_i_2 
       (.I0(\tx_shift_reg[26]_i_3_n_0 ),
        .I1(\tx_shift_reg[30]_i_3_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[28]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_11_n_0 ),
        .O(\tx_shift_reg[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[26]_i_3 
       (.I0(data_in[11]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[3]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[19]),
        .O(\tx_shift_reg[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[27]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[27]_i_2_n_0 ),
        .I2(\tx_shift_reg[28]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[26] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[27]_i_2 
       (.I0(\tx_shift_reg[27]_i_3_n_0 ),
        .I1(\tx_shift_reg[31]_i_15_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[29]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_17_n_0 ),
        .O(\tx_shift_reg[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[27]_i_3 
       (.I0(data_in[12]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[4]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[20]),
        .O(\tx_shift_reg[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[28]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[28]_i_2_n_0 ),
        .I2(\tx_shift_reg[29]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[27] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[28]_i_2 
       (.I0(\tx_shift_reg[28]_i_3_n_0 ),
        .I1(\tx_shift_reg[31]_i_11_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[30]_i_3_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_13_n_0 ),
        .O(\tx_shift_reg[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[28]_i_3 
       (.I0(data_in[13]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[5]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[21]),
        .O(\tx_shift_reg[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[29]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[29]_i_2_n_0 ),
        .I2(\tx_shift_reg[30]_i_2_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[28] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[29]_i_2 
       (.I0(\tx_shift_reg[29]_i_3_n_0 ),
        .I1(\tx_shift_reg[31]_i_17_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[31]_i_15_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_16_n_0 ),
        .O(\tx_shift_reg[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[29]_i_3 
       (.I0(data_in[14]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[6]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[22]),
        .O(\tx_shift_reg[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[2]_i_1 
       (.I0(\tx_shift_reg[2]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[3]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[1] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[2]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \tx_shift_reg[2]_i_2 
       (.I0(tx_shift_reg1[1]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[1]),
        .I3(tx_shift_reg1[4]),
        .I4(tx_shift_reg1[2]),
        .O(\tx_shift_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[30]_i_1 
       (.I0(\tx_shift_reg[31]_i_6_n_0 ),
        .I1(\tx_shift_reg[30]_i_2_n_0 ),
        .I2(\tx_shift_reg[31]_i_5_n_0 ),
        .I3(\tx_shift_reg[31]_i_3_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[29] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[30]_i_2 
       (.I0(\tx_shift_reg[30]_i_3_n_0 ),
        .I1(\tx_shift_reg[31]_i_13_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[31]_i_11_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_12_n_0 ),
        .O(\tx_shift_reg[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \tx_shift_reg[30]_i_3 
       (.I0(data_in[15]),
        .I1(tx_shift_reg1[3]),
        .I2(data_in[7]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[23]),
        .O(\tx_shift_reg[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005D00)) 
    \tx_shift_reg[31]_i_1 
       (.I0(state[1]),
        .I1(state12_out),
        .I2(state0_carry__1_n_1),
        .I3(state[0]),
        .I4(state[2]),
        .O(tx_shift_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tx_shift_reg[31]_i_10 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(tx_shift_reg1[6]),
        .I3(tx_shift_reg1[11]),
        .I4(tx_shift_reg1[5]),
        .I5(tx_shift_reg1[9]),
        .O(\tx_shift_reg[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_11 
       (.I0(data_in[1]),
        .I1(data_in[17]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[9]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[25]),
        .O(\tx_shift_reg[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_12 
       (.I0(data_in[5]),
        .I1(data_in[21]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[13]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[29]),
        .O(\tx_shift_reg[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_13 
       (.I0(data_in[3]),
        .I1(data_in[19]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[11]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[27]),
        .O(\tx_shift_reg[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_14 
       (.I0(data_in[7]),
        .I1(data_in[23]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[15]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[31]),
        .O(\tx_shift_reg[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_15 
       (.I0(data_in[0]),
        .I1(data_in[16]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[8]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[24]),
        .O(\tx_shift_reg[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_16 
       (.I0(data_in[4]),
        .I1(data_in[20]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[12]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[28]),
        .O(\tx_shift_reg[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_17 
       (.I0(data_in[2]),
        .I1(data_in[18]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[10]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[26]),
        .O(\tx_shift_reg[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_18 
       (.I0(data_in[6]),
        .I1(data_in[22]),
        .I2(tx_shift_reg1[3]),
        .I3(data_in[14]),
        .I4(tx_shift_reg1[4]),
        .I5(data_in[30]),
        .O(\tx_shift_reg[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \tx_shift_reg[31]_i_2 
       (.I0(\tx_shift_reg[31]_i_3_n_0 ),
        .I1(\tx_shift_reg[31]_i_4_n_0 ),
        .I2(\tx_shift_reg[31]_i_5_n_0 ),
        .I3(\tx_shift_reg[31]_i_6_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[30] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_shift_reg[31]_i_3 
       (.I0(bits_per_transaction_reg[0]),
        .I1(\tx_shift_reg[31]_i_8_n_0 ),
        .I2(\tx_shift_reg[31]_i_9_n_0 ),
        .I3(\tx_shift_reg[31]_i_10_n_0 ),
        .O(\tx_shift_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_4 
       (.I0(\tx_shift_reg[31]_i_11_n_0 ),
        .I1(\tx_shift_reg[31]_i_12_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[31]_i_13_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_14_n_0 ),
        .O(\tx_shift_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tx_shift_reg[31]_i_5 
       (.I0(\tx_shift_reg[31]_i_15_n_0 ),
        .I1(\tx_shift_reg[31]_i_16_n_0 ),
        .I2(tx_shift_reg1[1]),
        .I3(\tx_shift_reg[31]_i_17_n_0 ),
        .I4(tx_shift_reg1[2]),
        .I5(\tx_shift_reg[31]_i_18_n_0 ),
        .O(\tx_shift_reg[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \tx_shift_reg[31]_i_6 
       (.I0(\tx_shift_reg[31]_i_8_n_0 ),
        .I1(\tx_shift_reg[31]_i_9_n_0 ),
        .I2(\tx_shift_reg[31]_i_10_n_0 ),
        .I3(bits_per_transaction_reg[0]),
        .O(\tx_shift_reg[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tx_shift_reg[31]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\tx_shift_reg[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_shift_reg[31]_i_8 
       (.I0(tx_shift_reg1[8]),
        .I1(tx_shift_reg1[7]),
        .I2(tx_shift_reg1[14]),
        .I3(tx_shift_reg1[12]),
        .O(\tx_shift_reg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \tx_shift_reg[31]_i_9 
       (.I0(tx_shift_reg1_carry__2_n_0),
        .I1(tx_shift_reg1[15]),
        .I2(tx_shift_reg1[13]),
        .I3(tx_shift_reg1[10]),
        .O(\tx_shift_reg[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[3]_i_1 
       (.I0(\tx_shift_reg[3]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[4]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[2] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \tx_shift_reg[3]_i_2 
       (.I0(data_in[0]),
        .I1(tx_shift_reg1[1]),
        .I2(tx_shift_reg1[2]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[2]),
        .I5(tx_shift_reg1[3]),
        .O(\tx_shift_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[4]_i_1 
       (.I0(\tx_shift_reg[5]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_3_n_0 ),
        .I2(\tx_shift_reg[31]_i_6_n_0 ),
        .I3(\tx_shift_reg[4]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[3] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \tx_shift_reg[4]_i_2 
       (.I0(data_in[1]),
        .I1(tx_shift_reg1[1]),
        .I2(tx_shift_reg1[2]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[3]),
        .I5(tx_shift_reg1[3]),
        .O(\tx_shift_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[5]_i_1 
       (.I0(\tx_shift_reg[5]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[6]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[4] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[5]));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \tx_shift_reg[5]_i_2 
       (.I0(tx_shift_reg1[2]),
        .I1(tx_shift_reg1[4]),
        .I2(data_in[2]),
        .I3(tx_shift_reg1[3]),
        .I4(tx_shift_reg1[1]),
        .I5(\tx_shift_reg[7]_i_3_n_0 ),
        .O(\tx_shift_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[6]_i_1 
       (.I0(\tx_shift_reg[6]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[7]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[5] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[6]));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \tx_shift_reg[6]_i_2 
       (.I0(tx_shift_reg1[2]),
        .I1(tx_shift_reg1[4]),
        .I2(data_in[3]),
        .I3(tx_shift_reg1[3]),
        .I4(tx_shift_reg1[1]),
        .I5(\tx_shift_reg[8]_i_3_n_0 ),
        .O(\tx_shift_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[7]_i_1 
       (.I0(\tx_shift_reg[7]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[8]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[6] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[7]_i_2 
       (.I0(\tx_shift_reg[7]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[9]_i_3_n_0 ),
        .O(\tx_shift_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \tx_shift_reg[7]_i_3 
       (.I0(data_in[0]),
        .I1(tx_shift_reg1[2]),
        .I2(tx_shift_reg1[3]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[4]),
        .O(\tx_shift_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[8]_i_1 
       (.I0(\tx_shift_reg[9]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_3_n_0 ),
        .I2(\tx_shift_reg[31]_i_6_n_0 ),
        .I3(\tx_shift_reg[8]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[7] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[8]_i_2 
       (.I0(\tx_shift_reg[8]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[10]_i_3_n_0 ),
        .O(\tx_shift_reg[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \tx_shift_reg[8]_i_3 
       (.I0(data_in[1]),
        .I1(tx_shift_reg1[2]),
        .I2(tx_shift_reg1[3]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[5]),
        .O(\tx_shift_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF111F111F111F)) 
    \tx_shift_reg[9]_i_1 
       (.I0(\tx_shift_reg[9]_i_2_n_0 ),
        .I1(\tx_shift_reg[31]_i_6_n_0 ),
        .I2(\tx_shift_reg[31]_i_3_n_0 ),
        .I3(\tx_shift_reg[10]_i_2_n_0 ),
        .I4(\tx_shift_reg_reg_n_0_[8] ),
        .I5(\tx_shift_reg[31]_i_7_n_0 ),
        .O(tx_shift_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_shift_reg[9]_i_2 
       (.I0(\tx_shift_reg[9]_i_3_n_0 ),
        .I1(tx_shift_reg1[1]),
        .I2(\tx_shift_reg[11]_i_3_n_0 ),
        .O(\tx_shift_reg[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \tx_shift_reg[9]_i_3 
       (.I0(data_in[2]),
        .I1(tx_shift_reg1[2]),
        .I2(tx_shift_reg1[3]),
        .I3(tx_shift_reg1[4]),
        .I4(data_in[6]),
        .O(\tx_shift_reg[9]_i_3_n_0 ));
  FDCE \tx_shift_reg_reg[0] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[0]),
        .Q(\tx_shift_reg_reg_n_0_[0] ));
  FDCE \tx_shift_reg_reg[10] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[10]),
        .Q(\tx_shift_reg_reg_n_0_[10] ));
  FDCE \tx_shift_reg_reg[11] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[11]),
        .Q(\tx_shift_reg_reg_n_0_[11] ));
  FDCE \tx_shift_reg_reg[12] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[12]),
        .Q(\tx_shift_reg_reg_n_0_[12] ));
  FDCE \tx_shift_reg_reg[13] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[13]),
        .Q(\tx_shift_reg_reg_n_0_[13] ));
  FDCE \tx_shift_reg_reg[14] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[14]),
        .Q(\tx_shift_reg_reg_n_0_[14] ));
  FDCE \tx_shift_reg_reg[15] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[15]),
        .Q(\tx_shift_reg_reg_n_0_[15] ));
  FDCE \tx_shift_reg_reg[16] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[16]),
        .Q(\tx_shift_reg_reg_n_0_[16] ));
  FDCE \tx_shift_reg_reg[17] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[17]),
        .Q(\tx_shift_reg_reg_n_0_[17] ));
  FDCE \tx_shift_reg_reg[18] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[18]),
        .Q(\tx_shift_reg_reg_n_0_[18] ));
  FDCE \tx_shift_reg_reg[19] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[19]),
        .Q(\tx_shift_reg_reg_n_0_[19] ));
  FDCE \tx_shift_reg_reg[1] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[1]),
        .Q(\tx_shift_reg_reg_n_0_[1] ));
  FDCE \tx_shift_reg_reg[20] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[20]),
        .Q(\tx_shift_reg_reg_n_0_[20] ));
  FDCE \tx_shift_reg_reg[21] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[21]),
        .Q(\tx_shift_reg_reg_n_0_[21] ));
  FDCE \tx_shift_reg_reg[22] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[22]),
        .Q(\tx_shift_reg_reg_n_0_[22] ));
  FDCE \tx_shift_reg_reg[23] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[23]),
        .Q(\tx_shift_reg_reg_n_0_[23] ));
  FDCE \tx_shift_reg_reg[24] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[24]),
        .Q(\tx_shift_reg_reg_n_0_[24] ));
  FDCE \tx_shift_reg_reg[25] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[25]),
        .Q(\tx_shift_reg_reg_n_0_[25] ));
  FDCE \tx_shift_reg_reg[26] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[26]),
        .Q(\tx_shift_reg_reg_n_0_[26] ));
  FDCE \tx_shift_reg_reg[27] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[27]),
        .Q(\tx_shift_reg_reg_n_0_[27] ));
  FDCE \tx_shift_reg_reg[28] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[28]),
        .Q(\tx_shift_reg_reg_n_0_[28] ));
  FDCE \tx_shift_reg_reg[29] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[29]),
        .Q(\tx_shift_reg_reg_n_0_[29] ));
  FDCE \tx_shift_reg_reg[2] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[2]),
        .Q(\tx_shift_reg_reg_n_0_[2] ));
  FDCE \tx_shift_reg_reg[30] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[30]),
        .Q(\tx_shift_reg_reg_n_0_[30] ));
  FDCE \tx_shift_reg_reg[31] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[31]),
        .Q(p_0_in));
  FDCE \tx_shift_reg_reg[3] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[3]),
        .Q(\tx_shift_reg_reg_n_0_[3] ));
  FDCE \tx_shift_reg_reg[4] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[4]),
        .Q(\tx_shift_reg_reg_n_0_[4] ));
  FDCE \tx_shift_reg_reg[5] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[5]),
        .Q(\tx_shift_reg_reg_n_0_[5] ));
  FDCE \tx_shift_reg_reg[6] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[6]),
        .Q(\tx_shift_reg_reg_n_0_[6] ));
  FDCE \tx_shift_reg_reg[7] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[7]),
        .Q(\tx_shift_reg_reg_n_0_[7] ));
  FDCE \tx_shift_reg_reg[8] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[8]),
        .Q(\tx_shift_reg_reg_n_0_[8] ));
  FDCE \tx_shift_reg_reg[9] 
       (.C(clk),
        .CE(tx_shift_reg_1),
        .CLR(\data_out[31]_i_2_n_0 ),
        .D(tx_shift_reg[9]),
        .Q(\tx_shift_reg_reg_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
