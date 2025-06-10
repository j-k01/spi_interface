// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  7 22:53:06 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dac_bd_1_axi_bram_ctrl_0_bram_0 -prefix
//               dac_bd_1_axi_bram_ctrl_0_bram_0_ dac_bd_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59712)
`pragma protect data_block
++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
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
