-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  7 01:58:51 2025
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_AXI_Configuration_Re_0_0/dac_bd_1_AXI_Configuration_Re_0_0_stub.vhdl
-- Design      : dac_bd_1_AXI_Configuration_Re_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_bd_1_AXI_Configuration_Re_0_0 is
  Port ( 
    I_RX_DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    O_START : out STD_LOGIC;
    O_TX_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I_DONE : in STD_LOGIC;
    O_SPI_MODE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_BITS_PER_TRANSACTION : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_CYCLES_PER_BIT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_SCLK_HIGH_OFFSET : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_SCLK_LOW_OFFSET : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_SDO_CHANGE_OFFSET : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_SDI_SAMPLE_OFFSET : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_CS_TO_TRX_DELAY : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_CS_HOLD_TIME : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end dac_bd_1_AXI_Configuration_Re_0_0;

architecture stub of dac_bd_1_AXI_Configuration_Re_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_RX_DATA[31:0],O_START,O_TX_DATA[31:0],I_DONE,O_SPI_MODE[1:0],O_BITS_PER_TRANSACTION[15:0],O_CYCLES_PER_BIT[15:0],O_SCLK_HIGH_OFFSET[15:0],O_SCLK_LOW_OFFSET[15:0],O_SDO_CHANGE_OFFSET[15:0],O_SDI_SAMPLE_OFFSET[15:0],O_CS_TO_TRX_DELAY[15:0],O_CS_HOLD_TIME[15:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXI_Configuration_Registers_v1_0,Vivado 2023.1";
begin
end;
