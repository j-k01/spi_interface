// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:spi_interface:1.0
// IP Revision: 1

(* X_CORE_INFO = "spi_interface,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "dac_bd_1_spi_interface_0_0,spi_interface,{}" *)
(* CORE_GENERATION_INFO = "dac_bd_1_spi_interface_0_0,spi_interface,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=spi_interface,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dac_bd_1_spi_interface_0_0 (
  clk,
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
  cs_hold_time
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire [31 : 0] data_in;
input wire start;
output wire [31 : 0] data_out;
output wire busy;
output wire done;
output wire sclk;
output wire mosi;
input wire miso;
output wire ss_n;
input wire [1 : 0] spi_mode;
input wire [15 : 0] bits_per_transaction;
input wire [15 : 0] cycles_per_bit;
input wire [15 : 0] sclk_high_offset;
input wire [15 : 0] sclk_low_offset;
input wire [15 : 0] sdo_change_offset;
input wire [15 : 0] sdi_sample_offset;
input wire [15 : 0] cs_to_trx_delay;
input wire [15 : 0] cs_hold_time;

  spi_interface inst (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(data_in),
    .start(start),
    .data_out(data_out),
    .busy(busy),
    .done(done),
    .sclk(sclk),
    .mosi(mosi),
    .miso(miso),
    .ss_n(ss_n),
    .spi_mode(spi_mode),
    .bits_per_transaction(bits_per_transaction),
    .cycles_per_bit(cycles_per_bit),
    .sclk_high_offset(sclk_high_offset),
    .sclk_low_offset(sclk_low_offset),
    .sdo_change_offset(sdo_change_offset),
    .sdi_sample_offset(sdi_sample_offset),
    .cs_to_trx_delay(cs_to_trx_delay),
    .cs_hold_time(cs_hold_time)
  );
endmodule
