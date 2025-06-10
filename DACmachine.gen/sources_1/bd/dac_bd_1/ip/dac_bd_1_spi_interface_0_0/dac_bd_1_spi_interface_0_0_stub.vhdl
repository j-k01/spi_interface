-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Jun  6 21:56:02 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dac_bd_1_spi_interface_0_0 -prefix
--               dac_bd_1_spi_interface_0_0_ dac_bd_1_spi_interface_0_0_stub.vhdl
-- Design      : dac_bd_1_spi_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_spi_interface_0_0 is
  Port ( 
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

end dac_bd_1_spi_interface_0_0;

architecture stub of dac_bd_1_spi_interface_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,data_in[31:0],start,data_out[31:0],busy,done,sclk,mosi,miso,ss_n,spi_mode[1:0],bits_per_transaction[15:0],cycles_per_bit[15:0],sclk_high_offset[15:0],sclk_low_offset[15:0],sdo_change_offset[15:0],sdi_sample_offset[15:0],cs_to_trx_delay[15:0],cs_hold_time[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spi_interface,Vivado 2023.1";
begin
end;
