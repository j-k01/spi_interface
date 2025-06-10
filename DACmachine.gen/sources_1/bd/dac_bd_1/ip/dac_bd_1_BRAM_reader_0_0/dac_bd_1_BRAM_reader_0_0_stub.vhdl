-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Jun  8 02:03:20 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dac_bd_1_BRAM_reader_0_0 -prefix
--               dac_bd_1_BRAM_reader_0_0_ dac_bd_1_BRAM_reader_0_0_stub.vhdl
-- Design      : dac_bd_1_BRAM_reader_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_BRAM_reader_0_0 is
  Port ( 
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

end dac_bd_1_BRAM_reader_0_0;

architecture stub of dac_bd_1_BRAM_reader_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,O_ADDR[31:0],I_DATA[31:0],O_ENABLE,O_WE[3:0],I_START_MACRO,I_CONFIGURE[2:0],O_SPI_TRX[31:0],O_START_SPI,I_SPI_DONE,O_CLEAR_REQ,O_LDAC_REQ,O_RESET_REQ";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BRAM_reader,Vivado 2023.1";
begin
end;
