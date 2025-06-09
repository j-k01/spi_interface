// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Jun  8 02:03:20 2025
// Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DAVIS/Research/Demo/DACmachine/DACmachine.gen/sources_1/bd/dac_bd_1/ip/dac_bd_1_BRAM_reader_0_0/dac_bd_1_BRAM_reader_0_0_sim_netlist.v
// Design      : dac_bd_1_BRAM_reader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_bd_1_BRAM_reader_0_0,BRAM_reader,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BRAM_reader,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dac_bd_1_BRAM_reader_0_0
   (clk,
    rst_n,
    O_ADDR,
    I_DATA,
    O_ENABLE,
    O_WE,
    I_START_MACRO,
    I_CONFIGURE,
    O_SPI_TRX,
    O_START_SPI,
    I_SPI_DONE,
    O_CLEAR_REQ,
    O_LDAC_REQ,
    O_RESET_REQ);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dac_bd_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output [31:0]O_ADDR;
  input [31:0]I_DATA;
  output O_ENABLE;
  output [3:0]O_WE;
  input I_START_MACRO;
  input [2:0]I_CONFIGURE;
  output [31:0]O_SPI_TRX;
  output O_START_SPI;
  input I_SPI_DONE;
  output O_CLEAR_REQ;
  output O_LDAC_REQ;
  output O_RESET_REQ;

  wire \<const0> ;
  wire [2:0]I_CONFIGURE;
  wire [31:0]I_DATA;
  wire I_SPI_DONE;
  wire I_START_MACRO;
  wire [31:2]\^O_ADDR ;
  wire O_CLEAR_REQ;
  wire O_ENABLE;
  wire O_LDAC_REQ;
  wire O_RESET_REQ;
  wire [23:0]\^O_SPI_TRX ;
  wire O_START_SPI;
  wire clk;
  wire rst_n;

  assign O_ADDR[31:2] = \^O_ADDR [31:2];
  assign O_ADDR[1] = \<const0> ;
  assign O_ADDR[0] = \<const0> ;
  assign O_SPI_TRX[31] = \<const0> ;
  assign O_SPI_TRX[30] = \<const0> ;
  assign O_SPI_TRX[29] = \<const0> ;
  assign O_SPI_TRX[28] = \<const0> ;
  assign O_SPI_TRX[27] = \<const0> ;
  assign O_SPI_TRX[26] = \<const0> ;
  assign O_SPI_TRX[25] = \<const0> ;
  assign O_SPI_TRX[24] = \<const0> ;
  assign O_SPI_TRX[23:0] = \^O_SPI_TRX [23:0];
  assign O_WE[3] = \<const0> ;
  assign O_WE[2] = \<const0> ;
  assign O_WE[1] = \<const0> ;
  assign O_WE[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  dac_bd_1_BRAM_reader_0_0_BRAM_reader inst
       (.I_CONFIGURE(I_CONFIGURE),
        .I_DATA({I_DATA[31:28],I_DATA[23:0]}),
        .I_SPI_DONE(I_SPI_DONE),
        .I_START_MACRO(I_START_MACRO),
        .O_ADDR(\^O_ADDR ),
        .O_CLEAR_REQ(O_CLEAR_REQ),
        .O_ENABLE(O_ENABLE),
        .O_LDAC_REQ(O_LDAC_REQ),
        .O_RESET_REQ(O_RESET_REQ),
        .O_SPI_TRX(\^O_SPI_TRX ),
        .O_START_SPI(O_START_SPI),
        .clk(clk),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "BRAM_reader" *) 
module dac_bd_1_BRAM_reader_0_0_BRAM_reader
   (O_ADDR,
    O_ENABLE,
    O_SPI_TRX,
    O_START_SPI,
    O_CLEAR_REQ,
    O_LDAC_REQ,
    O_RESET_REQ,
    I_DATA,
    clk,
    I_CONFIGURE,
    I_START_MACRO,
    I_SPI_DONE,
    rst_n);
  output [29:0]O_ADDR;
  output O_ENABLE;
  output [23:0]O_SPI_TRX;
  output O_START_SPI;
  output O_CLEAR_REQ;
  output O_LDAC_REQ;
  output O_RESET_REQ;
  input [27:0]I_DATA;
  input clk;
  input [2:0]I_CONFIGURE;
  input I_START_MACRO;
  input I_SPI_DONE;
  input rst_n;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [2:0]I_CONFIGURE;
  wire [27:0]I_DATA;
  wire I_SPI_DONE;
  wire I_START_MACRO;
  wire [29:0]O_ADDR;
  wire O_ADDR0_carry__0_n_0;
  wire O_ADDR0_carry__0_n_1;
  wire O_ADDR0_carry__0_n_2;
  wire O_ADDR0_carry__0_n_3;
  wire O_ADDR0_carry__1_n_0;
  wire O_ADDR0_carry__1_n_1;
  wire O_ADDR0_carry__1_n_2;
  wire O_ADDR0_carry__1_n_3;
  wire O_ADDR0_carry__2_n_0;
  wire O_ADDR0_carry__2_n_1;
  wire O_ADDR0_carry__2_n_2;
  wire O_ADDR0_carry__2_n_3;
  wire O_ADDR0_carry__3_n_0;
  wire O_ADDR0_carry__3_n_1;
  wire O_ADDR0_carry__3_n_2;
  wire O_ADDR0_carry__3_n_3;
  wire O_ADDR0_carry__4_n_0;
  wire O_ADDR0_carry__4_n_1;
  wire O_ADDR0_carry__4_n_2;
  wire O_ADDR0_carry__4_n_3;
  wire O_ADDR0_carry__5_n_0;
  wire O_ADDR0_carry__5_n_1;
  wire O_ADDR0_carry__5_n_2;
  wire O_ADDR0_carry__5_n_3;
  wire O_ADDR0_carry__6_n_2;
  wire O_ADDR0_carry__6_n_3;
  wire O_ADDR0_carry_i_1_n_0;
  wire O_ADDR0_carry_n_0;
  wire O_ADDR0_carry_n_1;
  wire O_ADDR0_carry_n_2;
  wire O_ADDR0_carry_n_3;
  wire [31:2]O_ADDR0_in;
  wire \O_ADDR[31]_i_10_n_0 ;
  wire \O_ADDR[31]_i_11_n_0 ;
  wire \O_ADDR[31]_i_12_n_0 ;
  wire \O_ADDR[31]_i_13_n_0 ;
  wire \O_ADDR[31]_i_14_n_0 ;
  wire \O_ADDR[31]_i_1_n_0 ;
  wire \O_ADDR[31]_i_3_n_0 ;
  wire \O_ADDR[31]_i_4_n_0 ;
  wire \O_ADDR[31]_i_5_n_0 ;
  wire \O_ADDR[31]_i_6_n_0 ;
  wire \O_ADDR[31]_i_7_n_0 ;
  wire \O_ADDR[31]_i_8_n_0 ;
  wire \O_ADDR[31]_i_9_n_0 ;
  wire O_CLEAR_REQ;
  wire O_CLEAR_REQ_i_1_n_0;
  wire O_CLEAR_REQ_i_2_n_0;
  wire O_ENABLE;
  wire O_ENABLE_i_1_n_0;
  wire O_LDAC_REQ;
  wire O_LDAC_REQ_i_1_n_0;
  wire O_RESET_REQ;
  wire O_RESET_REQ_i_1_n_0;
  wire [23:0]O_SPI_TRX;
  wire \O_SPI_TRX[23]_i_1_n_0 ;
  wire O_START_SPI;
  wire clk;
  wire [23:1]data0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:2]in22;
  wire rst_n;
  wire [2:0]state;
  wire [23:0]wait_counter;
  wire \wait_counter0_inferred__0/i__carry__0_n_0 ;
  wire \wait_counter0_inferred__0/i__carry__0_n_1 ;
  wire \wait_counter0_inferred__0/i__carry__0_n_2 ;
  wire \wait_counter0_inferred__0/i__carry__0_n_3 ;
  wire \wait_counter0_inferred__0/i__carry__1_n_0 ;
  wire \wait_counter0_inferred__0/i__carry__1_n_1 ;
  wire \wait_counter0_inferred__0/i__carry__1_n_2 ;
  wire \wait_counter0_inferred__0/i__carry__1_n_3 ;
  wire \wait_counter0_inferred__0/i__carry__2_n_0 ;
  wire \wait_counter0_inferred__0/i__carry__2_n_1 ;
  wire \wait_counter0_inferred__0/i__carry__2_n_2 ;
  wire \wait_counter0_inferred__0/i__carry__2_n_3 ;
  wire \wait_counter0_inferred__0/i__carry__3_n_0 ;
  wire \wait_counter0_inferred__0/i__carry__3_n_1 ;
  wire \wait_counter0_inferred__0/i__carry__3_n_2 ;
  wire \wait_counter0_inferred__0/i__carry__3_n_3 ;
  wire \wait_counter0_inferred__0/i__carry__4_n_2 ;
  wire \wait_counter0_inferred__0/i__carry__4_n_3 ;
  wire \wait_counter0_inferred__0/i__carry_n_0 ;
  wire \wait_counter0_inferred__0/i__carry_n_1 ;
  wire \wait_counter0_inferred__0/i__carry_n_2 ;
  wire \wait_counter0_inferred__0/i__carry_n_3 ;
  wire \wait_counter[0]_i_2_n_0 ;
  wire \wait_counter[0]_i_3_n_0 ;
  wire \wait_counter[0]_i_4_n_0 ;
  wire \wait_counter[0]_i_5_n_0 ;
  wire \wait_counter[10]_i_2_n_0 ;
  wire \wait_counter[10]_i_3_n_0 ;
  wire \wait_counter[22]_i_10_n_0 ;
  wire \wait_counter[22]_i_11_n_0 ;
  wire \wait_counter[22]_i_12_n_0 ;
  wire \wait_counter[22]_i_2_n_0 ;
  wire \wait_counter[22]_i_3_n_0 ;
  wire \wait_counter[22]_i_4_n_0 ;
  wire \wait_counter[22]_i_5_n_0 ;
  wire \wait_counter[22]_i_6_n_0 ;
  wire \wait_counter[22]_i_7_n_0 ;
  wire \wait_counter[22]_i_8_n_0 ;
  wire \wait_counter[22]_i_9_n_0 ;
  wire \wait_counter[23]_i_10_n_0 ;
  wire \wait_counter[23]_i_11_n_0 ;
  wire \wait_counter[23]_i_12_n_0 ;
  wire \wait_counter[23]_i_13_n_0 ;
  wire \wait_counter[23]_i_14_n_0 ;
  wire \wait_counter[23]_i_3_n_0 ;
  wire \wait_counter[23]_i_4_n_0 ;
  wire \wait_counter[23]_i_5_n_0 ;
  wire \wait_counter[23]_i_6_n_0 ;
  wire \wait_counter[23]_i_7_n_0 ;
  wire \wait_counter[23]_i_8_n_0 ;
  wire \wait_counter[23]_i_9_n_0 ;
  wire \wait_counter[9]_i_2_n_0 ;
  wire wait_counter_0;
  wire \wait_counter_reg_n_0_[0] ;
  wire \wait_counter_reg_n_0_[10] ;
  wire \wait_counter_reg_n_0_[11] ;
  wire \wait_counter_reg_n_0_[12] ;
  wire \wait_counter_reg_n_0_[13] ;
  wire \wait_counter_reg_n_0_[14] ;
  wire \wait_counter_reg_n_0_[15] ;
  wire \wait_counter_reg_n_0_[16] ;
  wire \wait_counter_reg_n_0_[17] ;
  wire \wait_counter_reg_n_0_[18] ;
  wire \wait_counter_reg_n_0_[19] ;
  wire \wait_counter_reg_n_0_[1] ;
  wire \wait_counter_reg_n_0_[20] ;
  wire \wait_counter_reg_n_0_[21] ;
  wire \wait_counter_reg_n_0_[22] ;
  wire \wait_counter_reg_n_0_[23] ;
  wire \wait_counter_reg_n_0_[2] ;
  wire \wait_counter_reg_n_0_[3] ;
  wire \wait_counter_reg_n_0_[4] ;
  wire \wait_counter_reg_n_0_[5] ;
  wire \wait_counter_reg_n_0_[6] ;
  wire \wait_counter_reg_n_0_[7] ;
  wire \wait_counter_reg_n_0_[8] ;
  wire \wait_counter_reg_n_0_[9] ;
  wire [0:0]NLW_O_ADDR0_carry_O_UNCONNECTED;
  wire [3:2]NLW_O_ADDR0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_O_ADDR0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_wait_counter0_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:3]\NLW_wait_counter0_inferred__0/i__carry__4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2F20FFFFFFFF0000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(I_CONFIGURE[1]),
        .I1(I_CONFIGURE[0]),
        .I2(I_DATA[24]),
        .I3(I_DATA[26]),
        .I4(I_DATA[25]),
        .I5(I_CONFIGURE[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(I_DATA[27]),
        .I1(I_DATA[26]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\O_ADDR[31]_i_7_n_0 ),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h3333BBB8)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\O_ADDR[31]_i_4_n_0 ),
        .I1(state[2]),
        .I2(I_START_MACRO),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S_WAIT_DATA:010,S_DECODE_CMD:011,S_SPI_TRX_WAIT:100,S_WAIT_CYCLES:101,S_READ_CMD:001,S_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "S_WAIT_DATA:010,S_DECODE_CMD:011,S_SPI_TRX_WAIT:100,S_WAIT_CYCLES:101,S_READ_CMD:001,S_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "S_WAIT_DATA:010,S_DECODE_CMD:011,S_SPI_TRX_WAIT:100,S_WAIT_CYCLES:101,S_READ_CMD:001,S_IDLE:000" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry
       (.CI(1'b0),
        .CO({O_ADDR0_carry_n_0,O_ADDR0_carry_n_1,O_ADDR0_carry_n_2,O_ADDR0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,O_ADDR[0],1'b0}),
        .O({in22[4:2],NLW_O_ADDR0_carry_O_UNCONNECTED[0]}),
        .S({O_ADDR[2:1],O_ADDR0_carry_i_1_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__0
       (.CI(O_ADDR0_carry_n_0),
        .CO({O_ADDR0_carry__0_n_0,O_ADDR0_carry__0_n_1,O_ADDR0_carry__0_n_2,O_ADDR0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[8:5]),
        .S(O_ADDR[6:3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__1
       (.CI(O_ADDR0_carry__0_n_0),
        .CO({O_ADDR0_carry__1_n_0,O_ADDR0_carry__1_n_1,O_ADDR0_carry__1_n_2,O_ADDR0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[12:9]),
        .S(O_ADDR[10:7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__2
       (.CI(O_ADDR0_carry__1_n_0),
        .CO({O_ADDR0_carry__2_n_0,O_ADDR0_carry__2_n_1,O_ADDR0_carry__2_n_2,O_ADDR0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[16:13]),
        .S(O_ADDR[14:11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__3
       (.CI(O_ADDR0_carry__2_n_0),
        .CO({O_ADDR0_carry__3_n_0,O_ADDR0_carry__3_n_1,O_ADDR0_carry__3_n_2,O_ADDR0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[20:17]),
        .S(O_ADDR[18:15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__4
       (.CI(O_ADDR0_carry__3_n_0),
        .CO({O_ADDR0_carry__4_n_0,O_ADDR0_carry__4_n_1,O_ADDR0_carry__4_n_2,O_ADDR0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[24:21]),
        .S(O_ADDR[22:19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__5
       (.CI(O_ADDR0_carry__4_n_0),
        .CO({O_ADDR0_carry__5_n_0,O_ADDR0_carry__5_n_1,O_ADDR0_carry__5_n_2,O_ADDR0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[28:25]),
        .S(O_ADDR[26:23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 O_ADDR0_carry__6
       (.CI(O_ADDR0_carry__5_n_0),
        .CO({NLW_O_ADDR0_carry__6_CO_UNCONNECTED[3:2],O_ADDR0_carry__6_n_2,O_ADDR0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_O_ADDR0_carry__6_O_UNCONNECTED[3],in22[31:29]}),
        .S({1'b0,O_ADDR[29:27]}));
  LUT1 #(
    .INIT(2'h1)) 
    O_ADDR0_carry_i_1
       (.I0(O_ADDR[0]),
        .O(O_ADDR0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[10]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[10]),
        .O(O_ADDR0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[11]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[11]),
        .O(O_ADDR0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[12]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[12]),
        .O(O_ADDR0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[13]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[13]),
        .O(O_ADDR0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[14]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[14]),
        .O(O_ADDR0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[15]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[15]),
        .O(O_ADDR0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[16]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[16]),
        .O(O_ADDR0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[17]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[17]),
        .O(O_ADDR0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[18]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[18]),
        .O(O_ADDR0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[19]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[19]),
        .O(O_ADDR0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[20]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[20]),
        .O(O_ADDR0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[21]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[21]),
        .O(O_ADDR0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[22]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[22]),
        .O(O_ADDR0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[23]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[23]),
        .O(O_ADDR0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[24]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[24]),
        .O(O_ADDR0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[25]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[25]),
        .O(O_ADDR0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[26]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[26]),
        .O(O_ADDR0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[27]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[27]),
        .O(O_ADDR0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[28]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[28]),
        .O(O_ADDR0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[29]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[29]),
        .O(O_ADDR0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[2]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[2]),
        .O(O_ADDR0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[30]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[30]),
        .O(O_ADDR0_in[30]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \O_ADDR[31]_i_1 
       (.I0(\O_ADDR[31]_i_4_n_0 ),
        .I1(state[2]),
        .I2(\O_ADDR[31]_i_5_n_0 ),
        .I3(\O_ADDR[31]_i_6_n_0 ),
        .I4(\O_ADDR[31]_i_7_n_0 ),
        .O(\O_ADDR[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \O_ADDR[31]_i_10 
       (.I0(\wait_counter_reg_n_0_[23] ),
        .I1(\wait_counter_reg_n_0_[22] ),
        .I2(\wait_counter_reg_n_0_[14] ),
        .I3(\wait_counter_reg_n_0_[19] ),
        .I4(\wait_counter_reg_n_0_[15] ),
        .I5(\wait_counter_reg_n_0_[18] ),
        .O(\O_ADDR[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \O_ADDR[31]_i_11 
       (.I0(\wait_counter_reg_n_0_[4] ),
        .I1(\wait_counter_reg_n_0_[1] ),
        .I2(\wait_counter_reg_n_0_[0] ),
        .I3(state[0]),
        .I4(\wait_counter_reg_n_0_[5] ),
        .I5(\wait_counter_reg_n_0_[16] ),
        .O(\O_ADDR[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \O_ADDR[31]_i_12 
       (.I0(\wait_counter_reg_n_0_[11] ),
        .I1(\wait_counter_reg_n_0_[8] ),
        .I2(\wait_counter_reg_n_0_[12] ),
        .I3(\wait_counter_reg_n_0_[17] ),
        .I4(\wait_counter_reg_n_0_[20] ),
        .I5(\wait_counter_reg_n_0_[21] ),
        .O(\O_ADDR[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \O_ADDR[31]_i_13 
       (.I0(\wait_counter_reg_n_0_[13] ),
        .I1(\wait_counter_reg_n_0_[9] ),
        .I2(\wait_counter_reg_n_0_[10] ),
        .I3(\wait_counter_reg_n_0_[6] ),
        .O(\O_ADDR[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \O_ADDR[31]_i_14 
       (.I0(\wait_counter_reg_n_0_[3] ),
        .I1(\wait_counter_reg_n_0_[7] ),
        .I2(\wait_counter_reg_n_0_[2] ),
        .O(\O_ADDR[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[31]_i_2 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[31]),
        .O(O_ADDR0_in[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \O_ADDR[31]_i_3 
       (.I0(rst_n),
        .O(\O_ADDR[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \O_ADDR[31]_i_4 
       (.I0(\O_ADDR[31]_i_9_n_0 ),
        .I1(\O_ADDR[31]_i_10_n_0 ),
        .I2(\O_ADDR[31]_i_11_n_0 ),
        .I3(\O_ADDR[31]_i_12_n_0 ),
        .I4(\O_ADDR[31]_i_13_n_0 ),
        .I5(\O_ADDR[31]_i_14_n_0 ),
        .O(\O_ADDR[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \O_ADDR[31]_i_5 
       (.I0(state[1]),
        .I1(I_START_MACRO),
        .I2(state[0]),
        .O(\O_ADDR[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \O_ADDR[31]_i_6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\O_ADDR[31]_i_8_n_0 ),
        .I3(I_CONFIGURE[2]),
        .O(\O_ADDR[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF700FFFF)) 
    \O_ADDR[31]_i_7 
       (.I0(I_DATA[25]),
        .I1(I_DATA[24]),
        .I2(\wait_counter[23]_i_7_n_0 ),
        .I3(I_DATA[26]),
        .I4(I_DATA[27]),
        .O(\O_ADDR[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \O_ADDR[31]_i_8 
       (.I0(I_DATA[26]),
        .I1(I_DATA[25]),
        .I2(I_DATA[27]),
        .I3(I_CONFIGURE[1]),
        .I4(I_CONFIGURE[0]),
        .I5(I_DATA[24]),
        .O(\O_ADDR[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \O_ADDR[31]_i_9 
       (.I0(I_SPI_DONE),
        .I1(state[0]),
        .O(\O_ADDR[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[3]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[3]),
        .O(O_ADDR0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[4]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[4]),
        .O(O_ADDR0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[5]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[5]),
        .O(O_ADDR0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[6]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[6]),
        .O(O_ADDR0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[7]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[7]),
        .O(O_ADDR0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[8]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[8]),
        .O(O_ADDR0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h3800)) 
    \O_ADDR[9]_i_1 
       (.I0(\O_ADDR[31]_i_8_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(in22[9]),
        .O(O_ADDR0_in[9]));
  FDCE \O_ADDR_reg[10] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[10]),
        .Q(O_ADDR[8]));
  FDCE \O_ADDR_reg[11] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[11]),
        .Q(O_ADDR[9]));
  FDCE \O_ADDR_reg[12] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[12]),
        .Q(O_ADDR[10]));
  FDCE \O_ADDR_reg[13] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[13]),
        .Q(O_ADDR[11]));
  FDCE \O_ADDR_reg[14] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[14]),
        .Q(O_ADDR[12]));
  FDCE \O_ADDR_reg[15] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[15]),
        .Q(O_ADDR[13]));
  FDCE \O_ADDR_reg[16] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[16]),
        .Q(O_ADDR[14]));
  FDCE \O_ADDR_reg[17] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[17]),
        .Q(O_ADDR[15]));
  FDCE \O_ADDR_reg[18] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[18]),
        .Q(O_ADDR[16]));
  FDCE \O_ADDR_reg[19] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[19]),
        .Q(O_ADDR[17]));
  FDCE \O_ADDR_reg[20] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[20]),
        .Q(O_ADDR[18]));
  FDCE \O_ADDR_reg[21] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[21]),
        .Q(O_ADDR[19]));
  FDCE \O_ADDR_reg[22] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[22]),
        .Q(O_ADDR[20]));
  FDCE \O_ADDR_reg[23] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[23]),
        .Q(O_ADDR[21]));
  FDCE \O_ADDR_reg[24] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[24]),
        .Q(O_ADDR[22]));
  FDCE \O_ADDR_reg[25] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[25]),
        .Q(O_ADDR[23]));
  FDCE \O_ADDR_reg[26] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[26]),
        .Q(O_ADDR[24]));
  FDCE \O_ADDR_reg[27] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[27]),
        .Q(O_ADDR[25]));
  FDCE \O_ADDR_reg[28] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[28]),
        .Q(O_ADDR[26]));
  FDCE \O_ADDR_reg[29] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[29]),
        .Q(O_ADDR[27]));
  FDCE \O_ADDR_reg[2] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[2]),
        .Q(O_ADDR[0]));
  FDCE \O_ADDR_reg[30] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[30]),
        .Q(O_ADDR[28]));
  FDCE \O_ADDR_reg[31] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[31]),
        .Q(O_ADDR[29]));
  FDCE \O_ADDR_reg[3] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[3]),
        .Q(O_ADDR[1]));
  FDCE \O_ADDR_reg[4] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[4]),
        .Q(O_ADDR[2]));
  FDCE \O_ADDR_reg[5] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[5]),
        .Q(O_ADDR[3]));
  FDCE \O_ADDR_reg[6] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[6]),
        .Q(O_ADDR[4]));
  FDCE \O_ADDR_reg[7] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[7]),
        .Q(O_ADDR[5]));
  FDCE \O_ADDR_reg[8] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[8]),
        .Q(O_ADDR[6]));
  FDCE \O_ADDR_reg[9] 
       (.C(clk),
        .CE(\O_ADDR[31]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ADDR0_in[9]),
        .Q(O_ADDR[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    O_CLEAR_REQ_i_1
       (.I0(I_DATA[25]),
        .I1(O_CLEAR_REQ_i_2_n_0),
        .I2(I_DATA[24]),
        .I3(I_DATA[26]),
        .I4(I_DATA[27]),
        .O(O_CLEAR_REQ_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    O_CLEAR_REQ_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(O_CLEAR_REQ_i_2_n_0));
  FDCE O_CLEAR_REQ_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_CLEAR_REQ_i_1_n_0),
        .Q(O_CLEAR_REQ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    O_ENABLE_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(O_ENABLE_i_1_n_0));
  FDCE O_ENABLE_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_ENABLE_i_1_n_0),
        .Q(O_ENABLE));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    O_LDAC_REQ_i_1
       (.I0(O_CLEAR_REQ_i_2_n_0),
        .I1(I_DATA[25]),
        .I2(I_DATA[24]),
        .I3(I_DATA[27]),
        .I4(I_DATA[26]),
        .O(O_LDAC_REQ_i_1_n_0));
  FDCE O_LDAC_REQ_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_LDAC_REQ_i_1_n_0),
        .Q(O_LDAC_REQ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    O_RESET_REQ_i_1
       (.I0(I_DATA[25]),
        .I1(O_CLEAR_REQ_i_2_n_0),
        .I2(I_DATA[26]),
        .I3(I_DATA[27]),
        .I4(I_DATA[24]),
        .O(O_RESET_REQ_i_1_n_0));
  FDCE O_RESET_REQ_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(O_RESET_REQ_i_1_n_0),
        .Q(O_RESET_REQ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \O_SPI_TRX[23]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(I_DATA[26]),
        .I4(I_DATA[27]),
        .O(\O_SPI_TRX[23]_i_1_n_0 ));
  FDCE \O_SPI_TRX_reg[0] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[0]),
        .Q(O_SPI_TRX[0]));
  FDCE \O_SPI_TRX_reg[10] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[10]),
        .Q(O_SPI_TRX[10]));
  FDCE \O_SPI_TRX_reg[11] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[11]),
        .Q(O_SPI_TRX[11]));
  FDCE \O_SPI_TRX_reg[12] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[12]),
        .Q(O_SPI_TRX[12]));
  FDCE \O_SPI_TRX_reg[13] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[13]),
        .Q(O_SPI_TRX[13]));
  FDCE \O_SPI_TRX_reg[14] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[14]),
        .Q(O_SPI_TRX[14]));
  FDCE \O_SPI_TRX_reg[15] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[15]),
        .Q(O_SPI_TRX[15]));
  FDCE \O_SPI_TRX_reg[16] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[16]),
        .Q(O_SPI_TRX[16]));
  FDCE \O_SPI_TRX_reg[17] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[17]),
        .Q(O_SPI_TRX[17]));
  FDCE \O_SPI_TRX_reg[18] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[18]),
        .Q(O_SPI_TRX[18]));
  FDCE \O_SPI_TRX_reg[19] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[19]),
        .Q(O_SPI_TRX[19]));
  FDCE \O_SPI_TRX_reg[1] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[1]),
        .Q(O_SPI_TRX[1]));
  FDCE \O_SPI_TRX_reg[20] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[20]),
        .Q(O_SPI_TRX[20]));
  FDCE \O_SPI_TRX_reg[21] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[21]),
        .Q(O_SPI_TRX[21]));
  FDCE \O_SPI_TRX_reg[22] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[22]),
        .Q(O_SPI_TRX[22]));
  FDCE \O_SPI_TRX_reg[23] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[23]),
        .Q(O_SPI_TRX[23]));
  FDCE \O_SPI_TRX_reg[2] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[2]),
        .Q(O_SPI_TRX[2]));
  FDCE \O_SPI_TRX_reg[3] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[3]),
        .Q(O_SPI_TRX[3]));
  FDCE \O_SPI_TRX_reg[4] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[4]),
        .Q(O_SPI_TRX[4]));
  FDCE \O_SPI_TRX_reg[5] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[5]),
        .Q(O_SPI_TRX[5]));
  FDCE \O_SPI_TRX_reg[6] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[6]),
        .Q(O_SPI_TRX[6]));
  FDCE \O_SPI_TRX_reg[7] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[7]),
        .Q(O_SPI_TRX[7]));
  FDCE \O_SPI_TRX_reg[8] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[8]),
        .Q(O_SPI_TRX[8]));
  FDCE \O_SPI_TRX_reg[9] 
       (.C(clk),
        .CE(\O_SPI_TRX[23]_i_1_n_0 ),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(I_DATA[9]),
        .Q(O_SPI_TRX[9]));
  FDCE O_START_SPI_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(\O_SPI_TRX[23]_i_1_n_0 ),
        .Q(O_START_SPI));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\wait_counter_reg_n_0_[8] ),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(\wait_counter_reg_n_0_[7] ),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(\wait_counter_reg_n_0_[6] ),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(\wait_counter_reg_n_0_[5] ),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(\wait_counter_reg_n_0_[12] ),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(\wait_counter_reg_n_0_[11] ),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(\wait_counter_reg_n_0_[10] ),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(\wait_counter_reg_n_0_[9] ),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(\wait_counter_reg_n_0_[16] ),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(\wait_counter_reg_n_0_[15] ),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(\wait_counter_reg_n_0_[14] ),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(\wait_counter_reg_n_0_[13] ),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(\wait_counter_reg_n_0_[20] ),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(\wait_counter_reg_n_0_[19] ),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(\wait_counter_reg_n_0_[18] ),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(\wait_counter_reg_n_0_[17] ),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(\wait_counter_reg_n_0_[23] ),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(\wait_counter_reg_n_0_[22] ),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(\wait_counter_reg_n_0_[21] ),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\wait_counter_reg_n_0_[4] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\wait_counter_reg_n_0_[3] ),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(\wait_counter_reg_n_0_[2] ),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\wait_counter_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_counter0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\wait_counter0_inferred__0/i__carry_n_0 ,\wait_counter0_inferred__0/i__carry_n_1 ,\wait_counter0_inferred__0/i__carry_n_2 ,\wait_counter0_inferred__0/i__carry_n_3 }),
        .CYINIT(\wait_counter_reg_n_0_[0] ),
        .DI({\wait_counter_reg_n_0_[4] ,\wait_counter_reg_n_0_[3] ,\wait_counter_reg_n_0_[2] ,\wait_counter_reg_n_0_[1] }),
        .O(data0[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_counter0_inferred__0/i__carry__0 
       (.CI(\wait_counter0_inferred__0/i__carry_n_0 ),
        .CO({\wait_counter0_inferred__0/i__carry__0_n_0 ,\wait_counter0_inferred__0/i__carry__0_n_1 ,\wait_counter0_inferred__0/i__carry__0_n_2 ,\wait_counter0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\wait_counter_reg_n_0_[8] ,\wait_counter_reg_n_0_[7] ,\wait_counter_reg_n_0_[6] ,\wait_counter_reg_n_0_[5] }),
        .O(data0[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_counter0_inferred__0/i__carry__1 
       (.CI(\wait_counter0_inferred__0/i__carry__0_n_0 ),
        .CO({\wait_counter0_inferred__0/i__carry__1_n_0 ,\wait_counter0_inferred__0/i__carry__1_n_1 ,\wait_counter0_inferred__0/i__carry__1_n_2 ,\wait_counter0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\wait_counter_reg_n_0_[12] ,\wait_counter_reg_n_0_[11] ,\wait_counter_reg_n_0_[10] ,\wait_counter_reg_n_0_[9] }),
        .O(data0[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_counter0_inferred__0/i__carry__2 
       (.CI(\wait_counter0_inferred__0/i__carry__1_n_0 ),
        .CO({\wait_counter0_inferred__0/i__carry__2_n_0 ,\wait_counter0_inferred__0/i__carry__2_n_1 ,\wait_counter0_inferred__0/i__carry__2_n_2 ,\wait_counter0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\wait_counter_reg_n_0_[16] ,\wait_counter_reg_n_0_[15] ,\wait_counter_reg_n_0_[14] ,\wait_counter_reg_n_0_[13] }),
        .O(data0[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_counter0_inferred__0/i__carry__3 
       (.CI(\wait_counter0_inferred__0/i__carry__2_n_0 ),
        .CO({\wait_counter0_inferred__0/i__carry__3_n_0 ,\wait_counter0_inferred__0/i__carry__3_n_1 ,\wait_counter0_inferred__0/i__carry__3_n_2 ,\wait_counter0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\wait_counter_reg_n_0_[20] ,\wait_counter_reg_n_0_[19] ,\wait_counter_reg_n_0_[18] ,\wait_counter_reg_n_0_[17] }),
        .O(data0[20:17]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wait_counter0_inferred__0/i__carry__4 
       (.CI(\wait_counter0_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_wait_counter0_inferred__0/i__carry__4_CO_UNCONNECTED [3:2],\wait_counter0_inferred__0/i__carry__4_n_2 ,\wait_counter0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\wait_counter_reg_n_0_[22] ,\wait_counter_reg_n_0_[21] }),
        .O({\NLW_wait_counter0_inferred__0/i__carry__4_O_UNCONNECTED [3],data0[23:21]}),
        .S({1'b0,i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0}));
  LUT6 #(
    .INIT(64'hB3A30000B3B33333)) 
    \wait_counter[0]_i_1 
       (.I0(I_DATA[0]),
        .I1(\wait_counter_reg_n_0_[0] ),
        .I2(\wait_counter[22]_i_2_n_0 ),
        .I3(\wait_counter[0]_i_2_n_0 ),
        .I4(O_CLEAR_REQ_i_2_n_0),
        .I5(\wait_counter[22]_i_4_n_0 ),
        .O(wait_counter[0]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \wait_counter[0]_i_2 
       (.I0(\wait_counter[22]_i_6_n_0 ),
        .I1(\wait_counter[0]_i_3_n_0 ),
        .I2(\wait_counter[22]_i_8_n_0 ),
        .I3(\wait_counter[0]_i_4_n_0 ),
        .I4(\wait_counter[0]_i_5_n_0 ),
        .I5(\wait_counter[22]_i_5_n_0 ),
        .O(\wait_counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wait_counter[0]_i_3 
       (.I0(I_DATA[1]),
        .I1(I_DATA[2]),
        .O(\wait_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[0]_i_4 
       (.I0(I_DATA[11]),
        .I1(I_DATA[10]),
        .I2(I_DATA[8]),
        .I3(I_DATA[7]),
        .O(\wait_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \wait_counter[0]_i_5 
       (.I0(I_DATA[9]),
        .I1(I_DATA[10]),
        .I2(I_DATA[11]),
        .I3(I_DATA[21]),
        .I4(I_DATA[22]),
        .I5(I_DATA[23]),
        .O(\wait_counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AFFFF88008800)) 
    \wait_counter[10]_i_1 
       (.I0(O_CLEAR_REQ_i_2_n_0),
        .I1(I_DATA[27]),
        .I2(\wait_counter[10]_i_2_n_0 ),
        .I3(\wait_counter[10]_i_3_n_0 ),
        .I4(\wait_counter[22]_i_4_n_0 ),
        .I5(data0[10]),
        .O(wait_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \wait_counter[10]_i_2 
       (.I0(\wait_counter[23]_i_7_n_0 ),
        .I1(I_DATA[24]),
        .I2(I_DATA[25]),
        .I3(I_DATA[26]),
        .O(\wait_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \wait_counter[10]_i_3 
       (.I0(I_DATA[26]),
        .I1(I_DATA[25]),
        .I2(I_DATA[24]),
        .I3(I_DATA[10]),
        .I4(I_DATA[27]),
        .O(\wait_counter[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[11]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[11]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[11]),
        .O(wait_counter[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[12]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[12]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[12]),
        .O(wait_counter[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[13]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[13]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[13]),
        .O(wait_counter[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[14]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[14]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[14]),
        .O(wait_counter[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[15]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[15]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[15]),
        .O(wait_counter[15]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[16]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[16]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[16]),
        .O(wait_counter[16]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[17]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[17]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[17]),
        .O(wait_counter[17]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[18]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[18]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[18]),
        .O(wait_counter[18]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[19]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[19]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[19]),
        .O(wait_counter[19]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[1]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[1]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[1]),
        .O(wait_counter[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[20]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[20]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[20]),
        .O(wait_counter[20]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[21]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[21]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[21]),
        .O(wait_counter[21]));
  LUT6 #(
    .INIT(64'hCCC4FFFF88808880)) 
    \wait_counter[22]_i_1 
       (.I0(\wait_counter[22]_i_2_n_0 ),
        .I1(O_CLEAR_REQ_i_2_n_0),
        .I2(\wait_counter[22]_i_3_n_0 ),
        .I3(I_DATA[22]),
        .I4(\wait_counter[22]_i_4_n_0 ),
        .I5(data0[22]),
        .O(wait_counter[22]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[22]_i_10 
       (.I0(I_DATA[17]),
        .I1(I_DATA[13]),
        .I2(I_DATA[16]),
        .I3(I_DATA[14]),
        .O(\wait_counter[22]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[22]_i_11 
       (.I0(I_DATA[13]),
        .I1(I_DATA[12]),
        .I2(I_DATA[16]),
        .I3(I_DATA[15]),
        .O(\wait_counter[22]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[22]_i_12 
       (.I0(I_DATA[7]),
        .I1(I_DATA[6]),
        .I2(I_DATA[19]),
        .I3(I_DATA[18]),
        .O(\wait_counter[22]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wait_counter[22]_i_2 
       (.I0(I_DATA[25]),
        .I1(I_DATA[24]),
        .I2(I_DATA[27]),
        .I3(I_DATA[26]),
        .O(\wait_counter[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \wait_counter[22]_i_3 
       (.I0(\wait_counter[22]_i_5_n_0 ),
        .I1(\wait_counter[22]_i_6_n_0 ),
        .I2(\wait_counter[22]_i_7_n_0 ),
        .I3(\wait_counter[22]_i_8_n_0 ),
        .I4(data0[22]),
        .I5(\wait_counter[22]_i_9_n_0 ),
        .O(\wait_counter[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \wait_counter[22]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\wait_counter[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_counter[22]_i_5 
       (.I0(I_DATA[3]),
        .I1(I_DATA[5]),
        .I2(I_DATA[4]),
        .I3(\wait_counter[22]_i_10_n_0 ),
        .I4(I_DATA[20]),
        .I5(I_DATA[19]),
        .O(\wait_counter[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_counter[22]_i_6 
       (.I0(I_DATA[14]),
        .I1(I_DATA[20]),
        .I2(I_DATA[8]),
        .I3(I_DATA[17]),
        .I4(\wait_counter[22]_i_11_n_0 ),
        .I5(\wait_counter[22]_i_12_n_0 ),
        .O(\wait_counter[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \wait_counter[22]_i_7 
       (.I0(\wait_counter[0]_i_4_n_0 ),
        .I1(I_DATA[0]),
        .I2(I_DATA[9]),
        .I3(I_DATA[1]),
        .I4(I_DATA[2]),
        .O(\wait_counter[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wait_counter[22]_i_8 
       (.I0(I_DATA[23]),
        .I1(I_DATA[22]),
        .O(\wait_counter[22]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \wait_counter[22]_i_9 
       (.I0(I_DATA[23]),
        .I1(I_DATA[22]),
        .I2(I_DATA[21]),
        .O(\wait_counter[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h044404440444FFFF)) 
    \wait_counter[23]_i_1 
       (.I0(\wait_counter[23]_i_3_n_0 ),
        .I1(state[2]),
        .I2(\wait_counter[23]_i_4_n_0 ),
        .I3(\wait_counter[23]_i_5_n_0 ),
        .I4(\wait_counter[23]_i_6_n_0 ),
        .I5(\wait_counter[23]_i_7_n_0 ),
        .O(wait_counter_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[23]_i_10 
       (.I0(I_DATA[13]),
        .I1(I_DATA[12]),
        .I2(I_DATA[15]),
        .I3(I_DATA[14]),
        .O(\wait_counter[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[23]_i_11 
       (.I0(I_DATA[1]),
        .I1(I_DATA[0]),
        .I2(I_DATA[3]),
        .I3(I_DATA[2]),
        .O(\wait_counter[23]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[23]_i_12 
       (.I0(I_DATA[5]),
        .I1(I_DATA[4]),
        .I2(I_DATA[7]),
        .I3(I_DATA[6]),
        .O(\wait_counter[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[23]_i_13 
       (.I0(I_DATA[22]),
        .I1(I_DATA[23]),
        .I2(I_DATA[21]),
        .I3(I_DATA[20]),
        .O(\wait_counter[23]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[23]_i_14 
       (.I0(I_DATA[17]),
        .I1(I_DATA[16]),
        .I2(I_DATA[19]),
        .I3(I_DATA[18]),
        .O(\wait_counter[23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[23]_i_2 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[23]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[23]),
        .O(wait_counter[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wait_counter[23]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\wait_counter[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \wait_counter[23]_i_4 
       (.I0(\O_ADDR[31]_i_12_n_0 ),
        .I1(\O_ADDR[31]_i_13_n_0 ),
        .I2(\wait_counter_reg_n_0_[3] ),
        .I3(\wait_counter_reg_n_0_[7] ),
        .I4(\wait_counter_reg_n_0_[2] ),
        .O(\wait_counter[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_counter[23]_i_5 
       (.I0(\O_ADDR[31]_i_10_n_0 ),
        .I1(\wait_counter_reg_n_0_[0] ),
        .I2(\wait_counter_reg_n_0_[4] ),
        .I3(\wait_counter_reg_n_0_[1] ),
        .I4(\wait_counter_reg_n_0_[5] ),
        .I5(\wait_counter_reg_n_0_[16] ),
        .O(\wait_counter[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wait_counter[23]_i_6 
       (.I0(O_CLEAR_REQ_i_2_n_0),
        .I1(I_DATA[26]),
        .I2(I_DATA[27]),
        .I3(I_DATA[24]),
        .I4(I_DATA[25]),
        .O(\wait_counter[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_counter[23]_i_7 
       (.I0(\wait_counter[23]_i_9_n_0 ),
        .I1(\wait_counter[23]_i_10_n_0 ),
        .I2(\wait_counter[23]_i_11_n_0 ),
        .I3(\wait_counter[23]_i_12_n_0 ),
        .I4(\wait_counter[23]_i_13_n_0 ),
        .I5(\wait_counter[23]_i_14_n_0 ),
        .O(\wait_counter[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF200F000)) 
    \wait_counter[23]_i_8 
       (.I0(\wait_counter[22]_i_2_n_0 ),
        .I1(\wait_counter[23]_i_7_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\wait_counter[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_counter[23]_i_9 
       (.I0(I_DATA[11]),
        .I1(I_DATA[10]),
        .I2(I_DATA[9]),
        .I3(I_DATA[8]),
        .O(\wait_counter[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[2]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[2]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[2]),
        .O(wait_counter[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[3]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[3]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[3]),
        .O(wait_counter[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[4]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[4]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[4]),
        .O(wait_counter[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[5]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[5]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[5]),
        .O(wait_counter[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[6]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[6]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[6]),
        .O(wait_counter[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[7]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[7]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[7]),
        .O(wait_counter[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wait_counter[8]_i_1 
       (.I0(\wait_counter[23]_i_6_n_0 ),
        .I1(I_DATA[8]),
        .I2(\wait_counter[23]_i_8_n_0 ),
        .I3(data0[8]),
        .O(wait_counter[8]));
  LUT6 #(
    .INIT(64'hAA0AFFFF88008800)) 
    \wait_counter[9]_i_1 
       (.I0(O_CLEAR_REQ_i_2_n_0),
        .I1(I_DATA[27]),
        .I2(\wait_counter[10]_i_2_n_0 ),
        .I3(\wait_counter[9]_i_2_n_0 ),
        .I4(\wait_counter[22]_i_4_n_0 ),
        .I5(data0[9]),
        .O(wait_counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \wait_counter[9]_i_2 
       (.I0(I_DATA[26]),
        .I1(I_DATA[25]),
        .I2(I_DATA[24]),
        .I3(I_DATA[9]),
        .I4(I_DATA[27]),
        .O(\wait_counter[9]_i_2_n_0 ));
  FDCE \wait_counter_reg[0] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[0]),
        .Q(\wait_counter_reg_n_0_[0] ));
  FDCE \wait_counter_reg[10] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[10]),
        .Q(\wait_counter_reg_n_0_[10] ));
  FDCE \wait_counter_reg[11] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[11]),
        .Q(\wait_counter_reg_n_0_[11] ));
  FDCE \wait_counter_reg[12] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[12]),
        .Q(\wait_counter_reg_n_0_[12] ));
  FDCE \wait_counter_reg[13] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[13]),
        .Q(\wait_counter_reg_n_0_[13] ));
  FDCE \wait_counter_reg[14] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[14]),
        .Q(\wait_counter_reg_n_0_[14] ));
  FDCE \wait_counter_reg[15] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[15]),
        .Q(\wait_counter_reg_n_0_[15] ));
  FDCE \wait_counter_reg[16] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[16]),
        .Q(\wait_counter_reg_n_0_[16] ));
  FDCE \wait_counter_reg[17] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[17]),
        .Q(\wait_counter_reg_n_0_[17] ));
  FDCE \wait_counter_reg[18] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[18]),
        .Q(\wait_counter_reg_n_0_[18] ));
  FDCE \wait_counter_reg[19] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[19]),
        .Q(\wait_counter_reg_n_0_[19] ));
  FDCE \wait_counter_reg[1] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[1]),
        .Q(\wait_counter_reg_n_0_[1] ));
  FDCE \wait_counter_reg[20] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[20]),
        .Q(\wait_counter_reg_n_0_[20] ));
  FDCE \wait_counter_reg[21] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[21]),
        .Q(\wait_counter_reg_n_0_[21] ));
  FDCE \wait_counter_reg[22] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[22]),
        .Q(\wait_counter_reg_n_0_[22] ));
  FDCE \wait_counter_reg[23] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[23]),
        .Q(\wait_counter_reg_n_0_[23] ));
  FDCE \wait_counter_reg[2] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[2]),
        .Q(\wait_counter_reg_n_0_[2] ));
  FDCE \wait_counter_reg[3] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[3]),
        .Q(\wait_counter_reg_n_0_[3] ));
  FDCE \wait_counter_reg[4] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[4]),
        .Q(\wait_counter_reg_n_0_[4] ));
  FDCE \wait_counter_reg[5] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[5]),
        .Q(\wait_counter_reg_n_0_[5] ));
  FDCE \wait_counter_reg[6] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[6]),
        .Q(\wait_counter_reg_n_0_[6] ));
  FDCE \wait_counter_reg[7] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[7]),
        .Q(\wait_counter_reg_n_0_[7] ));
  FDCE \wait_counter_reg[8] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[8]),
        .Q(\wait_counter_reg_n_0_[8] ));
  FDCE \wait_counter_reg[9] 
       (.C(clk),
        .CE(wait_counter_0),
        .CLR(\O_ADDR[31]_i_3_n_0 ),
        .D(wait_counter[9]),
        .Q(\wait_counter_reg_n_0_[9] ));
endmodule
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
