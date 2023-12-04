// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Dec  3 14:34:20 2023
// Host        : DESKTOP-F0HV0IG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/archive/4waytrafficlightsignal/Hybrid/FixedSequenceTrafficLightStateMachine.sim/sim_1/impl/func/xsim/traffictb_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "d7a5fe12" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top
   (clk,
    rst,
    sensor,
    N_LED,
    NL_LED,
    E_LED,
    EL_LED,
    S_LED,
    SL_LED,
    W_LED,
    WL_LED,
    state_out);
  input clk;
  input rst;
  input [7:0]sensor;
  output [2:0]N_LED;
  output [2:0]NL_LED;
  output [2:0]E_LED;
  output [2:0]EL_LED;
  output [2:0]S_LED;
  output [2:0]SL_LED;
  output [2:0]W_LED;
  output [2:0]WL_LED;
  output [5:0]state_out;

  wire [2:0]EL_LED;
  wire [2:0]EL_LED_OBUF;
  wire [2:0]E_LED;
  wire [2:0]E_LED_OBUF;
  wire [2:0]NL_LED;
  wire [2:0]NL_LED_OBUF;
  wire [2:0]N_LED;
  wire [2:0]N_LED_OBUF;
  wire [2:0]SL_LED;
  wire [2:0]SL_LED_OBUF;
  wire [2:0]S_LED;
  wire [2:0]S_LED_OBUF;
  wire [2:0]WL_LED;
  wire [2:0]WL_LED_OBUF;
  wire [2:0]W_LED;
  wire [2:0]W_LED_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;
  wire [7:0]sensor;
  wire [7:0]sensor_IBUF;
  wire [5:0]state_out;
  wire [5:0]state_out_OBUF;

  traffic A
       (.AS(rst_IBUF),
        .\EL_out_reg[2]_0 (EL_LED_OBUF),
        .E_LED_OBUF(E_LED_OBUF),
        .NL_LED_OBUF(NL_LED_OBUF),
        .\NL_out_reg[2]_0 (N_LED_OBUF),
        .Q(S_LED_OBUF),
        .\SL_out_reg[2]_0 (SL_LED_OBUF),
        .\WL_out_reg[2]_0 (WL_LED_OBUF),
        .W_LED_OBUF(W_LED_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sensor_IBUF(sensor_IBUF),
        .\state_out_reg[5]_0 (state_out_OBUF));
  OBUF \EL_LED_OBUF[0]_inst 
       (.I(EL_LED_OBUF[0]),
        .O(EL_LED[0]));
  OBUF \EL_LED_OBUF[1]_inst 
       (.I(EL_LED_OBUF[1]),
        .O(EL_LED[1]));
  OBUF \EL_LED_OBUF[2]_inst 
       (.I(EL_LED_OBUF[2]),
        .O(EL_LED[2]));
  OBUF \E_LED_OBUF[0]_inst 
       (.I(E_LED_OBUF[0]),
        .O(E_LED[0]));
  OBUF \E_LED_OBUF[1]_inst 
       (.I(E_LED_OBUF[1]),
        .O(E_LED[1]));
  OBUF \E_LED_OBUF[2]_inst 
       (.I(E_LED_OBUF[2]),
        .O(E_LED[2]));
  OBUF \NL_LED_OBUF[0]_inst 
       (.I(NL_LED_OBUF[0]),
        .O(NL_LED[0]));
  OBUF \NL_LED_OBUF[1]_inst 
       (.I(NL_LED_OBUF[1]),
        .O(NL_LED[1]));
  OBUF \NL_LED_OBUF[2]_inst 
       (.I(NL_LED_OBUF[2]),
        .O(NL_LED[2]));
  OBUF \N_LED_OBUF[0]_inst 
       (.I(N_LED_OBUF[0]),
        .O(N_LED[0]));
  OBUF \N_LED_OBUF[1]_inst 
       (.I(N_LED_OBUF[1]),
        .O(N_LED[1]));
  OBUF \N_LED_OBUF[2]_inst 
       (.I(N_LED_OBUF[2]),
        .O(N_LED[2]));
  OBUF \SL_LED_OBUF[0]_inst 
       (.I(SL_LED_OBUF[0]),
        .O(SL_LED[0]));
  OBUF \SL_LED_OBUF[1]_inst 
       (.I(SL_LED_OBUF[1]),
        .O(SL_LED[1]));
  OBUF \SL_LED_OBUF[2]_inst 
       (.I(SL_LED_OBUF[2]),
        .O(SL_LED[2]));
  OBUF \S_LED_OBUF[0]_inst 
       (.I(S_LED_OBUF[0]),
        .O(S_LED[0]));
  OBUF \S_LED_OBUF[1]_inst 
       (.I(S_LED_OBUF[1]),
        .O(S_LED[1]));
  OBUF \S_LED_OBUF[2]_inst 
       (.I(S_LED_OBUF[2]),
        .O(S_LED[2]));
  OBUF \WL_LED_OBUF[0]_inst 
       (.I(WL_LED_OBUF[0]),
        .O(WL_LED[0]));
  OBUF \WL_LED_OBUF[1]_inst 
       (.I(WL_LED_OBUF[1]),
        .O(WL_LED[1]));
  OBUF \WL_LED_OBUF[2]_inst 
       (.I(WL_LED_OBUF[2]),
        .O(WL_LED[2]));
  OBUF \W_LED_OBUF[0]_inst 
       (.I(W_LED_OBUF[0]),
        .O(W_LED[0]));
  OBUF \W_LED_OBUF[1]_inst 
       (.I(W_LED_OBUF[1]),
        .O(W_LED[1]));
  OBUF \W_LED_OBUF[2]_inst 
       (.I(W_LED_OBUF[2]),
        .O(W_LED[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \sensor_IBUF[0]_inst 
       (.I(sensor[0]),
        .O(sensor_IBUF[0]));
  IBUF \sensor_IBUF[1]_inst 
       (.I(sensor[1]),
        .O(sensor_IBUF[1]));
  IBUF \sensor_IBUF[2]_inst 
       (.I(sensor[2]),
        .O(sensor_IBUF[2]));
  IBUF \sensor_IBUF[3]_inst 
       (.I(sensor[3]),
        .O(sensor_IBUF[3]));
  IBUF \sensor_IBUF[4]_inst 
       (.I(sensor[4]),
        .O(sensor_IBUF[4]));
  IBUF \sensor_IBUF[5]_inst 
       (.I(sensor[5]),
        .O(sensor_IBUF[5]));
  IBUF \sensor_IBUF[6]_inst 
       (.I(sensor[6]),
        .O(sensor_IBUF[6]));
  IBUF \sensor_IBUF[7]_inst 
       (.I(sensor[7]),
        .O(sensor_IBUF[7]));
  OBUF \state_out_OBUF[0]_inst 
       (.I(state_out_OBUF[0]),
        .O(state_out[0]));
  OBUF \state_out_OBUF[1]_inst 
       (.I(state_out_OBUF[1]),
        .O(state_out[1]));
  OBUF \state_out_OBUF[2]_inst 
       (.I(state_out_OBUF[2]),
        .O(state_out[2]));
  OBUF \state_out_OBUF[3]_inst 
       (.I(state_out_OBUF[3]),
        .O(state_out[3]));
  OBUF \state_out_OBUF[4]_inst 
       (.I(state_out_OBUF[4]),
        .O(state_out[4]));
  OBUF \state_out_OBUF[5]_inst 
       (.I(state_out_OBUF[5]),
        .O(state_out[5]));
endmodule

module traffic
   (NL_LED_OBUF,
    E_LED_OBUF,
    Q,
    W_LED_OBUF,
    \NL_out_reg[2]_0 ,
    \EL_out_reg[2]_0 ,
    \SL_out_reg[2]_0 ,
    \WL_out_reg[2]_0 ,
    \state_out_reg[5]_0 ,
    sensor_IBUF,
    clk_IBUF_BUFG,
    AS);
  output [2:0]NL_LED_OBUF;
  output [2:0]E_LED_OBUF;
  output [2:0]Q;
  output [2:0]W_LED_OBUF;
  output [2:0]\NL_out_reg[2]_0 ;
  output [2:0]\EL_out_reg[2]_0 ;
  output [2:0]\SL_out_reg[2]_0 ;
  output [2:0]\WL_out_reg[2]_0 ;
  output [5:0]\state_out_reg[5]_0 ;
  input [7:0]sensor_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]AS;

  wire [0:0]AS;
  wire \EL_out[0]_i_1_n_0 ;
  wire \EL_out[1]_i_1_n_0 ;
  wire \EL_out[2]_i_1_n_0 ;
  wire [2:0]\EL_out_reg[2]_0 ;
  wire [2:0]E_LED_OBUF;
  wire \E_out[0]_i_1_n_0 ;
  wire \E_out[1]_i_1_n_0 ;
  wire \E_out[2]_i_1_n_0 ;
  wire [2:0]NL_LED_OBUF;
  wire \NL_out[0]_i_1_n_0 ;
  wire \NL_out[1]_i_1_n_0 ;
  wire \NL_out[2]_i_1_n_0 ;
  wire [2:0]\NL_out_reg[2]_0 ;
  wire \N_out[0]_i_1_n_0 ;
  wire \N_out[1]_i_1_n_0 ;
  wire \N_out[1]_i_2_n_0 ;
  wire \N_out[2]_i_1_n_0 ;
  wire \N_out[2]_i_2_n_0 ;
  wire [2:0]Q;
  wire \SL_out[0]_i_1_n_0 ;
  wire \SL_out[1]_i_1_n_0 ;
  wire \SL_out[2]_i_1_n_0 ;
  wire [2:0]\SL_out_reg[2]_0 ;
  wire \S_out[0]_i_1_n_0 ;
  wire \S_out[1]_i_1_n_0 ;
  wire \S_out[2]_i_1_n_0 ;
  wire \S_out[2]_i_2_n_0 ;
  wire \WL_out[0]_i_1_n_0 ;
  wire \WL_out[1]_i_1_n_0 ;
  wire \WL_out[2]_i_1_n_0 ;
  wire [2:0]\WL_out_reg[2]_0 ;
  wire [2:0]W_LED_OBUF;
  wire \W_out[0]_i_1_n_0 ;
  wire \W_out[1]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire g0_b0__0_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__3_n_0;
  wire g0_b0__4_n_0;
  wire g0_b0__5_n_0;
  wire g0_b0__6_n_0;
  wire g0_b0_n_0;
  wire [5:0]next_state;
  wire \next_state_reg[0]_i_1_n_0 ;
  wire \next_state_reg[0]_i_2_n_0 ;
  wire \next_state_reg[0]_i_3_n_0 ;
  wire \next_state_reg[0]_i_4_n_0 ;
  wire \next_state_reg[0]_i_5_n_0 ;
  wire \next_state_reg[0]_i_6_n_0 ;
  wire \next_state_reg[0]_i_7_n_0 ;
  wire \next_state_reg[0]_i_8_n_0 ;
  wire \next_state_reg[1]_i_1_n_0 ;
  wire \next_state_reg[1]_i_2_n_0 ;
  wire \next_state_reg[1]_i_3_n_0 ;
  wire \next_state_reg[1]_i_4_n_0 ;
  wire \next_state_reg[1]_i_5_n_0 ;
  wire \next_state_reg[1]_i_6_n_0 ;
  wire \next_state_reg[2]_i_10_n_0 ;
  wire \next_state_reg[2]_i_11_n_0 ;
  wire \next_state_reg[2]_i_12_n_0 ;
  wire \next_state_reg[2]_i_13_n_0 ;
  wire \next_state_reg[2]_i_14_n_0 ;
  wire \next_state_reg[2]_i_1_n_0 ;
  wire \next_state_reg[2]_i_2_n_0 ;
  wire \next_state_reg[2]_i_3_n_0 ;
  wire \next_state_reg[2]_i_4_n_0 ;
  wire \next_state_reg[2]_i_5_n_0 ;
  wire \next_state_reg[2]_i_6_n_0 ;
  wire \next_state_reg[2]_i_7_n_0 ;
  wire \next_state_reg[2]_i_8_n_0 ;
  wire \next_state_reg[2]_i_9_n_0 ;
  wire \next_state_reg[3]_i_10_n_0 ;
  wire \next_state_reg[3]_i_1_n_0 ;
  wire \next_state_reg[3]_i_2_n_0 ;
  wire \next_state_reg[3]_i_3_n_0 ;
  wire \next_state_reg[3]_i_4_n_0 ;
  wire \next_state_reg[3]_i_5_n_0 ;
  wire \next_state_reg[3]_i_6_n_0 ;
  wire \next_state_reg[3]_i_7_n_0 ;
  wire \next_state_reg[3]_i_8_n_0 ;
  wire \next_state_reg[3]_i_9_n_0 ;
  wire \next_state_reg[4]_i_1_n_0 ;
  wire \next_state_reg[4]_i_2_n_0 ;
  wire \next_state_reg[4]_i_3_n_0 ;
  wire \next_state_reg[4]_i_4_n_0 ;
  wire \next_state_reg[4]_i_5_n_0 ;
  wire \next_state_reg[4]_i_6_n_0 ;
  wire \next_state_reg[4]_i_7_n_0 ;
  wire \next_state_reg[4]_i_8_n_0 ;
  wire \next_state_reg[4]_i_9_n_0 ;
  wire \next_state_reg[5]_i_1_n_0 ;
  wire \next_state_reg[5]_i_2_n_0 ;
  wire \next_state_reg[5]_i_3_n_0 ;
  wire \next_state_reg[5]_i_4_n_0 ;
  wire \next_state_reg[5]_i_5_n_0 ;
  wire \next_state_reg[5]_i_6_n_0 ;
  wire [5:0]present_state;
  wire [7:0]sensor_IBUF;
  wire \state_out[5]_i_1_n_0 ;
  wire [5:0]\state_out_reg[5]_0 ;
  wire timer1_carry__0_i_1_n_0;
  wire timer1_carry__0_i_2_n_0;
  wire timer1_carry__0_i_3_n_0;
  wire timer1_carry__0_i_4_n_0;
  wire timer1_carry__0_i_5_n_0;
  wire timer1_carry__0_i_6_n_0;
  wire timer1_carry__0_n_0;
  wire timer1_carry__1_i_1_n_0;
  wire timer1_carry__1_i_2_n_0;
  wire timer1_carry__1_i_3_n_0;
  wire timer1_carry__1_i_4_n_0;
  wire timer1_carry__1_n_0;
  wire timer1_carry__2_i_1_n_0;
  wire timer1_carry__2_i_2_n_0;
  wire timer1_carry__2_i_3_n_0;
  wire timer1_carry__2_i_4_n_0;
  wire timer1_carry__2_i_5_n_0;
  wire timer1_carry__2_i_6_n_0;
  wire timer1_carry__2_n_0;
  wire timer1_carry_i_1_n_0;
  wire timer1_carry_i_2_n_0;
  wire timer1_carry_i_3_n_0;
  wire timer1_carry_i_4_n_0;
  wire timer1_carry_i_5_n_0;
  wire timer1_carry_i_6_n_0;
  wire timer1_carry_i_7_n_0;
  wire timer1_carry_i_8_n_0;
  wire timer1_carry_n_0;
  wire \timer[0]_i_2_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[12]_i_2_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[16]_i_2_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[20]_i_2_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[24]_i_2_n_0 ;
  wire \timer[24]_i_3_n_0 ;
  wire \timer[24]_i_4_n_0 ;
  wire \timer[24]_i_5_n_0 ;
  wire \timer[28]_i_2_n_0 ;
  wire \timer[28]_i_3_n_0 ;
  wire \timer[28]_i_4_n_0 ;
  wire \timer[28]_i_5_n_0 ;
  wire \timer[4]_i_2_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[8]_i_2_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire [31:0]timer_reg;
  wire \timer_reg[0]_i_1_n_0 ;
  wire \timer_reg[0]_i_1_n_4 ;
  wire \timer_reg[0]_i_1_n_5 ;
  wire \timer_reg[0]_i_1_n_6 ;
  wire \timer_reg[0]_i_1_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[20]_i_1_n_0 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[24]_i_1_n_0 ;
  wire \timer_reg[24]_i_1_n_4 ;
  wire \timer_reg[24]_i_1_n_5 ;
  wire \timer_reg[24]_i_1_n_6 ;
  wire \timer_reg[24]_i_1_n_7 ;
  wire \timer_reg[28]_i_1_n_4 ;
  wire \timer_reg[28]_i_1_n_5 ;
  wire \timer_reg[28]_i_1_n_6 ;
  wire \timer_reg[28]_i_1_n_7 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire [2:0]NLW_timer1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_timer1_carry_O_UNCONNECTED;
  wire [2:0]NLW_timer1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_timer1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_timer1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_timer1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_timer1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_timer1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_timer_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAEFFAE00)) 
    \EL_out[0]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[0]),
        .O(\EL_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF100FFFF)) 
    \EL_out[1]_i_1 
       (.I0(present_state[3]),
        .I1(present_state[0]),
        .I2(present_state[2]),
        .I3(present_state[5]),
        .I4(present_state[1]),
        .O(\EL_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5F1F)) 
    \EL_out[2]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[2]),
        .I2(present_state[0]),
        .I3(present_state[3]),
        .O(\EL_out[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EL_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__2_n_0),
        .D(\EL_out[0]_i_1_n_0 ),
        .Q(\EL_out_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EL_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__2_n_0),
        .D(\EL_out[1]_i_1_n_0 ),
        .Q(\EL_out_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EL_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__2_n_0),
        .D(\EL_out[2]_i_1_n_0 ),
        .Q(\EL_out_reg[2]_0 [2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBFEF00)) 
    \E_out[0]_i_1 
       (.I0(present_state[5]),
        .I1(present_state[1]),
        .I2(present_state[4]),
        .I3(present_state[0]),
        .I4(present_state[2]),
        .O(\E_out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h883F)) 
    \E_out[1]_i_1 
       (.I0(present_state[3]),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .I3(present_state[2]),
        .O(\E_out[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \E_out[2]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[3]),
        .O(\E_out[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \E_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(\E_out[0]_i_1_n_0 ),
        .Q(E_LED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \E_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(\E_out[1]_i_1_n_0 ),
        .Q(E_LED_OBUF[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \E_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0_n_0),
        .D(\E_out[2]_i_1_n_0 ),
        .Q(E_LED_OBUF[2]),
        .S(g0_b0__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hD0CFDFFF)) 
    \NL_out[0]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[3]),
        .I2(present_state[4]),
        .I3(present_state[0]),
        .I4(present_state[2]),
        .O(\NL_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEF0CC33)) 
    \NL_out[1]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[3]),
        .I2(present_state[2]),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .O(\NL_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h77B8)) 
    \NL_out[2]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[2]),
        .I2(present_state[1]),
        .I3(present_state[3]),
        .O(\NL_out[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \NL_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__1_n_0),
        .D(\NL_out[0]_i_1_n_0 ),
        .Q(\NL_out_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \NL_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__1_n_0),
        .D(\NL_out[1]_i_1_n_0 ),
        .Q(\NL_out_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \NL_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__1_n_0),
        .D(\NL_out[2]_i_1_n_0 ),
        .Q(\NL_out_reg[2]_0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF3020)) 
    \N_out[0]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[0]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[1]),
        .O(\N_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8500010111151010)) 
    \N_out[1]_i_1 
       (.I0(present_state[5]),
        .I1(present_state[4]),
        .I2(present_state[3]),
        .I3(present_state[0]),
        .I4(present_state[2]),
        .I5(present_state[1]),
        .O(\N_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hCF004555)) 
    \N_out[1]_i_2 
       (.I0(present_state[4]),
        .I1(present_state[0]),
        .I2(present_state[3]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .O(\N_out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000006)) 
    \N_out[2]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[3]),
        .I2(present_state[4]),
        .I3(present_state[5]),
        .I4(present_state[2]),
        .O(\N_out[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \N_out[2]_i_2 
       (.I0(present_state[1]),
        .O(\N_out[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \N_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\N_out[1]_i_1_n_0 ),
        .D(\N_out[0]_i_1_n_0 ),
        .Q(NL_LED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \N_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\N_out[1]_i_1_n_0 ),
        .D(\N_out[1]_i_2_n_0 ),
        .Q(NL_LED_OBUF[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \N_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\N_out[1]_i_1_n_0 ),
        .D(\N_out[2]_i_2_n_0 ),
        .Q(NL_LED_OBUF[2]),
        .S(\N_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF002F2F)) 
    \SL_out[0]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[2]),
        .I2(present_state[4]),
        .I3(present_state[0]),
        .I4(present_state[3]),
        .O(\SL_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF3A0FFFF)) 
    \SL_out[1]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[0]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[1]),
        .O(\SL_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3AFF)) 
    \SL_out[2]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[2]),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .O(\SL_out[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SL_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(\SL_out[0]_i_1_n_0 ),
        .Q(\SL_out_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SL_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(\SL_out[1]_i_1_n_0 ),
        .Q(\SL_out_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SL_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__3_n_0),
        .D(\SL_out[2]_i_1_n_0 ),
        .Q(\SL_out_reg[2]_0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFAC8FFC8)) 
    \S_out[0]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[0]),
        .I2(present_state[3]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .O(\S_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB07F)) 
    \S_out[1]_i_1 
       (.I0(present_state[0]),
        .I1(present_state[3]),
        .I2(present_state[1]),
        .I3(present_state[2]),
        .O(\S_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8110111101150001)) 
    \S_out[2]_i_1 
       (.I0(present_state[5]),
        .I1(present_state[4]),
        .I2(present_state[3]),
        .I3(present_state[2]),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\S_out[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \S_out[2]_i_2 
       (.I0(present_state[3]),
        .I1(present_state[1]),
        .I2(present_state[4]),
        .O(\S_out[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\S_out[2]_i_1_n_0 ),
        .D(\S_out[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\S_out[2]_i_1_n_0 ),
        .D(\S_out[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\S_out[2]_i_1_n_0 ),
        .D(\S_out[2]_i_2_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8C00AFFF)) 
    \WL_out[0]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[3]),
        .I2(present_state[1]),
        .I3(present_state[2]),
        .I4(present_state[0]),
        .O(\WL_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCFB0)) 
    \WL_out[1]_i_1 
       (.I0(present_state[2]),
        .I1(present_state[1]),
        .I2(present_state[3]),
        .I3(present_state[0]),
        .O(\WL_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \WL_out[2]_i_1 
       (.I0(present_state[3]),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .I3(present_state[4]),
        .O(\WL_out[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WL_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(\WL_out[0]_i_1_n_0 ),
        .Q(\WL_out_reg[2]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \WL_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(\WL_out[1]_i_1_n_0 ),
        .Q(\WL_out_reg[2]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \WL_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__4_n_0),
        .D(\WL_out[2]_i_1_n_0 ),
        .Q(\WL_out_reg[2]_0 [2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBBFF0300)) 
    \W_out[0]_i_1 
       (.I0(present_state[5]),
        .I1(present_state[4]),
        .I2(present_state[0]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .O(\W_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF0EF)) 
    \W_out[1]_i_1 
       (.I0(present_state[4]),
        .I1(present_state[0]),
        .I2(present_state[2]),
        .I3(present_state[1]),
        .O(\W_out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \W_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(\W_out[0]_i_1_n_0 ),
        .Q(W_LED_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \W_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(\W_out[1]_i_1_n_0 ),
        .Q(W_LED_OBUF[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \W_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b0__0_n_0),
        .D(\N_out[2]_i_2_n_0 ),
        .Q(W_LED_OBUF[2]),
        .S(g0_b0__6_n_0));
  LUT6 #(
    .INIT(64'h8000024EEF000000)) 
    g0_b0
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h80009033BD000000)) 
    g0_b0__0
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000FDB118)) 
    g0_b0__1
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__1_n_0));
  LUT6 #(
    .INIT(64'h80006FCC42000001)) 
    g0_b0__2
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__2_n_0));
  LUT6 #(
    .INIT(64'h80000000006FCC42)) 
    g0_b0__3
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__3_n_0));
  LUT6 #(
    .INIT(64'h8000FDB110000000)) 
    g0_b0__4
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__4_n_0));
  LUT6 #(
    .INIT(64'h00000000EF000000)) 
    g0_b0__5
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__5_n_0));
  LUT6 #(
    .INIT(64'h00000000BD000000)) 
    g0_b0__6
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[2]),
        .I3(present_state[3]),
        .I4(present_state[4]),
        .I5(present_state[5]),
        .O(g0_b0__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.CLR(1'b0),
        .D(\next_state_reg[0]_i_1_n_0 ),
        .G(\next_state_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \next_state_reg[0]_i_1 
       (.I0(\next_state_reg[0]_i_2_n_0 ),
        .I1(\next_state_reg[0]_i_3_n_0 ),
        .I2(present_state[5]),
        .I3(\next_state_reg[0]_i_4_n_0 ),
        .I4(present_state[4]),
        .I5(\next_state_reg[0]_i_5_n_0 ),
        .O(\next_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444747774)) 
    \next_state_reg[0]_i_2 
       (.I0(\next_state_reg[4]_i_5_n_0 ),
        .I1(sensor_IBUF[7]),
        .I2(\next_state_reg[2]_i_6_n_0 ),
        .I3(sensor_IBUF[5]),
        .I4(\next_state_reg[0]_i_6_n_0 ),
        .I5(sensor_IBUF[6]),
        .O(\next_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00FF0F6FFFF000)) 
    \next_state_reg[0]_i_3 
       (.I0(sensor_IBUF[1]),
        .I1(sensor_IBUF[5]),
        .I2(present_state[3]),
        .I3(present_state[1]),
        .I4(present_state[2]),
        .I5(present_state[0]),
        .O(\next_state_reg[0]_i_3_n_0 ));
  MUXF7 \next_state_reg[0]_i_4 
       (.I0(\next_state_reg[0]_i_7_n_0 ),
        .I1(\next_state_reg[0]_i_8_n_0 ),
        .O(\next_state_reg[0]_i_4_n_0 ),
        .S(present_state[3]));
  LUT6 #(
    .INIT(64'hBDBDBDBD69686969)) 
    \next_state_reg[0]_i_5 
       (.I0(present_state[3]),
        .I1(present_state[2]),
        .I2(present_state[0]),
        .I3(sensor_IBUF[2]),
        .I4(sensor_IBUF[6]),
        .I5(present_state[1]),
        .O(\next_state_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[0]_i_6 
       (.I0(sensor_IBUF[1]),
        .I1(sensor_IBUF[0]),
        .O(\next_state_reg[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h06FF0F00)) 
    \next_state_reg[0]_i_7 
       (.I0(sensor_IBUF[3]),
        .I1(sensor_IBUF[7]),
        .I2(present_state[0]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .O(\next_state_reg[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h77778999)) 
    \next_state_reg[0]_i_8 
       (.I0(present_state[2]),
        .I1(present_state[0]),
        .I2(sensor_IBUF[0]),
        .I3(sensor_IBUF[4]),
        .I4(present_state[1]),
        .O(\next_state_reg[0]_i_8_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.CLR(1'b0),
        .D(\next_state_reg[1]_i_1_n_0 ),
        .G(\next_state_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \next_state_reg[1]_i_1 
       (.I0(\next_state_reg[1]_i_2_n_0 ),
        .I1(\next_state_reg[1]_i_3_n_0 ),
        .I2(present_state[5]),
        .I3(\next_state_reg[1]_i_4_n_0 ),
        .I4(present_state[4]),
        .I5(\next_state_reg[1]_i_5_n_0 ),
        .O(\next_state_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C5D0C08)) 
    \next_state_reg[1]_i_2 
       (.I0(sensor_IBUF[7]),
        .I1(sensor_IBUF[2]),
        .I2(sensor_IBUF[1]),
        .I3(sensor_IBUF[6]),
        .I4(\next_state_reg[1]_i_6_n_0 ),
        .O(\next_state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0B0FFFF00FFF0F0)) 
    \next_state_reg[1]_i_3 
       (.I0(sensor_IBUF[5]),
        .I1(sensor_IBUF[1]),
        .I2(present_state[3]),
        .I3(present_state[0]),
        .I4(present_state[2]),
        .I5(present_state[1]),
        .O(\next_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF003F303FF37FF37)) 
    \next_state_reg[1]_i_4 
       (.I0(\next_state_reg[2]_i_10_n_0 ),
        .I1(present_state[3]),
        .I2(present_state[0]),
        .I3(present_state[1]),
        .I4(\next_state_reg[2]_i_11_n_0 ),
        .I5(present_state[2]),
        .O(\next_state_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7373737309080909)) 
    \next_state_reg[1]_i_5 
       (.I0(present_state[3]),
        .I1(present_state[2]),
        .I2(present_state[0]),
        .I3(sensor_IBUF[6]),
        .I4(sensor_IBUF[2]),
        .I5(present_state[1]),
        .O(\next_state_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111FF110100EF01)) 
    \next_state_reg[1]_i_6 
       (.I0(sensor_IBUF[5]),
        .I1(sensor_IBUF[4]),
        .I2(sensor_IBUF[2]),
        .I3(sensor_IBUF[1]),
        .I4(sensor_IBUF[0]),
        .I5(sensor_IBUF[3]),
        .O(\next_state_reg[1]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.CLR(1'b0),
        .D(\next_state_reg[2]_i_1_n_0 ),
        .G(\next_state_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \next_state_reg[2]_i_1 
       (.I0(\next_state_reg[2]_i_2_n_0 ),
        .I1(\next_state_reg[2]_i_3_n_0 ),
        .I2(present_state[5]),
        .I3(\next_state_reg[2]_i_4_n_0 ),
        .I4(present_state[4]),
        .I5(\next_state_reg[2]_i_5_n_0 ),
        .O(\next_state_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[2]_i_10 
       (.I0(sensor_IBUF[0]),
        .I1(sensor_IBUF[4]),
        .O(\next_state_reg[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[2]_i_11 
       (.I0(sensor_IBUF[3]),
        .I1(sensor_IBUF[7]),
        .O(\next_state_reg[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFB55)) 
    \next_state_reg[2]_i_12 
       (.I0(present_state[1]),
        .I1(sensor_IBUF[2]),
        .I2(sensor_IBUF[7]),
        .I3(present_state[0]),
        .O(\next_state_reg[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \next_state_reg[2]_i_13 
       (.I0(present_state[0]),
        .I1(sensor_IBUF[6]),
        .I2(sensor_IBUF[3]),
        .I3(present_state[1]),
        .O(\next_state_reg[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000AABA)) 
    \next_state_reg[2]_i_14 
       (.I0(present_state[1]),
        .I1(sensor_IBUF[6]),
        .I2(sensor_IBUF[2]),
        .I3(present_state[0]),
        .I4(present_state[2]),
        .O(\next_state_reg[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \next_state_reg[2]_i_2 
       (.I0(sensor_IBUF[6]),
        .I1(\next_state_reg[2]_i_6_n_0 ),
        .I2(sensor_IBUF[5]),
        .I3(sensor_IBUF[7]),
        .O(\next_state_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \next_state_reg[2]_i_3 
       (.I0(\next_state_reg[2]_i_7_n_0 ),
        .I1(present_state[3]),
        .I2(\next_state_reg[2]_i_8_n_0 ),
        .I3(present_state[2]),
        .I4(\next_state_reg[2]_i_9_n_0 ),
        .O(\next_state_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h33FF003330FF3388)) 
    \next_state_reg[2]_i_4 
       (.I0(\next_state_reg[2]_i_10_n_0 ),
        .I1(present_state[3]),
        .I2(\next_state_reg[2]_i_11_n_0 ),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(\next_state_reg[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \next_state_reg[2]_i_5 
       (.I0(\next_state_reg[2]_i_12_n_0 ),
        .I1(present_state[2]),
        .I2(\next_state_reg[2]_i_13_n_0 ),
        .I3(present_state[3]),
        .I4(\next_state_reg[2]_i_14_n_0 ),
        .O(\next_state_reg[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \next_state_reg[2]_i_6 
       (.I0(sensor_IBUF[3]),
        .I1(sensor_IBUF[0]),
        .I2(sensor_IBUF[1]),
        .I3(sensor_IBUF[2]),
        .I4(sensor_IBUF[4]),
        .O(\next_state_reg[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF0F4FF0)) 
    \next_state_reg[2]_i_7 
       (.I0(sensor_IBUF[5]),
        .I1(sensor_IBUF[1]),
        .I2(present_state[2]),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .O(\next_state_reg[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB55)) 
    \next_state_reg[2]_i_8 
       (.I0(present_state[1]),
        .I1(sensor_IBUF[0]),
        .I2(sensor_IBUF[5]),
        .I3(present_state[0]),
        .O(\next_state_reg[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \next_state_reg[2]_i_9 
       (.I0(present_state[0]),
        .I1(sensor_IBUF[4]),
        .I2(sensor_IBUF[1]),
        .I3(present_state[1]),
        .O(\next_state_reg[2]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.CLR(1'b0),
        .D(\next_state_reg[3]_i_1_n_0 ),
        .G(\next_state_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \next_state_reg[3]_i_1 
       (.I0(\next_state_reg[3]_i_2_n_0 ),
        .I1(\next_state_reg[3]_i_3_n_0 ),
        .I2(present_state[5]),
        .I3(\next_state_reg[3]_i_4_n_0 ),
        .I4(present_state[4]),
        .I5(\next_state_reg[3]_i_5_n_0 ),
        .O(\next_state_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \next_state_reg[3]_i_10 
       (.I0(sensor_IBUF[6]),
        .I1(sensor_IBUF[3]),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .O(\next_state_reg[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hA6F7A6A2)) 
    \next_state_reg[3]_i_2 
       (.I0(sensor_IBUF[7]),
        .I1(sensor_IBUF[2]),
        .I2(sensor_IBUF[1]),
        .I3(sensor_IBUF[6]),
        .I4(\next_state_reg[3]_i_6_n_0 ),
        .O(\next_state_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF06F6FFFF06060)) 
    \next_state_reg[3]_i_3 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(present_state[3]),
        .I3(\next_state_reg[3]_i_7_n_0 ),
        .I4(present_state[2]),
        .I5(\next_state_reg[3]_i_8_n_0 ),
        .O(\next_state_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22FB)) 
    \next_state_reg[3]_i_4 
       (.I0(present_state[3]),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .I3(present_state[2]),
        .O(\next_state_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF5FC000C0F0C0)) 
    \next_state_reg[3]_i_5 
       (.I0(\next_state_reg[3]_i_9_n_0 ),
        .I1(\next_state_reg[3]_i_10_n_0 ),
        .I2(present_state[3]),
        .I3(present_state[2]),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(\next_state_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6767555562625055)) 
    \next_state_reg[3]_i_6 
       (.I0(sensor_IBUF[5]),
        .I1(sensor_IBUF[0]),
        .I2(sensor_IBUF[4]),
        .I3(sensor_IBUF[2]),
        .I4(sensor_IBUF[1]),
        .I5(sensor_IBUF[3]),
        .O(\next_state_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \next_state_reg[3]_i_7 
       (.I0(present_state[1]),
        .I1(sensor_IBUF[0]),
        .I2(sensor_IBUF[5]),
        .I3(present_state[0]),
        .O(\next_state_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF0DF)) 
    \next_state_reg[3]_i_8 
       (.I0(sensor_IBUF[1]),
        .I1(sensor_IBUF[4]),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .O(\next_state_reg[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[3]_i_9 
       (.I0(sensor_IBUF[7]),
        .I1(sensor_IBUF[2]),
        .O(\next_state_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[4] 
       (.CLR(1'b0),
        .D(\next_state_reg[4]_i_1_n_0 ),
        .G(\next_state_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[4]));
  MUXF7 \next_state_reg[4]_i_1 
       (.I0(\next_state_reg[4]_i_2_n_0 ),
        .I1(\next_state_reg[4]_i_3_n_0 ),
        .O(\next_state_reg[4]_i_1_n_0 ),
        .S(present_state[5]));
  LUT6 #(
    .INIT(64'h4AEA4AEAE5EAEAE0)) 
    \next_state_reg[4]_i_2 
       (.I0(present_state[4]),
        .I1(\next_state_reg[4]_i_4_n_0 ),
        .I2(present_state[3]),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .I5(present_state[2]),
        .O(\next_state_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \next_state_reg[4]_i_3 
       (.I0(\next_state_reg[4]_i_5_n_0 ),
        .I1(sensor_IBUF[7]),
        .I2(\next_state_reg[4]_i_6_n_0 ),
        .I3(sensor_IBUF[6]),
        .I4(present_state[4]),
        .I5(\next_state_reg[4]_i_7_n_0 ),
        .O(\next_state_reg[4]_i_3_n_0 ));
  MUXF7 \next_state_reg[4]_i_4 
       (.I0(\next_state_reg[4]_i_8_n_0 ),
        .I1(\next_state_reg[4]_i_9_n_0 ),
        .O(\next_state_reg[4]_i_4_n_0 ),
        .S(present_state[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[4]_i_5 
       (.I0(sensor_IBUF[2]),
        .I1(sensor_IBUF[1]),
        .O(\next_state_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF013301)) 
    \next_state_reg[4]_i_6 
       (.I0(sensor_IBUF[3]),
        .I1(sensor_IBUF[1]),
        .I2(sensor_IBUF[2]),
        .I3(sensor_IBUF[4]),
        .I4(sensor_IBUF[0]),
        .I5(sensor_IBUF[5]),
        .O(\next_state_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111000023225555)) 
    \next_state_reg[4]_i_7 
       (.I0(present_state[3]),
        .I1(present_state[2]),
        .I2(sensor_IBUF[1]),
        .I3(sensor_IBUF[4]),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(\next_state_reg[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEB00)) 
    \next_state_reg[4]_i_8 
       (.I0(present_state[0]),
        .I1(sensor_IBUF[6]),
        .I2(sensor_IBUF[3]),
        .I3(present_state[1]),
        .O(\next_state_reg[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \next_state_reg[4]_i_9 
       (.I0(present_state[1]),
        .I1(sensor_IBUF[2]),
        .I2(sensor_IBUF[7]),
        .I3(present_state[0]),
        .O(\next_state_reg[4]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[5] 
       (.CLR(1'b0),
        .D(\next_state_reg[5]_i_1_n_0 ),
        .G(\next_state_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[5]));
  MUXF7 \next_state_reg[5]_i_1 
       (.I0(\next_state_reg[5]_i_3_n_0 ),
        .I1(\next_state_reg[5]_i_4_n_0 ),
        .O(\next_state_reg[5]_i_1_n_0 ),
        .S(present_state[5]));
  LUT6 #(
    .INIT(64'hD5555555FFFFFFFF)) 
    \next_state_reg[5]_i_2 
       (.I0(present_state[4]),
        .I1(present_state[2]),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(present_state[3]),
        .I5(present_state[5]),
        .O(\next_state_reg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8084D200)) 
    \next_state_reg[5]_i_3 
       (.I0(present_state[4]),
        .I1(present_state[3]),
        .I2(present_state[0]),
        .I3(present_state[1]),
        .I4(present_state[2]),
        .O(\next_state_reg[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \next_state_reg[5]_i_4 
       (.I0(sensor_IBUF[6]),
        .I1(\next_state_reg[5]_i_5_n_0 ),
        .I2(sensor_IBUF[7]),
        .I3(present_state[4]),
        .I4(\next_state_reg[5]_i_6_n_0 ),
        .O(\next_state_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30300051)) 
    \next_state_reg[5]_i_5 
       (.I0(sensor_IBUF[3]),
        .I1(sensor_IBUF[0]),
        .I2(sensor_IBUF[1]),
        .I3(sensor_IBUF[2]),
        .I4(sensor_IBUF[4]),
        .I5(sensor_IBUF[5]),
        .O(\next_state_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBAA)) 
    \next_state_reg[5]_i_6 
       (.I0(present_state[2]),
        .I1(sensor_IBUF[4]),
        .I2(sensor_IBUF[1]),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .I5(present_state[3]),
        .O(\next_state_reg[5]_i_6_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \present_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(timer1_carry__2_n_0),
        .D(next_state[0]),
        .PRE(AS),
        .Q(present_state[0]));
  FDPE #(
    .INIT(1'b1)) 
    \present_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(timer1_carry__2_n_0),
        .D(next_state[1]),
        .PRE(AS),
        .Q(present_state[1]));
  FDPE #(
    .INIT(1'b1)) 
    \present_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(timer1_carry__2_n_0),
        .D(next_state[2]),
        .PRE(AS),
        .Q(present_state[2]));
  FDPE #(
    .INIT(1'b1)) 
    \present_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(timer1_carry__2_n_0),
        .D(next_state[3]),
        .PRE(AS),
        .Q(present_state[3]));
  FDPE #(
    .INIT(1'b1)) 
    \present_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(timer1_carry__2_n_0),
        .D(next_state[4]),
        .PRE(AS),
        .Q(present_state[4]));
  FDPE #(
    .INIT(1'b1)) 
    \present_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(timer1_carry__2_n_0),
        .D(next_state[5]),
        .PRE(AS),
        .Q(present_state[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \state_out[5]_i_1 
       (.I0(timer1_carry__2_n_0),
        .I1(AS),
        .O(\state_out[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_out[5]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(\state_out_reg[5]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_out[5]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(\state_out_reg[5]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_out[5]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(\state_out_reg[5]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_out[5]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(\state_out_reg[5]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_out[5]_i_1_n_0 ),
        .D(next_state[4]),
        .Q(\state_out_reg[5]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\state_out[5]_i_1_n_0 ),
        .D(next_state[5]),
        .Q(\state_out_reg[5]_0 [5]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 timer1_carry
       (.CI(1'b0),
        .CO({timer1_carry_n_0,NLW_timer1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({timer1_carry_i_1_n_0,timer1_carry_i_2_n_0,timer1_carry_i_3_n_0,timer1_carry_i_4_n_0}),
        .O(NLW_timer1_carry_O_UNCONNECTED[3:0]),
        .S({timer1_carry_i_5_n_0,timer1_carry_i_6_n_0,timer1_carry_i_7_n_0,timer1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 timer1_carry__0
       (.CI(timer1_carry_n_0),
        .CO({timer1_carry__0_n_0,NLW_timer1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,timer1_carry__0_i_1_n_0,timer1_carry__0_i_2_n_0,timer_reg[9]}),
        .O(NLW_timer1_carry__0_O_UNCONNECTED[3:0]),
        .S({timer1_carry__0_i_3_n_0,timer1_carry__0_i_4_n_0,timer1_carry__0_i_5_n_0,timer1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    timer1_carry__0_i_1
       (.I0(timer_reg[12]),
        .I1(timer_reg[13]),
        .O(timer1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timer1_carry__0_i_2
       (.I0(timer_reg[10]),
        .I1(timer_reg[11]),
        .O(timer1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timer1_carry__0_i_3
       (.I0(timer_reg[14]),
        .I1(timer_reg[15]),
        .O(timer1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__0_i_4
       (.I0(timer_reg[13]),
        .I1(timer_reg[12]),
        .O(timer1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry__0_i_5
       (.I0(timer_reg[10]),
        .I1(timer_reg[11]),
        .O(timer1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__0_i_6
       (.I0(timer_reg[8]),
        .I1(timer_reg[9]),
        .O(timer1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 timer1_carry__1
       (.CI(timer1_carry__0_n_0),
        .CO({timer1_carry__1_n_0,NLW_timer1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,timer_reg[19],timer_reg[17]}),
        .O(NLW_timer1_carry__1_O_UNCONNECTED[3:0]),
        .S({timer1_carry__1_i_1_n_0,timer1_carry__1_i_2_n_0,timer1_carry__1_i_3_n_0,timer1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    timer1_carry__1_i_1
       (.I0(timer_reg[22]),
        .I1(timer_reg[23]),
        .O(timer1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    timer1_carry__1_i_2
       (.I0(timer_reg[20]),
        .I1(timer_reg[21]),
        .O(timer1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__1_i_3
       (.I0(timer_reg[18]),
        .I1(timer_reg[19]),
        .O(timer1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__1_i_4
       (.I0(timer_reg[16]),
        .I1(timer_reg[17]),
        .O(timer1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 timer1_carry__2
       (.CI(timer1_carry__1_n_0),
        .CO({timer1_carry__2_n_0,NLW_timer1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({timer1_carry__2_i_1_n_0,timer1_carry__2_i_2_n_0,timer_reg[27],timer_reg[25]}),
        .O(NLW_timer1_carry__2_O_UNCONNECTED[3:0]),
        .S({timer1_carry__2_i_3_n_0,timer1_carry__2_i_4_n_0,timer1_carry__2_i_5_n_0,timer1_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__2_i_1
       (.I0(timer_reg[30]),
        .I1(timer_reg[31]),
        .O(timer1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timer1_carry__2_i_2
       (.I0(timer_reg[28]),
        .I1(timer_reg[29]),
        .O(timer1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry__2_i_3
       (.I0(timer_reg[30]),
        .I1(timer_reg[31]),
        .O(timer1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry__2_i_4
       (.I0(timer_reg[28]),
        .I1(timer_reg[29]),
        .O(timer1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__2_i_5
       (.I0(timer_reg[26]),
        .I1(timer_reg[27]),
        .O(timer1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    timer1_carry__2_i_6
       (.I0(timer_reg[24]),
        .I1(timer_reg[25]),
        .O(timer1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timer1_carry_i_1
       (.I0(timer_reg[6]),
        .I1(timer_reg[7]),
        .O(timer1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timer1_carry_i_2
       (.I0(timer_reg[4]),
        .I1(timer_reg[5]),
        .O(timer1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timer1_carry_i_3
       (.I0(timer_reg[2]),
        .I1(timer_reg[3]),
        .O(timer1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    timer1_carry_i_4
       (.I0(timer_reg[0]),
        .I1(timer_reg[1]),
        .O(timer1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry_i_5
       (.I0(timer_reg[6]),
        .I1(timer_reg[7]),
        .O(timer1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry_i_6
       (.I0(timer_reg[4]),
        .I1(timer_reg[5]),
        .O(timer1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry_i_7
       (.I0(timer_reg[2]),
        .I1(timer_reg[3]),
        .O(timer1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    timer1_carry_i_8
       (.I0(timer_reg[0]),
        .I1(timer_reg[1]),
        .O(timer1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[0]_i_2 
       (.I0(timer_reg[0]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[0]_i_3 
       (.I0(timer_reg[3]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[0]_i_4 
       (.I0(timer_reg[2]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[0]_i_5 
       (.I0(timer_reg[1]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[0]_i_6 
       (.I0(timer_reg[0]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[12]_i_2 
       (.I0(timer_reg[15]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[12]_i_3 
       (.I0(timer_reg[14]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[12]_i_4 
       (.I0(timer_reg[13]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[12]_i_5 
       (.I0(timer_reg[12]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[16]_i_2 
       (.I0(timer_reg[19]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[16]_i_3 
       (.I0(timer_reg[18]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[16]_i_4 
       (.I0(timer_reg[17]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[16]_i_5 
       (.I0(timer_reg[16]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[20]_i_2 
       (.I0(timer_reg[23]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[20]_i_3 
       (.I0(timer_reg[22]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[20]_i_4 
       (.I0(timer_reg[21]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[20]_i_5 
       (.I0(timer_reg[20]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[24]_i_2 
       (.I0(timer_reg[27]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[24]_i_3 
       (.I0(timer_reg[26]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[24]_i_4 
       (.I0(timer_reg[25]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[24]_i_5 
       (.I0(timer_reg[24]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[28]_i_2 
       (.I0(timer_reg[31]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[28]_i_3 
       (.I0(timer_reg[30]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[28]_i_4 
       (.I0(timer_reg[29]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[28]_i_5 
       (.I0(timer_reg[28]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[4]_i_2 
       (.I0(timer_reg[7]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[4]_i_3 
       (.I0(timer_reg[6]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[4]_i_4 
       (.I0(timer_reg[5]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[4]_i_5 
       (.I0(timer_reg[4]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[8]_i_2 
       (.I0(timer_reg[11]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[8]_i_3 
       (.I0(timer_reg[10]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[8]_i_4 
       (.I0(timer_reg[9]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[8]_i_5 
       (.I0(timer_reg[8]),
        .I1(timer1_carry__2_n_0),
        .O(\timer[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[0]_i_1_n_7 ),
        .Q(timer_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_1_n_0 ,\NLW_timer_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\timer[0]_i_2_n_0 }),
        .O({\timer_reg[0]_i_1_n_4 ,\timer_reg[0]_i_1_n_5 ,\timer_reg[0]_i_1_n_6 ,\timer_reg[0]_i_1_n_7 }),
        .S({\timer[0]_i_3_n_0 ,\timer[0]_i_4_n_0 ,\timer[0]_i_5_n_0 ,\timer[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\NLW_timer_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S({\timer[12]_i_2_n_0 ,\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\NLW_timer_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({\timer[16]_i_2_n_0 ,\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[0]_i_1_n_6 ),
        .Q(timer_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\timer_reg[20]_i_1_n_0 ,\NLW_timer_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S({\timer[20]_i_2_n_0 ,\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 ,\timer[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[24]_i_1_n_7 ),
        .Q(timer_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[24]_i_1 
       (.CI(\timer_reg[20]_i_1_n_0 ),
        .CO({\timer_reg[24]_i_1_n_0 ,\NLW_timer_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[24]_i_1_n_4 ,\timer_reg[24]_i_1_n_5 ,\timer_reg[24]_i_1_n_6 ,\timer_reg[24]_i_1_n_7 }),
        .S({\timer[24]_i_2_n_0 ,\timer[24]_i_3_n_0 ,\timer[24]_i_4_n_0 ,\timer[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[28]_i_1_n_7 ),
        .Q(timer_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[28]_i_1 
       (.CI(\timer_reg[24]_i_1_n_0 ),
        .CO(\NLW_timer_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[28]_i_1_n_4 ,\timer_reg[28]_i_1_n_5 ,\timer_reg[28]_i_1_n_6 ,\timer_reg[28]_i_1_n_7 }),
        .S({\timer[28]_i_2_n_0 ,\timer[28]_i_3_n_0 ,\timer[28]_i_4_n_0 ,\timer[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[0]_i_1_n_5 ),
        .Q(timer_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[28]_i_1_n_4 ),
        .Q(timer_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[0]_i_1_n_4 ),
        .Q(timer_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_1_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\NLW_timer_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\NLW_timer_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S({\timer[8]_i_2_n_0 ,\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]));
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
