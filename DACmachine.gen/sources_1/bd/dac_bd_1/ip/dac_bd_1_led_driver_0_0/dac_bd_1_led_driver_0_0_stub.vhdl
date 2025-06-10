-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Jun  8 03:04:07 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dac_bd_1_led_driver_0_0 -prefix
--               dac_bd_1_led_driver_0_0_ dac_bd_1_led_driver_0_0_stub.vhdl
-- Design      : dac_bd_1_led_driver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_led_driver_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end dac_bd_1_led_driver_0_0;

architecture stub of dac_bd_1_led_driver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,spi_mosi,spi_miso,leds[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led_driver,Vivado 2023.1";
begin
end;
