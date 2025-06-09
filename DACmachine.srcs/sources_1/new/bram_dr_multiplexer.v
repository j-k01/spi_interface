`timescale 1ns / 1ps

module bram_dr_multiplexer (
    // Select input
    input               sel,

    // BRAM source inputs
    input [31:0]        bram_spi_data,
    input               bram_clear_req,
    input               bram_ldac_req,
    input               bram_reset_req,
    input               bram_start_spi,

    // Direct Write source inputs
    input [31:0]        direct_spi_data,
    input               direct_clear_req,
    input               direct_ldac_req,
    input               direct_reset_req,
    input               direct_start_spi,

    // Reverse direction input for SPI_DONE
    input               I_SPI_DONE,

    // Multiplexed outputs
    output [31:0]       spi_data_out,
    output              clear_req_out,
    output              ldac_req_out,
    output              reset_req_out,
    output              start_spi_out, 

    // Reverse direction output to BRAM
    output              O_BRAM_SPI_DONE
);

    // MUX logic
    // sel = 0: Direct Write
    // sel = 1: BRAM
    assign spi_data_out  = sel ? bram_spi_data    : direct_spi_data;
    assign clear_req_out = sel ? bram_clear_req   : direct_clear_req;
    assign ldac_req_out  = sel ? bram_ldac_req    : direct_ldac_req;
    assign reset_req_out = sel ? bram_reset_req   : direct_reset_req;
    assign start_spi_out = sel ? bram_start_spi   : direct_start_spi;

    // Reverse MUX for SPI_DONE
    // If BRAM is selected (sel=1), pass I_SPI_DONE through.
    // If Direct Write is selected (sel=0), output is high.
    assign O_BRAM_SPI_DONE = sel ? I_SPI_DONE : 1'b1;

endmodule 