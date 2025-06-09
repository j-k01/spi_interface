`timescale 1 ns / 1 ps
module AXI_Configuration_Registers_v1_0 #
(
    // Users to add parameters here
    // User parameters ends
    // Do not modify the parameters beyond this line
    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH	= 32,
    parameter integer C_S00_AXI_ADDR_WIDTH	= 6
)
(
    // Users to add ports here
    input wire [31:0] I_RX_DATA,       
    output wire O_START,                
    output wire [31:0] O_TX_DATA,      
    input wire I_DONE,                 
    
   
    // Configuration outputs (to other modules) - all expanded to 16 bits
    output wire [1:0] O_SPI_MODE,           // SPI Mode (CPOL = spi_mode[1], CPHA = spi_mode[0])
    output wire [15:0] O_BITS_PER_TRANSACTION,  // Number of bits in transaction
    output wire [15:0] O_CYCLES_PER_BIT,        // System clock cycles per bit
    output wire [15:0] O_SCLK_HIGH_OFFSET,      // Cycle offset when SCLK goes high
    output wire [15:0] O_SCLK_LOW_OFFSET,       // Cycle offset when SCLK goes low
    output wire [15:0] O_SDO_CHANGE_OFFSET,     // Cycle offset when MOSI changes
    output wire [15:0] O_SDI_SAMPLE_OFFSET,     // Cycle offset when MISO is sampled
    output wire [15:0] O_CS_TO_TRX_DELAY,       // Delay between CS assertion and transaction start
    output wire [15:0] O_CS_HOLD_TIME,          // CS hold time after transaction completion
    
    // User ports ends
    // Do not modify the ports beyond this line
    // Ports of Axi Slave Bus Interface S00_AXI
    input wire  s00_axi_aclk,
    input wire  s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire  s00_axi_awvalid,
    output wire  s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire  s00_axi_wvalid,
    output wire  s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire  s00_axi_bvalid,
    input wire  s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire  s00_axi_arvalid,
    output wire  s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire  s00_axi_rvalid,
    input wire  s00_axi_rready
);

// Instantiation of Axi Bus Interface S00_AXI
AXI_Configuration_Registers_v1_0_S00_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
) AXI_Configuration_Registers_v1_0_S00_AXI_inst (
    // User ports
    .I_RX_DATA(I_RX_DATA),
    .O_START(O_START),
    .O_TX_DATA(O_TX_DATA),
    .I_DONE(I_DONE),
    
    // Configuration outputs
    .O_SPI_MODE(O_SPI_MODE),
    .O_BITS_PER_TRANSACTION(O_BITS_PER_TRANSACTION),
    .O_CYCLES_PER_BIT(O_CYCLES_PER_BIT),
    .O_SCLK_HIGH_OFFSET(O_SCLK_HIGH_OFFSET),
    .O_SCLK_LOW_OFFSET(O_SCLK_LOW_OFFSET),
    .O_SDO_CHANGE_OFFSET(O_SDO_CHANGE_OFFSET),
    .O_SDI_SAMPLE_OFFSET(O_SDI_SAMPLE_OFFSET),
    .O_CS_TO_TRX_DELAY(O_CS_TO_TRX_DELAY),
    .O_CS_HOLD_TIME(O_CS_HOLD_TIME),
    
    // AXI interface
    .S_AXI_ACLK(s00_axi_aclk),
    .S_AXI_ARESETN(s00_axi_aresetn),
    .S_AXI_AWADDR(s00_axi_awaddr),
    .S_AXI_AWPROT(s00_axi_awprot),
    .S_AXI_AWVALID(s00_axi_awvalid),
    .S_AXI_AWREADY(s00_axi_awready),
    .S_AXI_WDATA(s00_axi_wdata),
    .S_AXI_WSTRB(s00_axi_wstrb),
    .S_AXI_WVALID(s00_axi_wvalid),
    .S_AXI_WREADY(s00_axi_wready),
    .S_AXI_BRESP(s00_axi_bresp),
    .S_AXI_BVALID(s00_axi_bvalid),
    .S_AXI_BREADY(s00_axi_bready),
    .S_AXI_ARADDR(s00_axi_araddr),
    .S_AXI_ARPROT(s00_axi_arprot),
    .S_AXI_ARVALID(s00_axi_arvalid),
    .S_AXI_ARREADY(s00_axi_arready),
    .S_AXI_RDATA(s00_axi_rdata),
    .S_AXI_RRESP(s00_axi_rresp),
    .S_AXI_RVALID(s00_axi_rvalid),
    .S_AXI_RREADY(s00_axi_rready)
);

// Add user logic here

// User logic ends

endmodule