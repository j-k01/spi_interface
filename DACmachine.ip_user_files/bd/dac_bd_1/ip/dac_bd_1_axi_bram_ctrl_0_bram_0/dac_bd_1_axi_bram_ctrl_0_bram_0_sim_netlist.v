// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  7 22:53:07 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_axi_bram_ctrl_0_bram_0/dac_bd_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : dac_bd_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dac_bd_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_6 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 60000)
`pragma protect data_block
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
`pragma protect end_protected
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
