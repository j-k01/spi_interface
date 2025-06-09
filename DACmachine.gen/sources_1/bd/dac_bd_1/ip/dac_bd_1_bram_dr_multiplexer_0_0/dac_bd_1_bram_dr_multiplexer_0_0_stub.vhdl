-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  7 22:52:38 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_bram_dr_multiplexer_0_0/dac_bd_1_bram_dr_multiplexer_0_0_stub.vhdl
-- Design      : dac_bd_1_bram_dr_multiplexer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_bram_dr_multiplexer_0_0 is
  Port ( 
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

end dac_bd_1_bram_dr_multiplexer_0_0;

architecture stub of dac_bd_1_bram_dr_multiplexer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sel,bram_spi_data[31:0],bram_clear_req,bram_ldac_req,bram_reset_req,bram_start_spi,direct_spi_data[31:0],direct_clear_req,direct_ldac_req,direct_reset_req,direct_start_spi,I_SPI_DONE,spi_data_out[31:0],clear_req_out,ldac_req_out,reset_req_out,start_spi_out,O_BRAM_SPI_DONE";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bram_dr_multiplexer,Vivado 2023.1";
begin
end;
