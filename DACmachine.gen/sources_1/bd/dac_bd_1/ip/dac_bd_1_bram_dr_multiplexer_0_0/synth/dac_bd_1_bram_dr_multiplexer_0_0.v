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


// IP VLNV: xilinx.com:module_ref:bram_dr_multiplexer:1.0
// IP Revision: 1

(* X_CORE_INFO = "bram_dr_multiplexer,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "dac_bd_1_bram_dr_multiplexer_0_0,bram_dr_multiplexer,{}" *)
(* CORE_GENERATION_INFO = "dac_bd_1_bram_dr_multiplexer_0_0,bram_dr_multiplexer,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=bram_dr_multiplexer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dac_bd_1_bram_dr_multiplexer_0_0 (
  sel,
  bram_spi_data,
  bram_clear_req,
  bram_ldac_req,
  bram_reset_req,
  bram_start_spi,
  direct_spi_data,
  direct_clear_req,
  direct_ldac_req,
  direct_reset_req,
  direct_start_spi,
  I_SPI_DONE,
  spi_data_out,
  clear_req_out,
  ldac_req_out,
  reset_req_out,
  start_spi_out,
  O_BRAM_SPI_DONE
);

input wire sel;
input wire [31 : 0] bram_spi_data;
input wire bram_clear_req;
input wire bram_ldac_req;
input wire bram_reset_req;
input wire bram_start_spi;
input wire [31 : 0] direct_spi_data;
input wire direct_clear_req;
input wire direct_ldac_req;
input wire direct_reset_req;
input wire direct_start_spi;
input wire I_SPI_DONE;
output wire [31 : 0] spi_data_out;
output wire clear_req_out;
output wire ldac_req_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_req_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_req_out RST" *)
output wire reset_req_out;
output wire start_spi_out;
output wire O_BRAM_SPI_DONE;

  bram_dr_multiplexer inst (
    .sel(sel),
    .bram_spi_data(bram_spi_data),
    .bram_clear_req(bram_clear_req),
    .bram_ldac_req(bram_ldac_req),
    .bram_reset_req(bram_reset_req),
    .bram_start_spi(bram_start_spi),
    .direct_spi_data(direct_spi_data),
    .direct_clear_req(direct_clear_req),
    .direct_ldac_req(direct_ldac_req),
    .direct_reset_req(direct_reset_req),
    .direct_start_spi(direct_start_spi),
    .I_SPI_DONE(I_SPI_DONE),
    .spi_data_out(spi_data_out),
    .clear_req_out(clear_req_out),
    .ldac_req_out(ldac_req_out),
    .reset_req_out(reset_req_out),
    .start_spi_out(start_spi_out),
    .O_BRAM_SPI_DONE(O_BRAM_SPI_DONE)
  );
endmodule
