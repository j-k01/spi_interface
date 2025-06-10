// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Jun  8 03:04:07 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dac_bd_1_led_driver_0_0 -prefix
//               dac_bd_1_led_driver_0_0_ dac_bd_1_led_driver_0_0_sim_netlist.v
// Design      : dac_bd_1_led_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_led_driver_0_0,led_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_driver,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_led_driver_0_0
   (clk,
    spi_mosi,
    spi_miso,
    leds);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input spi_mosi;
  input spi_miso;
  output [1:0]leds;

  wire clk;
  wire [1:0]leds;
  wire spi_miso;
  wire spi_mosi;

  dac_bd_1_led_driver_0_0_led_driver inst
       (.clk(clk),
        .leds(leds),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi));
endmodule

module dac_bd_1_led_driver_0_0_led_driver
   (leds,
    spi_mosi,
    clk,
    spi_miso);
  output [1:0]leds;
  input spi_mosi;
  input clk;
  input spi_miso;

  wire clear;
  wire clk;
  wire [1:0]leds;
  wire \leds[0]_INST_0_i_1_n_0 ;
  wire \leds[0]_INST_0_i_2_n_0 ;
  wire \leds[0]_INST_0_i_3_n_0 ;
  wire \leds[0]_INST_0_i_4_n_0 ;
  wire \leds[1]_INST_0_i_1_n_0 ;
  wire \leds[1]_INST_0_i_2_n_0 ;
  wire \leds[1]_INST_0_i_3_n_0 ;
  wire \leds[1]_INST_0_i_4_n_0 ;
  wire \pulse_counter_0[0]_i_1_n_0 ;
  wire \pulse_counter_0[0]_i_3_n_0 ;
  wire \pulse_counter_0[0]_i_4_n_0 ;
  wire \pulse_counter_0[0]_i_5_n_0 ;
  wire \pulse_counter_0[0]_i_6_n_0 ;
  wire \pulse_counter_0[12]_i_2_n_0 ;
  wire \pulse_counter_0[12]_i_3_n_0 ;
  wire \pulse_counter_0[12]_i_4_n_0 ;
  wire \pulse_counter_0[12]_i_5_n_0 ;
  wire \pulse_counter_0[16]_i_2_n_0 ;
  wire \pulse_counter_0[16]_i_3_n_0 ;
  wire \pulse_counter_0[16]_i_4_n_0 ;
  wire \pulse_counter_0[16]_i_5_n_0 ;
  wire \pulse_counter_0[20]_i_2_n_0 ;
  wire \pulse_counter_0[20]_i_3_n_0 ;
  wire \pulse_counter_0[20]_i_4_n_0 ;
  wire \pulse_counter_0[4]_i_2_n_0 ;
  wire \pulse_counter_0[4]_i_3_n_0 ;
  wire \pulse_counter_0[4]_i_4_n_0 ;
  wire \pulse_counter_0[4]_i_5_n_0 ;
  wire \pulse_counter_0[8]_i_2_n_0 ;
  wire \pulse_counter_0[8]_i_3_n_0 ;
  wire \pulse_counter_0[8]_i_4_n_0 ;
  wire \pulse_counter_0[8]_i_5_n_0 ;
  wire [22:0]pulse_counter_0_reg;
  wire \pulse_counter_0_reg[0]_i_2_n_0 ;
  wire \pulse_counter_0_reg[0]_i_2_n_1 ;
  wire \pulse_counter_0_reg[0]_i_2_n_2 ;
  wire \pulse_counter_0_reg[0]_i_2_n_3 ;
  wire \pulse_counter_0_reg[0]_i_2_n_4 ;
  wire \pulse_counter_0_reg[0]_i_2_n_5 ;
  wire \pulse_counter_0_reg[0]_i_2_n_6 ;
  wire \pulse_counter_0_reg[0]_i_2_n_7 ;
  wire \pulse_counter_0_reg[12]_i_1_n_0 ;
  wire \pulse_counter_0_reg[12]_i_1_n_1 ;
  wire \pulse_counter_0_reg[12]_i_1_n_2 ;
  wire \pulse_counter_0_reg[12]_i_1_n_3 ;
  wire \pulse_counter_0_reg[12]_i_1_n_4 ;
  wire \pulse_counter_0_reg[12]_i_1_n_5 ;
  wire \pulse_counter_0_reg[12]_i_1_n_6 ;
  wire \pulse_counter_0_reg[12]_i_1_n_7 ;
  wire \pulse_counter_0_reg[16]_i_1_n_0 ;
  wire \pulse_counter_0_reg[16]_i_1_n_1 ;
  wire \pulse_counter_0_reg[16]_i_1_n_2 ;
  wire \pulse_counter_0_reg[16]_i_1_n_3 ;
  wire \pulse_counter_0_reg[16]_i_1_n_4 ;
  wire \pulse_counter_0_reg[16]_i_1_n_5 ;
  wire \pulse_counter_0_reg[16]_i_1_n_6 ;
  wire \pulse_counter_0_reg[16]_i_1_n_7 ;
  wire \pulse_counter_0_reg[20]_i_1_n_2 ;
  wire \pulse_counter_0_reg[20]_i_1_n_3 ;
  wire \pulse_counter_0_reg[20]_i_1_n_5 ;
  wire \pulse_counter_0_reg[20]_i_1_n_6 ;
  wire \pulse_counter_0_reg[20]_i_1_n_7 ;
  wire \pulse_counter_0_reg[4]_i_1_n_0 ;
  wire \pulse_counter_0_reg[4]_i_1_n_1 ;
  wire \pulse_counter_0_reg[4]_i_1_n_2 ;
  wire \pulse_counter_0_reg[4]_i_1_n_3 ;
  wire \pulse_counter_0_reg[4]_i_1_n_4 ;
  wire \pulse_counter_0_reg[4]_i_1_n_5 ;
  wire \pulse_counter_0_reg[4]_i_1_n_6 ;
  wire \pulse_counter_0_reg[4]_i_1_n_7 ;
  wire \pulse_counter_0_reg[8]_i_1_n_0 ;
  wire \pulse_counter_0_reg[8]_i_1_n_1 ;
  wire \pulse_counter_0_reg[8]_i_1_n_2 ;
  wire \pulse_counter_0_reg[8]_i_1_n_3 ;
  wire \pulse_counter_0_reg[8]_i_1_n_4 ;
  wire \pulse_counter_0_reg[8]_i_1_n_5 ;
  wire \pulse_counter_0_reg[8]_i_1_n_6 ;
  wire \pulse_counter_0_reg[8]_i_1_n_7 ;
  wire \pulse_counter_1[0]_i_3_n_0 ;
  wire \pulse_counter_1[0]_i_4_n_0 ;
  wire \pulse_counter_1[0]_i_5_n_0 ;
  wire \pulse_counter_1[0]_i_6_n_0 ;
  wire \pulse_counter_1[12]_i_2_n_0 ;
  wire \pulse_counter_1[12]_i_3_n_0 ;
  wire \pulse_counter_1[12]_i_4_n_0 ;
  wire \pulse_counter_1[12]_i_5_n_0 ;
  wire \pulse_counter_1[16]_i_2_n_0 ;
  wire \pulse_counter_1[16]_i_3_n_0 ;
  wire \pulse_counter_1[16]_i_4_n_0 ;
  wire \pulse_counter_1[16]_i_5_n_0 ;
  wire \pulse_counter_1[20]_i_2_n_0 ;
  wire \pulse_counter_1[20]_i_3_n_0 ;
  wire \pulse_counter_1[20]_i_4_n_0 ;
  wire \pulse_counter_1[4]_i_2_n_0 ;
  wire \pulse_counter_1[4]_i_3_n_0 ;
  wire \pulse_counter_1[4]_i_4_n_0 ;
  wire \pulse_counter_1[4]_i_5_n_0 ;
  wire \pulse_counter_1[8]_i_2_n_0 ;
  wire \pulse_counter_1[8]_i_3_n_0 ;
  wire \pulse_counter_1[8]_i_4_n_0 ;
  wire \pulse_counter_1[8]_i_5_n_0 ;
  wire [22:0]pulse_counter_1_reg;
  wire \pulse_counter_1_reg[0]_i_2_n_0 ;
  wire \pulse_counter_1_reg[0]_i_2_n_1 ;
  wire \pulse_counter_1_reg[0]_i_2_n_2 ;
  wire \pulse_counter_1_reg[0]_i_2_n_3 ;
  wire \pulse_counter_1_reg[0]_i_2_n_4 ;
  wire \pulse_counter_1_reg[0]_i_2_n_5 ;
  wire \pulse_counter_1_reg[0]_i_2_n_6 ;
  wire \pulse_counter_1_reg[0]_i_2_n_7 ;
  wire \pulse_counter_1_reg[12]_i_1_n_0 ;
  wire \pulse_counter_1_reg[12]_i_1_n_1 ;
  wire \pulse_counter_1_reg[12]_i_1_n_2 ;
  wire \pulse_counter_1_reg[12]_i_1_n_3 ;
  wire \pulse_counter_1_reg[12]_i_1_n_4 ;
  wire \pulse_counter_1_reg[12]_i_1_n_5 ;
  wire \pulse_counter_1_reg[12]_i_1_n_6 ;
  wire \pulse_counter_1_reg[12]_i_1_n_7 ;
  wire \pulse_counter_1_reg[16]_i_1_n_0 ;
  wire \pulse_counter_1_reg[16]_i_1_n_1 ;
  wire \pulse_counter_1_reg[16]_i_1_n_2 ;
  wire \pulse_counter_1_reg[16]_i_1_n_3 ;
  wire \pulse_counter_1_reg[16]_i_1_n_4 ;
  wire \pulse_counter_1_reg[16]_i_1_n_5 ;
  wire \pulse_counter_1_reg[16]_i_1_n_6 ;
  wire \pulse_counter_1_reg[16]_i_1_n_7 ;
  wire \pulse_counter_1_reg[20]_i_1_n_2 ;
  wire \pulse_counter_1_reg[20]_i_1_n_3 ;
  wire \pulse_counter_1_reg[20]_i_1_n_5 ;
  wire \pulse_counter_1_reg[20]_i_1_n_6 ;
  wire \pulse_counter_1_reg[20]_i_1_n_7 ;
  wire \pulse_counter_1_reg[4]_i_1_n_0 ;
  wire \pulse_counter_1_reg[4]_i_1_n_1 ;
  wire \pulse_counter_1_reg[4]_i_1_n_2 ;
  wire \pulse_counter_1_reg[4]_i_1_n_3 ;
  wire \pulse_counter_1_reg[4]_i_1_n_4 ;
  wire \pulse_counter_1_reg[4]_i_1_n_5 ;
  wire \pulse_counter_1_reg[4]_i_1_n_6 ;
  wire \pulse_counter_1_reg[4]_i_1_n_7 ;
  wire \pulse_counter_1_reg[8]_i_1_n_0 ;
  wire \pulse_counter_1_reg[8]_i_1_n_1 ;
  wire \pulse_counter_1_reg[8]_i_1_n_2 ;
  wire \pulse_counter_1_reg[8]_i_1_n_3 ;
  wire \pulse_counter_1_reg[8]_i_1_n_4 ;
  wire \pulse_counter_1_reg[8]_i_1_n_5 ;
  wire \pulse_counter_1_reg[8]_i_1_n_6 ;
  wire \pulse_counter_1_reg[8]_i_1_n_7 ;
  wire spi_miso;
  wire spi_miso_prev_pulse;
  wire spi_mosi;
  wire spi_mosi_prev_pulse;
  wire [3:2]\NLW_pulse_counter_0_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pulse_counter_0_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_pulse_counter_1_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pulse_counter_1_reg[20]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[0]_INST_0 
       (.I0(\leds[0]_INST_0_i_1_n_0 ),
        .I1(\leds[0]_INST_0_i_2_n_0 ),
        .I2(\leds[0]_INST_0_i_3_n_0 ),
        .I3(pulse_counter_0_reg[2]),
        .I4(pulse_counter_0_reg[1]),
        .I5(\leds[0]_INST_0_i_4_n_0 ),
        .O(leds[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[0]_INST_0_i_1 
       (.I0(pulse_counter_0_reg[15]),
        .I1(pulse_counter_0_reg[16]),
        .I2(pulse_counter_0_reg[13]),
        .I3(pulse_counter_0_reg[14]),
        .I4(pulse_counter_0_reg[12]),
        .I5(pulse_counter_0_reg[11]),
        .O(\leds[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[0]_INST_0_i_2 
       (.I0(pulse_counter_0_reg[9]),
        .I1(pulse_counter_0_reg[10]),
        .I2(pulse_counter_0_reg[7]),
        .I3(pulse_counter_0_reg[8]),
        .I4(pulse_counter_0_reg[6]),
        .I5(pulse_counter_0_reg[5]),
        .O(\leds[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \leds[0]_INST_0_i_3 
       (.I0(pulse_counter_0_reg[4]),
        .I1(pulse_counter_0_reg[3]),
        .I2(pulse_counter_0_reg[0]),
        .O(\leds[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[0]_INST_0_i_4 
       (.I0(pulse_counter_0_reg[21]),
        .I1(pulse_counter_0_reg[22]),
        .I2(pulse_counter_0_reg[19]),
        .I3(pulse_counter_0_reg[20]),
        .I4(pulse_counter_0_reg[18]),
        .I5(pulse_counter_0_reg[17]),
        .O(\leds[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[1]_INST_0 
       (.I0(\leds[1]_INST_0_i_1_n_0 ),
        .I1(\leds[1]_INST_0_i_2_n_0 ),
        .I2(\leds[1]_INST_0_i_3_n_0 ),
        .I3(pulse_counter_1_reg[2]),
        .I4(pulse_counter_1_reg[1]),
        .I5(\leds[1]_INST_0_i_4_n_0 ),
        .O(leds[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[1]_INST_0_i_1 
       (.I0(pulse_counter_1_reg[15]),
        .I1(pulse_counter_1_reg[16]),
        .I2(pulse_counter_1_reg[13]),
        .I3(pulse_counter_1_reg[14]),
        .I4(pulse_counter_1_reg[12]),
        .I5(pulse_counter_1_reg[11]),
        .O(\leds[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[1]_INST_0_i_2 
       (.I0(pulse_counter_1_reg[9]),
        .I1(pulse_counter_1_reg[10]),
        .I2(pulse_counter_1_reg[7]),
        .I3(pulse_counter_1_reg[8]),
        .I4(pulse_counter_1_reg[6]),
        .I5(pulse_counter_1_reg[5]),
        .O(\leds[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \leds[1]_INST_0_i_3 
       (.I0(pulse_counter_1_reg[4]),
        .I1(pulse_counter_1_reg[3]),
        .I2(pulse_counter_1_reg[0]),
        .O(\leds[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \leds[1]_INST_0_i_4 
       (.I0(pulse_counter_1_reg[21]),
        .I1(pulse_counter_1_reg[22]),
        .I2(pulse_counter_1_reg[19]),
        .I3(pulse_counter_1_reg[20]),
        .I4(pulse_counter_1_reg[18]),
        .I5(pulse_counter_1_reg[17]),
        .O(\leds[1]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pulse_counter_0[0]_i_1 
       (.I0(spi_mosi_prev_pulse),
        .I1(spi_mosi),
        .O(\pulse_counter_0[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[0]_i_3 
       (.I0(pulse_counter_0_reg[3]),
        .O(\pulse_counter_0[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[0]_i_4 
       (.I0(pulse_counter_0_reg[2]),
        .O(\pulse_counter_0[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[0]_i_5 
       (.I0(pulse_counter_0_reg[1]),
        .O(\pulse_counter_0[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[0]_i_6 
       (.I0(pulse_counter_0_reg[0]),
        .O(\pulse_counter_0[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[12]_i_2 
       (.I0(pulse_counter_0_reg[15]),
        .O(\pulse_counter_0[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[12]_i_3 
       (.I0(pulse_counter_0_reg[14]),
        .O(\pulse_counter_0[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[12]_i_4 
       (.I0(pulse_counter_0_reg[13]),
        .O(\pulse_counter_0[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[12]_i_5 
       (.I0(pulse_counter_0_reg[12]),
        .O(\pulse_counter_0[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[16]_i_2 
       (.I0(pulse_counter_0_reg[19]),
        .O(\pulse_counter_0[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[16]_i_3 
       (.I0(pulse_counter_0_reg[18]),
        .O(\pulse_counter_0[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[16]_i_4 
       (.I0(pulse_counter_0_reg[17]),
        .O(\pulse_counter_0[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[16]_i_5 
       (.I0(pulse_counter_0_reg[16]),
        .O(\pulse_counter_0[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[20]_i_2 
       (.I0(pulse_counter_0_reg[22]),
        .O(\pulse_counter_0[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[20]_i_3 
       (.I0(pulse_counter_0_reg[21]),
        .O(\pulse_counter_0[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[20]_i_4 
       (.I0(pulse_counter_0_reg[20]),
        .O(\pulse_counter_0[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[4]_i_2 
       (.I0(pulse_counter_0_reg[7]),
        .O(\pulse_counter_0[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[4]_i_3 
       (.I0(pulse_counter_0_reg[6]),
        .O(\pulse_counter_0[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[4]_i_4 
       (.I0(pulse_counter_0_reg[5]),
        .O(\pulse_counter_0[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[4]_i_5 
       (.I0(pulse_counter_0_reg[4]),
        .O(\pulse_counter_0[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[8]_i_2 
       (.I0(pulse_counter_0_reg[11]),
        .O(\pulse_counter_0[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[8]_i_3 
       (.I0(pulse_counter_0_reg[10]),
        .O(\pulse_counter_0[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[8]_i_4 
       (.I0(pulse_counter_0_reg[9]),
        .O(\pulse_counter_0[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_0[8]_i_5 
       (.I0(pulse_counter_0_reg[8]),
        .O(\pulse_counter_0[8]_i_5_n_0 ));
  FDRE \pulse_counter_0_reg[0] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[0]_i_2_n_7 ),
        .Q(pulse_counter_0_reg[0]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_0_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pulse_counter_0_reg[0]_i_2_n_0 ,\pulse_counter_0_reg[0]_i_2_n_1 ,\pulse_counter_0_reg[0]_i_2_n_2 ,\pulse_counter_0_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_0_reg[0]_i_2_n_4 ,\pulse_counter_0_reg[0]_i_2_n_5 ,\pulse_counter_0_reg[0]_i_2_n_6 ,\pulse_counter_0_reg[0]_i_2_n_7 }),
        .S({\pulse_counter_0[0]_i_3_n_0 ,\pulse_counter_0[0]_i_4_n_0 ,\pulse_counter_0[0]_i_5_n_0 ,\pulse_counter_0[0]_i_6_n_0 }));
  FDSE \pulse_counter_0_reg[10] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[8]_i_1_n_5 ),
        .Q(pulse_counter_0_reg[10]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[11] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[8]_i_1_n_4 ),
        .Q(pulse_counter_0_reg[11]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[12] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[12]_i_1_n_7 ),
        .Q(pulse_counter_0_reg[12]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_0_reg[12]_i_1 
       (.CI(\pulse_counter_0_reg[8]_i_1_n_0 ),
        .CO({\pulse_counter_0_reg[12]_i_1_n_0 ,\pulse_counter_0_reg[12]_i_1_n_1 ,\pulse_counter_0_reg[12]_i_1_n_2 ,\pulse_counter_0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_0_reg[12]_i_1_n_4 ,\pulse_counter_0_reg[12]_i_1_n_5 ,\pulse_counter_0_reg[12]_i_1_n_6 ,\pulse_counter_0_reg[12]_i_1_n_7 }),
        .S({\pulse_counter_0[12]_i_2_n_0 ,\pulse_counter_0[12]_i_3_n_0 ,\pulse_counter_0[12]_i_4_n_0 ,\pulse_counter_0[12]_i_5_n_0 }));
  FDRE \pulse_counter_0_reg[13] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[12]_i_1_n_6 ),
        .Q(pulse_counter_0_reg[13]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[14] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[12]_i_1_n_5 ),
        .Q(pulse_counter_0_reg[14]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDSE \pulse_counter_0_reg[15] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[12]_i_1_n_4 ),
        .Q(pulse_counter_0_reg[15]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[16] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[16]_i_1_n_7 ),
        .Q(pulse_counter_0_reg[16]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_0_reg[16]_i_1 
       (.CI(\pulse_counter_0_reg[12]_i_1_n_0 ),
        .CO({\pulse_counter_0_reg[16]_i_1_n_0 ,\pulse_counter_0_reg[16]_i_1_n_1 ,\pulse_counter_0_reg[16]_i_1_n_2 ,\pulse_counter_0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_0_reg[16]_i_1_n_4 ,\pulse_counter_0_reg[16]_i_1_n_5 ,\pulse_counter_0_reg[16]_i_1_n_6 ,\pulse_counter_0_reg[16]_i_1_n_7 }),
        .S({\pulse_counter_0[16]_i_2_n_0 ,\pulse_counter_0[16]_i_3_n_0 ,\pulse_counter_0[16]_i_4_n_0 ,\pulse_counter_0[16]_i_5_n_0 }));
  FDSE \pulse_counter_0_reg[17] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[16]_i_1_n_6 ),
        .Q(pulse_counter_0_reg[17]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  FDSE \pulse_counter_0_reg[18] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[16]_i_1_n_5 ),
        .Q(pulse_counter_0_reg[18]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  FDSE \pulse_counter_0_reg[19] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[16]_i_1_n_4 ),
        .Q(pulse_counter_0_reg[19]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[1] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[0]_i_2_n_6 ),
        .Q(pulse_counter_0_reg[1]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDSE \pulse_counter_0_reg[20] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[20]_i_1_n_7 ),
        .Q(pulse_counter_0_reg[20]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_0_reg[20]_i_1 
       (.CI(\pulse_counter_0_reg[16]_i_1_n_0 ),
        .CO({\NLW_pulse_counter_0_reg[20]_i_1_CO_UNCONNECTED [3:2],\pulse_counter_0_reg[20]_i_1_n_2 ,\pulse_counter_0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_pulse_counter_0_reg[20]_i_1_O_UNCONNECTED [3],\pulse_counter_0_reg[20]_i_1_n_5 ,\pulse_counter_0_reg[20]_i_1_n_6 ,\pulse_counter_0_reg[20]_i_1_n_7 }),
        .S({1'b0,\pulse_counter_0[20]_i_2_n_0 ,\pulse_counter_0[20]_i_3_n_0 ,\pulse_counter_0[20]_i_4_n_0 }));
  FDRE \pulse_counter_0_reg[21] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[20]_i_1_n_6 ),
        .Q(pulse_counter_0_reg[21]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[22] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[20]_i_1_n_5 ),
        .Q(pulse_counter_0_reg[22]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[2] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[0]_i_2_n_5 ),
        .Q(pulse_counter_0_reg[2]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[3] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[0]_i_2_n_4 ),
        .Q(pulse_counter_0_reg[3]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[4] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[4]_i_1_n_7 ),
        .Q(pulse_counter_0_reg[4]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_0_reg[4]_i_1 
       (.CI(\pulse_counter_0_reg[0]_i_2_n_0 ),
        .CO({\pulse_counter_0_reg[4]_i_1_n_0 ,\pulse_counter_0_reg[4]_i_1_n_1 ,\pulse_counter_0_reg[4]_i_1_n_2 ,\pulse_counter_0_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_0_reg[4]_i_1_n_4 ,\pulse_counter_0_reg[4]_i_1_n_5 ,\pulse_counter_0_reg[4]_i_1_n_6 ,\pulse_counter_0_reg[4]_i_1_n_7 }),
        .S({\pulse_counter_0[4]_i_2_n_0 ,\pulse_counter_0[4]_i_3_n_0 ,\pulse_counter_0[4]_i_4_n_0 ,\pulse_counter_0[4]_i_5_n_0 }));
  FDRE \pulse_counter_0_reg[5] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[4]_i_1_n_6 ),
        .Q(pulse_counter_0_reg[5]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[6] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[4]_i_1_n_5 ),
        .Q(pulse_counter_0_reg[6]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  FDSE \pulse_counter_0_reg[7] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[4]_i_1_n_4 ),
        .Q(pulse_counter_0_reg[7]),
        .S(\pulse_counter_0[0]_i_1_n_0 ));
  FDRE \pulse_counter_0_reg[8] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[8]_i_1_n_7 ),
        .Q(pulse_counter_0_reg[8]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_0_reg[8]_i_1 
       (.CI(\pulse_counter_0_reg[4]_i_1_n_0 ),
        .CO({\pulse_counter_0_reg[8]_i_1_n_0 ,\pulse_counter_0_reg[8]_i_1_n_1 ,\pulse_counter_0_reg[8]_i_1_n_2 ,\pulse_counter_0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_0_reg[8]_i_1_n_4 ,\pulse_counter_0_reg[8]_i_1_n_5 ,\pulse_counter_0_reg[8]_i_1_n_6 ,\pulse_counter_0_reg[8]_i_1_n_7 }),
        .S({\pulse_counter_0[8]_i_2_n_0 ,\pulse_counter_0[8]_i_3_n_0 ,\pulse_counter_0[8]_i_4_n_0 ,\pulse_counter_0[8]_i_5_n_0 }));
  FDRE \pulse_counter_0_reg[9] 
       (.C(clk),
        .CE(leds[0]),
        .D(\pulse_counter_0_reg[8]_i_1_n_6 ),
        .Q(pulse_counter_0_reg[9]),
        .R(\pulse_counter_0[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pulse_counter_1[0]_i_1 
       (.I0(spi_miso_prev_pulse),
        .I1(spi_miso),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[0]_i_3 
       (.I0(pulse_counter_1_reg[3]),
        .O(\pulse_counter_1[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[0]_i_4 
       (.I0(pulse_counter_1_reg[2]),
        .O(\pulse_counter_1[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[0]_i_5 
       (.I0(pulse_counter_1_reg[1]),
        .O(\pulse_counter_1[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[0]_i_6 
       (.I0(pulse_counter_1_reg[0]),
        .O(\pulse_counter_1[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[12]_i_2 
       (.I0(pulse_counter_1_reg[15]),
        .O(\pulse_counter_1[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[12]_i_3 
       (.I0(pulse_counter_1_reg[14]),
        .O(\pulse_counter_1[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[12]_i_4 
       (.I0(pulse_counter_1_reg[13]),
        .O(\pulse_counter_1[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[12]_i_5 
       (.I0(pulse_counter_1_reg[12]),
        .O(\pulse_counter_1[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[16]_i_2 
       (.I0(pulse_counter_1_reg[19]),
        .O(\pulse_counter_1[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[16]_i_3 
       (.I0(pulse_counter_1_reg[18]),
        .O(\pulse_counter_1[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[16]_i_4 
       (.I0(pulse_counter_1_reg[17]),
        .O(\pulse_counter_1[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[16]_i_5 
       (.I0(pulse_counter_1_reg[16]),
        .O(\pulse_counter_1[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[20]_i_2 
       (.I0(pulse_counter_1_reg[22]),
        .O(\pulse_counter_1[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[20]_i_3 
       (.I0(pulse_counter_1_reg[21]),
        .O(\pulse_counter_1[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[20]_i_4 
       (.I0(pulse_counter_1_reg[20]),
        .O(\pulse_counter_1[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[4]_i_2 
       (.I0(pulse_counter_1_reg[7]),
        .O(\pulse_counter_1[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[4]_i_3 
       (.I0(pulse_counter_1_reg[6]),
        .O(\pulse_counter_1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[4]_i_4 
       (.I0(pulse_counter_1_reg[5]),
        .O(\pulse_counter_1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[4]_i_5 
       (.I0(pulse_counter_1_reg[4]),
        .O(\pulse_counter_1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[8]_i_2 
       (.I0(pulse_counter_1_reg[11]),
        .O(\pulse_counter_1[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[8]_i_3 
       (.I0(pulse_counter_1_reg[10]),
        .O(\pulse_counter_1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[8]_i_4 
       (.I0(pulse_counter_1_reg[9]),
        .O(\pulse_counter_1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_counter_1[8]_i_5 
       (.I0(pulse_counter_1_reg[8]),
        .O(\pulse_counter_1[8]_i_5_n_0 ));
  FDRE \pulse_counter_1_reg[0] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[0]_i_2_n_7 ),
        .Q(pulse_counter_1_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_1_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pulse_counter_1_reg[0]_i_2_n_0 ,\pulse_counter_1_reg[0]_i_2_n_1 ,\pulse_counter_1_reg[0]_i_2_n_2 ,\pulse_counter_1_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_1_reg[0]_i_2_n_4 ,\pulse_counter_1_reg[0]_i_2_n_5 ,\pulse_counter_1_reg[0]_i_2_n_6 ,\pulse_counter_1_reg[0]_i_2_n_7 }),
        .S({\pulse_counter_1[0]_i_3_n_0 ,\pulse_counter_1[0]_i_4_n_0 ,\pulse_counter_1[0]_i_5_n_0 ,\pulse_counter_1[0]_i_6_n_0 }));
  FDSE \pulse_counter_1_reg[10] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[8]_i_1_n_5 ),
        .Q(pulse_counter_1_reg[10]),
        .S(clear));
  FDRE \pulse_counter_1_reg[11] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[8]_i_1_n_4 ),
        .Q(pulse_counter_1_reg[11]),
        .R(clear));
  FDRE \pulse_counter_1_reg[12] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[12]_i_1_n_7 ),
        .Q(pulse_counter_1_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_1_reg[12]_i_1 
       (.CI(\pulse_counter_1_reg[8]_i_1_n_0 ),
        .CO({\pulse_counter_1_reg[12]_i_1_n_0 ,\pulse_counter_1_reg[12]_i_1_n_1 ,\pulse_counter_1_reg[12]_i_1_n_2 ,\pulse_counter_1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_1_reg[12]_i_1_n_4 ,\pulse_counter_1_reg[12]_i_1_n_5 ,\pulse_counter_1_reg[12]_i_1_n_6 ,\pulse_counter_1_reg[12]_i_1_n_7 }),
        .S({\pulse_counter_1[12]_i_2_n_0 ,\pulse_counter_1[12]_i_3_n_0 ,\pulse_counter_1[12]_i_4_n_0 ,\pulse_counter_1[12]_i_5_n_0 }));
  FDRE \pulse_counter_1_reg[13] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[12]_i_1_n_6 ),
        .Q(pulse_counter_1_reg[13]),
        .R(clear));
  FDRE \pulse_counter_1_reg[14] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[12]_i_1_n_5 ),
        .Q(pulse_counter_1_reg[14]),
        .R(clear));
  FDSE \pulse_counter_1_reg[15] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[12]_i_1_n_4 ),
        .Q(pulse_counter_1_reg[15]),
        .S(clear));
  FDRE \pulse_counter_1_reg[16] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[16]_i_1_n_7 ),
        .Q(pulse_counter_1_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_1_reg[16]_i_1 
       (.CI(\pulse_counter_1_reg[12]_i_1_n_0 ),
        .CO({\pulse_counter_1_reg[16]_i_1_n_0 ,\pulse_counter_1_reg[16]_i_1_n_1 ,\pulse_counter_1_reg[16]_i_1_n_2 ,\pulse_counter_1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_1_reg[16]_i_1_n_4 ,\pulse_counter_1_reg[16]_i_1_n_5 ,\pulse_counter_1_reg[16]_i_1_n_6 ,\pulse_counter_1_reg[16]_i_1_n_7 }),
        .S({\pulse_counter_1[16]_i_2_n_0 ,\pulse_counter_1[16]_i_3_n_0 ,\pulse_counter_1[16]_i_4_n_0 ,\pulse_counter_1[16]_i_5_n_0 }));
  FDSE \pulse_counter_1_reg[17] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[16]_i_1_n_6 ),
        .Q(pulse_counter_1_reg[17]),
        .S(clear));
  FDSE \pulse_counter_1_reg[18] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[16]_i_1_n_5 ),
        .Q(pulse_counter_1_reg[18]),
        .S(clear));
  FDSE \pulse_counter_1_reg[19] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[16]_i_1_n_4 ),
        .Q(pulse_counter_1_reg[19]),
        .S(clear));
  FDRE \pulse_counter_1_reg[1] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[0]_i_2_n_6 ),
        .Q(pulse_counter_1_reg[1]),
        .R(clear));
  FDSE \pulse_counter_1_reg[20] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[20]_i_1_n_7 ),
        .Q(pulse_counter_1_reg[20]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_1_reg[20]_i_1 
       (.CI(\pulse_counter_1_reg[16]_i_1_n_0 ),
        .CO({\NLW_pulse_counter_1_reg[20]_i_1_CO_UNCONNECTED [3:2],\pulse_counter_1_reg[20]_i_1_n_2 ,\pulse_counter_1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_pulse_counter_1_reg[20]_i_1_O_UNCONNECTED [3],\pulse_counter_1_reg[20]_i_1_n_5 ,\pulse_counter_1_reg[20]_i_1_n_6 ,\pulse_counter_1_reg[20]_i_1_n_7 }),
        .S({1'b0,\pulse_counter_1[20]_i_2_n_0 ,\pulse_counter_1[20]_i_3_n_0 ,\pulse_counter_1[20]_i_4_n_0 }));
  FDRE \pulse_counter_1_reg[21] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[20]_i_1_n_6 ),
        .Q(pulse_counter_1_reg[21]),
        .R(clear));
  FDRE \pulse_counter_1_reg[22] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[20]_i_1_n_5 ),
        .Q(pulse_counter_1_reg[22]),
        .R(clear));
  FDRE \pulse_counter_1_reg[2] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[0]_i_2_n_5 ),
        .Q(pulse_counter_1_reg[2]),
        .R(clear));
  FDRE \pulse_counter_1_reg[3] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[0]_i_2_n_4 ),
        .Q(pulse_counter_1_reg[3]),
        .R(clear));
  FDRE \pulse_counter_1_reg[4] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[4]_i_1_n_7 ),
        .Q(pulse_counter_1_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_1_reg[4]_i_1 
       (.CI(\pulse_counter_1_reg[0]_i_2_n_0 ),
        .CO({\pulse_counter_1_reg[4]_i_1_n_0 ,\pulse_counter_1_reg[4]_i_1_n_1 ,\pulse_counter_1_reg[4]_i_1_n_2 ,\pulse_counter_1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_1_reg[4]_i_1_n_4 ,\pulse_counter_1_reg[4]_i_1_n_5 ,\pulse_counter_1_reg[4]_i_1_n_6 ,\pulse_counter_1_reg[4]_i_1_n_7 }),
        .S({\pulse_counter_1[4]_i_2_n_0 ,\pulse_counter_1[4]_i_3_n_0 ,\pulse_counter_1[4]_i_4_n_0 ,\pulse_counter_1[4]_i_5_n_0 }));
  FDRE \pulse_counter_1_reg[5] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[4]_i_1_n_6 ),
        .Q(pulse_counter_1_reg[5]),
        .R(clear));
  FDRE \pulse_counter_1_reg[6] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[4]_i_1_n_5 ),
        .Q(pulse_counter_1_reg[6]),
        .R(clear));
  FDSE \pulse_counter_1_reg[7] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[4]_i_1_n_4 ),
        .Q(pulse_counter_1_reg[7]),
        .S(clear));
  FDRE \pulse_counter_1_reg[8] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[8]_i_1_n_7 ),
        .Q(pulse_counter_1_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pulse_counter_1_reg[8]_i_1 
       (.CI(\pulse_counter_1_reg[4]_i_1_n_0 ),
        .CO({\pulse_counter_1_reg[8]_i_1_n_0 ,\pulse_counter_1_reg[8]_i_1_n_1 ,\pulse_counter_1_reg[8]_i_1_n_2 ,\pulse_counter_1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\pulse_counter_1_reg[8]_i_1_n_4 ,\pulse_counter_1_reg[8]_i_1_n_5 ,\pulse_counter_1_reg[8]_i_1_n_6 ,\pulse_counter_1_reg[8]_i_1_n_7 }),
        .S({\pulse_counter_1[8]_i_2_n_0 ,\pulse_counter_1[8]_i_3_n_0 ,\pulse_counter_1[8]_i_4_n_0 ,\pulse_counter_1[8]_i_5_n_0 }));
  FDRE \pulse_counter_1_reg[9] 
       (.C(clk),
        .CE(leds[1]),
        .D(\pulse_counter_1_reg[8]_i_1_n_6 ),
        .Q(pulse_counter_1_reg[9]),
        .R(clear));
  FDRE spi_miso_prev_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_miso),
        .Q(spi_miso_prev_pulse),
        .R(1'b0));
  FDRE spi_mosi_prev_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(spi_mosi),
        .Q(spi_mosi_prev_pulse),
        .R(1'b0));
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
