// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec 17 00:27:39 2024
// Host        : PortatilMarcos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/marco/OneDrive/Documentos/GitHub/ProyectoVHDLCarRechDan/project/project_1.sim/sim_1/impl/timing/xsim/TOP_tb_time_impl.v
// Design      : TOP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CompSecuencia
   (exito_s,
    fin_comparacion_s,
    E,
    out,
    clk_out,
    enable_CN_s,
    Q,
    \boton_anterior_reg[0]_i_7_0 ,
    \boton_anterior_reg[0]_i_8_0 ,
    \boton_anterior_reg[0]_i_9_0 ,
    boton_top_IBUF,
    fin_comparacion_s_reg_0,
    SR);
  output exito_s;
  output fin_comparacion_s;
  output [0:0]E;
  output [2:0]out;
  input clk_out;
  input enable_CN_s;
  input [2:0]Q;
  input \boton_anterior_reg[0]_i_7_0 ;
  input \boton_anterior_reg[0]_i_8_0 ;
  input \boton_anterior_reg[0]_i_9_0 ;
  input [1:4]boton_top_IBUF;
  input fin_comparacion_s_reg_0;
  input [0:0]SR;

  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:2]boton_anterior;
  wire \boton_anterior[0]_i_10_n_0 ;
  wire \boton_anterior[0]_i_11_n_0 ;
  wire \boton_anterior[0]_i_12_n_0 ;
  wire \boton_anterior[0]_i_13_n_0 ;
  wire \boton_anterior[0]_i_14_n_0 ;
  wire \boton_anterior[0]_i_15_n_0 ;
  wire \boton_anterior[0]_i_16_n_0 ;
  wire \boton_anterior[0]_i_17_n_0 ;
  wire \boton_anterior[0]_i_18_n_0 ;
  wire \boton_anterior[0]_i_19_n_0 ;
  wire \boton_anterior[0]_i_20_n_0 ;
  wire \boton_anterior[0]_i_21_n_0 ;
  wire \boton_anterior[0]_i_22_n_0 ;
  wire \boton_anterior[0]_i_23_n_0 ;
  wire \boton_anterior[0]_i_24_n_0 ;
  wire \boton_anterior[0]_i_25_n_0 ;
  wire \boton_anterior[0]_i_27_n_0 ;
  wire \boton_anterior[0]_i_29_n_0 ;
  wire \boton_anterior[0]_i_2_n_0 ;
  wire \boton_anterior[0]_i_30_n_0 ;
  wire \boton_anterior[0]_i_31_n_0 ;
  wire \boton_anterior[0]_i_32_n_0 ;
  wire \boton_anterior[0]_i_33_n_0 ;
  wire \boton_anterior[0]_i_34_n_0 ;
  wire \boton_anterior[0]_i_35_n_0 ;
  wire \boton_anterior[0]_i_37_n_0 ;
  wire \boton_anterior[0]_i_38_n_0 ;
  wire \boton_anterior[0]_i_39_n_0 ;
  wire \boton_anterior[0]_i_40_n_0 ;
  wire \boton_anterior[0]_i_41_n_0 ;
  wire \boton_anterior[0]_i_42_n_0 ;
  wire \boton_anterior[0]_i_6_n_0 ;
  wire \boton_anterior_reg[0]_i_7_0 ;
  wire \boton_anterior_reg[0]_i_8_0 ;
  wire \boton_anterior_reg[0]_i_9_0 ;
  wire [0:2]boton_pulsado_s;
  wire [1:4]boton_top_IBUF;
  wire clk_out;
  wire enable_CN_s;
  wire error_s;
  wire error_s15_out;
  wire error_s1__1;
  wire error_s_i_1_n_0;
  wire exito_s;
  wire exito_s_i_1_n_0;
  wire fin_comparacion_s;
  wire fin_comparacion_s_i_1_n_0;
  wire fin_comparacion_s_reg_0;
  wire \indice[0]_i_2_n_0 ;
  wire \indice[0]_i_3_n_0 ;
  wire [5:3]indice_reg;
  wire \indice_reg[0]_i_1_n_0 ;
  wire \indice_reg[0]_i_1_n_4 ;
  wire \indice_reg[0]_i_1_n_5 ;
  wire \indice_reg[0]_i_1_n_6 ;
  wire \indice_reg[0]_i_1_n_7 ;
  wire \indice_reg[4]_i_1_n_6 ;
  wire \indice_reg[4]_i_1_n_7 ;
  wire [2:0]out;
  wire [2:0]p_2_in;
  wire [2:0]\NLW_indice_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_indice_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_indice_reg[4]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_estado_actual[2]_i_1 
       (.I0(enable_CN_s),
        .I1(error_s),
        .I2(exito_s),
        .O(E));
  LUT6 #(
    .INIT(64'h11155555EEEAAAAA)) 
    \boton_anterior[0]_i_10 
       (.I0(indice_reg[4]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(indice_reg[3]),
        .I5(indice_reg[5]),
        .O(\boton_anterior[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEABBBF222A8880)) 
    \boton_anterior[0]_i_11 
       (.I0(\boton_anterior[0]_i_19_n_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(indice_reg[3]),
        .I5(\boton_anterior[0]_i_20_n_0 ),
        .O(\boton_anterior[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \boton_anterior[0]_i_12 
       (.I0(\boton_anterior[0]_i_21_n_0 ),
        .I1(\boton_anterior[0]_i_22_n_0 ),
        .I2(\boton_anterior[0]_i_23_n_0 ),
        .I3(\boton_anterior[0]_i_24_n_0 ),
        .I4(\boton_anterior[0]_i_25_n_0 ),
        .I5(\boton_anterior_reg[0]_i_7_0 ),
        .O(\boton_anterior[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h15EA)) 
    \boton_anterior[0]_i_13 
       (.I0(indice_reg[4]),
        .I1(out[2]),
        .I2(indice_reg[3]),
        .I3(indice_reg[5]),
        .O(\boton_anterior[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \boton_anterior[0]_i_14 
       (.I0(\boton_anterior[0]_i_27_n_0 ),
        .I1(out[2]),
        .I2(indice_reg[3]),
        .I3(\boton_anterior_reg[0]_i_8_0 ),
        .O(\boton_anterior[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \boton_anterior[0]_i_15 
       (.I0(\boton_anterior[0]_i_29_n_0 ),
        .I1(\boton_anterior[0]_i_30_n_0 ),
        .I2(\boton_anterior[0]_i_31_n_0 ),
        .I3(\boton_anterior[0]_i_32_n_0 ),
        .I4(\boton_anterior[0]_i_33_n_0 ),
        .I5(\boton_anterior[0]_i_34_n_0 ),
        .O(\boton_anterior[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h01115555FEEEAAAA)) 
    \boton_anterior[0]_i_16 
       (.I0(indice_reg[4]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(indice_reg[3]),
        .I5(indice_reg[5]),
        .O(\boton_anterior[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEABBB0222A888)) 
    \boton_anterior[0]_i_17 
       (.I0(\boton_anterior[0]_i_35_n_0 ),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(indice_reg[3]),
        .I5(\boton_anterior_reg[0]_i_9_0 ),
        .O(\boton_anterior[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \boton_anterior[0]_i_18 
       (.I0(\boton_anterior[0]_i_37_n_0 ),
        .I1(\boton_anterior[0]_i_38_n_0 ),
        .I2(\boton_anterior[0]_i_39_n_0 ),
        .I3(\boton_anterior[0]_i_40_n_0 ),
        .I4(\boton_anterior[0]_i_41_n_0 ),
        .I5(\boton_anterior[0]_i_42_n_0 ),
        .O(\boton_anterior[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2D2D0568A20D642D)) 
    \boton_anterior[0]_i_19 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\boton_anterior[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \boton_anterior[0]_i_2 
       (.I0(error_s1__1),
        .I1(error_s15_out),
        .I2(\boton_anterior[0]_i_6_n_0 ),
        .O(\boton_anterior[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10045451050482A2)) 
    \boton_anterior[0]_i_20 
       (.I0(out[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\boton_anterior[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000034C032510000)) 
    \boton_anterior[0]_i_21 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\boton_anterior[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000079A84BB86200)) 
    \boton_anterior[0]_i_22 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\boton_anterior[0]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h57FFA800)) 
    \boton_anterior[0]_i_23 
       (.I0(indice_reg[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(indice_reg[4]),
        .O(\boton_anterior[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000230000000000)) 
    \boton_anterior[0]_i_24 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\boton_anterior[0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \boton_anterior[0]_i_25 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(indice_reg[3]),
        .O(\boton_anterior[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h96960B9490263296)) 
    \boton_anterior[0]_i_27 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\boton_anterior[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000043E052280000)) 
    \boton_anterior[0]_i_29 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\boton_anterior[0]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \boton_anterior[0]_i_3 
       (.I0(boton_top_IBUF[4]),
        .I1(boton_top_IBUF[2]),
        .I2(boton_top_IBUF[1]),
        .I3(boton_top_IBUF[3]),
        .O(boton_pulsado_s[0]));
  LUT6 #(
    .INIT(64'h0AE2040005630EE0)) 
    \boton_anterior[0]_i_30 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(out[0]),
        .O(\boton_anterior[0]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \boton_anterior[0]_i_31 
       (.I0(indice_reg[3]),
        .I1(out[2]),
        .I2(indice_reg[4]),
        .O(\boton_anterior[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000C00)) 
    \boton_anterior[0]_i_32 
       (.I0(out[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\boton_anterior[0]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \boton_anterior[0]_i_33 
       (.I0(out[2]),
        .I1(indice_reg[3]),
        .O(\boton_anterior[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0808000000040C08)) 
    \boton_anterior[0]_i_34 
       (.I0(out[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\boton_anterior[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h2D2D211CC825192D)) 
    \boton_anterior[0]_i_35 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\boton_anterior[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00008A320B500000)) 
    \boton_anterior[0]_i_37 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\boton_anterior[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00B43E98004E4C00)) 
    \boton_anterior[0]_i_38 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\boton_anterior[0]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h557FAA80)) 
    \boton_anterior[0]_i_39 
       (.I0(indice_reg[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(indice_reg[4]),
        .O(\boton_anterior[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \boton_anterior[0]_i_4 
       (.I0(boton_pulsado_s[0]),
        .I1(p_2_in[2]),
        .I2(p_2_in[1]),
        .I3(boton_pulsado_s[1]),
        .I4(p_2_in[0]),
        .I5(boton_pulsado_s[2]),
        .O(error_s1__1));
  LUT6 #(
    .INIT(64'h0000A80000000000)) 
    \boton_anterior[0]_i_40 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\boton_anterior[0]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    \boton_anterior[0]_i_41 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(indice_reg[3]),
        .O(\boton_anterior[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00A8000000290000)) 
    \boton_anterior[0]_i_42 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\boton_anterior[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFAFA6AF2)) 
    \boton_anterior[0]_i_5 
       (.I0(boton_pulsado_s[1]),
        .I1(boton_anterior[1]),
        .I2(boton_pulsado_s[0]),
        .I3(boton_anterior[0]),
        .I4(boton_anterior[2]),
        .I5(boton_pulsado_s[2]),
        .O(error_s15_out));
  LUT3 #(
    .INIT(8'h01)) 
    \boton_anterior[0]_i_6 
       (.I0(p_2_in[2]),
        .I1(p_2_in[0]),
        .I2(p_2_in[1]),
        .O(\boton_anterior[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \boton_anterior[1]_i_1 
       (.I0(boton_top_IBUF[1]),
        .I1(boton_top_IBUF[2]),
        .I2(boton_top_IBUF[3]),
        .O(boton_pulsado_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \boton_anterior[2]_i_1 
       (.I0(boton_top_IBUF[1]),
        .I1(boton_top_IBUF[2]),
        .I2(boton_top_IBUF[3]),
        .O(boton_pulsado_s[2]));
  FDRE #(
    .INIT(1'b0)) 
    \boton_anterior_reg[0] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(boton_pulsado_s[0]),
        .Q(boton_anterior[0]),
        .R(SR));
  MUXF7 \boton_anterior_reg[0]_i_7 
       (.I0(\boton_anterior[0]_i_11_n_0 ),
        .I1(\boton_anterior[0]_i_12_n_0 ),
        .O(p_2_in[2]),
        .S(\boton_anterior[0]_i_10_n_0 ));
  MUXF7 \boton_anterior_reg[0]_i_8 
       (.I0(\boton_anterior[0]_i_14_n_0 ),
        .I1(\boton_anterior[0]_i_15_n_0 ),
        .O(p_2_in[1]),
        .S(\boton_anterior[0]_i_13_n_0 ));
  MUXF7 \boton_anterior_reg[0]_i_9 
       (.I0(\boton_anterior[0]_i_17_n_0 ),
        .I1(\boton_anterior[0]_i_18_n_0 ),
        .O(p_2_in[0]),
        .S(\boton_anterior[0]_i_16_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \boton_anterior_reg[1] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(boton_pulsado_s[1]),
        .Q(boton_anterior[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \boton_anterior_reg[2] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(boton_pulsado_s[2]),
        .Q(boton_anterior[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAABA0000)) 
    error_s_i_1
       (.I0(error_s),
        .I1(error_s1__1),
        .I2(error_s15_out),
        .I3(\boton_anterior[0]_i_6_n_0 ),
        .I4(fin_comparacion_s_reg_0),
        .O(error_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_s_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(error_s_i_1_n_0),
        .Q(error_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    exito_s_i_1
       (.I0(exito_s),
        .I1(\boton_anterior[0]_i_6_n_0 ),
        .I2(fin_comparacion_s_reg_0),
        .O(exito_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    exito_s_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(exito_s_i_1_n_0),
        .Q(exito_s),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBA0000)) 
    fin_comparacion_s_i_1
       (.I0(fin_comparacion_s),
        .I1(error_s1__1),
        .I2(error_s15_out),
        .I3(\boton_anterior[0]_i_6_n_0 ),
        .I4(fin_comparacion_s_reg_0),
        .O(fin_comparacion_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fin_comparacion_s_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(fin_comparacion_s_i_1_n_0),
        .Q(fin_comparacion_s),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_2 
       (.I0(out[1]),
        .O(\indice[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_3 
       (.I0(out[0]),
        .O(\indice[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \indice_reg[0] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(\indice_reg[0]_i_1_n_7 ),
        .Q(out[0]),
        .R(SR));
  CARRY4 \indice_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indice_reg[0]_i_1_n_0 ,\NLW_indice_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\indice_reg[0]_i_1_n_4 ,\indice_reg[0]_i_1_n_5 ,\indice_reg[0]_i_1_n_6 ,\indice_reg[0]_i_1_n_7 }),
        .S({indice_reg[3],out[2],\indice[0]_i_2_n_0 ,\indice[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \indice_reg[1] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(\indice_reg[0]_i_1_n_6 ),
        .Q(out[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \indice_reg[2] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(\indice_reg[0]_i_1_n_5 ),
        .Q(out[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \indice_reg[3] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(\indice_reg[0]_i_1_n_4 ),
        .Q(indice_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \indice_reg[4] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(\indice_reg[4]_i_1_n_7 ),
        .Q(indice_reg[4]),
        .R(SR));
  CARRY4 \indice_reg[4]_i_1 
       (.CI(\indice_reg[0]_i_1_n_0 ),
        .CO(\NLW_indice_reg[4]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indice_reg[4]_i_1_O_UNCONNECTED [3:2],\indice_reg[4]_i_1_n_6 ,\indice_reg[4]_i_1_n_7 }),
        .S({1'b0,1'b0,indice_reg[5:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \indice_reg[5] 
       (.C(clk_out),
        .CE(\boton_anterior[0]_i_2_n_0 ),
        .D(\indice_reg[4]_i_1_n_6 ),
        .Q(indice_reg[5]),
        .R(SR));
endmodule

module Control_Juego
   (enable_CN_s,
    Q,
    enable_CompS_s_reg_0,
    RESET_CN_s_reg_0,
    SR,
    clk_out,
    RESET_top_IBUF,
    nxt_state);
  output enable_CN_s;
  output [1:0]Q;
  output enable_CompS_s_reg_0;
  output RESET_CN_s_reg_0;
  output [0:0]SR;
  input clk_out;
  input RESET_top_IBUF;
  input nxt_state;

  wire \FSM_onehot_nxt_state[0]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state[1]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state[2]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg_n_0_[0] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[1] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[2] ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire [1:0]Q;
  wire RESET_CN_s;
  wire RESET_CN_s_reg_0;
  wire RESET_top_IBUF;
  wire [0:0]SR;
  wire clk_out;
  wire enable_CN_s;
  wire enable_CompS_s_reg_0;
  wire enable_ContS_s;
  wire nxt_state;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_nxt_state[0]_i_1 
       (.I0(Q[1]),
        .I1(nxt_state),
        .I2(\FSM_onehot_nxt_state_reg_n_0_[0] ),
        .O(\FSM_onehot_nxt_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_nxt_state[1]_i_1 
       (.I0(Q[0]),
        .I1(nxt_state),
        .I2(\FSM_onehot_nxt_state_reg_n_0_[1] ),
        .O(\FSM_onehot_nxt_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_nxt_state[2]_i_1 
       (.I0(enable_ContS_s),
        .I1(nxt_state),
        .I2(\FSM_onehot_nxt_state_reg_n_0_[2] ),
        .O(\FSM_onehot_nxt_state[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_nxt_state_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(RESET_top_IBUF),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "nivel:001,secuencia:010,comparar:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[0] ),
        .PRE(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "nivel:001,secuencia:010,comparar:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state_reg_n_0_[1] ),
        .Q(enable_ContS_s));
  (* FSM_ENCODED_STATES = "nivel:001,secuencia:010,comparar:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state_reg_n_0_[2] ),
        .Q(Q[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_estado_actual[2]_i_3 
       (.I0(RESET_CN_s),
        .O(RESET_CN_s_reg_0));
  FDCE #(
    .INIT(1'b1)) 
    RESET_CN_s_reg
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(1'b1),
        .Q(RESET_CN_s));
  LUT1 #(
    .INIT(2'h1)) 
    \boton_anterior[0]_i_1 
       (.I0(enable_CompS_s_reg_0),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    enable_CN_s_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(Q[0]),
        .Q(enable_CN_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    enable_CompS_s_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(Q[1]),
        .Q(enable_CompS_s_reg_0),
        .R(1'b0));
endmodule

module DivisorReloj
   (clk_out,
    CLK);
  output clk_out;
  input CLK;

  wire CLK;
  wire clk_out;
  wire clk_temp_i_1_n_0;
  wire [5:0]contador;
  wire \contador[0]_i_1_n_0 ;
  wire \contador[1]_i_1_n_0 ;
  wire \contador[2]_i_1_n_0 ;
  wire \contador[3]_i_1_n_0 ;
  wire \contador[4]_i_1_n_0 ;
  wire \contador[5]_i_1_n_0 ;
  wire \contador[5]_i_2_n_0 ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_temp_i_1
       (.I0(\contador[5]_i_1_n_0 ),
        .I1(clk_out),
        .O(clk_temp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_temp_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clk_temp_i_1_n_0),
        .Q(clk_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_1 
       (.I0(contador[0]),
        .O(\contador[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \contador[1]_i_1 
       (.I0(contador[0]),
        .I1(contador[1]),
        .O(\contador[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \contador[2]_i_1 
       (.I0(contador[0]),
        .I1(contador[1]),
        .I2(contador[2]),
        .O(\contador[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \contador[3]_i_1 
       (.I0(contador[1]),
        .I1(contador[0]),
        .I2(contador[2]),
        .I3(contador[3]),
        .O(\contador[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \contador[4]_i_1 
       (.I0(contador[2]),
        .I1(contador[0]),
        .I2(contador[1]),
        .I3(contador[3]),
        .I4(contador[4]),
        .O(\contador[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \contador[5]_i_1 
       (.I0(contador[3]),
        .I1(contador[1]),
        .I2(contador[2]),
        .I3(contador[4]),
        .I4(contador[0]),
        .I5(contador[5]),
        .O(\contador[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \contador[5]_i_2 
       (.I0(contador[3]),
        .I1(contador[1]),
        .I2(contador[0]),
        .I3(contador[2]),
        .I4(contador[4]),
        .I5(contador[5]),
        .O(\contador[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador[0]_i_1_n_0 ),
        .Q(contador[0]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador[1]_i_1_n_0 ),
        .Q(contador[1]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador[2]_i_1_n_0 ),
        .Q(contador[2]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador[3]_i_1_n_0 ),
        .Q(contador[3]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador[4]_i_1_n_0 ),
        .Q(contador[4]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\contador[5]_i_2_n_0 ),
        .Q(contador[5]),
        .R(\contador[5]_i_1_n_0 ));
endmodule

module EDGEDTCTR
   (nxt_state,
    \sreg_reg[0]_0 ,
    clk_out,
    Q,
    fin_comparacion_s);
  output nxt_state;
  input \sreg_reg[0]_0 ;
  input clk_out;
  input [1:0]Q;
  input fin_comparacion_s;

  wire [1:0]Q;
  wire clk_out;
  wire fin_comparacion_s;
  wire nxt_state;
  wire [2:0]sreg;
  wire \sreg_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFF000800080008)) 
    \FSM_onehot_nxt_state[2]_i_2 
       (.I0(Q[0]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(sreg[1]),
        .I4(Q[1]),
        .I5(fin_comparacion_s),
        .O(nxt_state));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\sreg_reg[0]_0 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "666a13e0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module TOP
   (CLK_top,
    RESET_top,
    accion_top,
    boton_top,
    display_top,
    enable_display_top,
    led_top);
  input CLK_top;
  input RESET_top;
  input accion_top;
  input [1:4]boton_top;
  output [6:0]display_top;
  output enable_display_top;
  output [4:1]led_top;

  wire CLK_top;
  wire CLK_top_IBUF;
  wire CLK_top_IBUF_BUFG;
  wire RESET_top;
  wire RESET_top_IBUF;
  wire accion_top;
  wire accion_top_IBUF;
  wire [1:4]boton_top;
  wire [1:4]boton_top_IBUF;
  wire clk_out;
  wire [6:0]display_top;
  wire [5:0]display_top_OBUF;
  wire enable_CN_s;
  wire enable_CN_s_0;
  wire enable_CompS_s;
  wire enable_display_top;
  wire estado_actual;
  wire [2:0]estado_actual__0;
  wire exito_s;
  wire fin_comparacion_s;
  wire [2:0]indice_reg;
  wire inst_Control_Juego_n_3;
  wire inst_Control_Juego_n_4;
  wire inst_Control_Juego_n_5;
  wire inst_controlador_nivel_n_10;
  wire inst_controlador_nivel_n_11;
  wire inst_controlador_nivel_n_3;
  wire inst_sync_n_0;
  wire [4:1]led_top;
  wire nxt_state;

initial begin
 $sdf_annotate("TOP_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK_top_IBUF_BUFG_inst
       (.I(CLK_top_IBUF),
        .O(CLK_top_IBUF_BUFG));
  IBUF CLK_top_IBUF_inst
       (.I(CLK_top),
        .O(CLK_top_IBUF));
  IBUF RESET_top_IBUF_inst
       (.I(RESET_top),
        .O(RESET_top_IBUF));
  IBUF accion_top_IBUF_inst
       (.I(accion_top),
        .O(accion_top_IBUF));
  IBUF \boton_top_IBUF[1]_inst 
       (.I(boton_top[1]),
        .O(boton_top_IBUF[1]));
  IBUF \boton_top_IBUF[2]_inst 
       (.I(boton_top[2]),
        .O(boton_top_IBUF[2]));
  IBUF \boton_top_IBUF[3]_inst 
       (.I(boton_top[3]),
        .O(boton_top_IBUF[3]));
  IBUF \boton_top_IBUF[4]_inst 
       (.I(boton_top[4]),
        .O(boton_top_IBUF[4]));
  OBUF \display_top_OBUF[0]_inst 
       (.I(display_top_OBUF[0]),
        .O(display_top[0]));
  OBUF \display_top_OBUF[1]_inst 
       (.I(display_top_OBUF[1]),
        .O(display_top[1]));
  OBUF \display_top_OBUF[2]_inst 
       (.I(display_top_OBUF[2]),
        .O(display_top[2]));
  OBUF \display_top_OBUF[3]_inst 
       (.I(display_top_OBUF[3]),
        .O(display_top[3]));
  OBUF \display_top_OBUF[4]_inst 
       (.I(display_top_OBUF[4]),
        .O(display_top[4]));
  OBUF \display_top_OBUF[5]_inst 
       (.I(display_top_OBUF[5]),
        .O(display_top[5]));
  OBUF \display_top_OBUF[6]_inst 
       (.I(display_top_OBUF[3]),
        .O(display_top[6]));
  OBUF enable_display_top_OBUF_inst
       (.I(1'b0),
        .O(enable_display_top));
  CompSecuencia inst_CompSecuencia
       (.E(estado_actual),
        .Q(estado_actual__0),
        .SR(inst_Control_Juego_n_5),
        .\boton_anterior_reg[0]_i_7_0 (inst_controlador_nivel_n_3),
        .\boton_anterior_reg[0]_i_8_0 (inst_controlador_nivel_n_11),
        .\boton_anterior_reg[0]_i_9_0 (inst_controlador_nivel_n_10),
        .boton_top_IBUF(boton_top_IBUF),
        .clk_out(clk_out),
        .enable_CN_s(enable_CN_s),
        .exito_s(exito_s),
        .fin_comparacion_s(fin_comparacion_s),
        .fin_comparacion_s_reg_0(inst_Control_Juego_n_3),
        .out(indice_reg));
  Control_Juego inst_Control_Juego
       (.Q({enable_CompS_s,enable_CN_s_0}),
        .RESET_CN_s_reg_0(inst_Control_Juego_n_4),
        .RESET_top_IBUF(RESET_top_IBUF),
        .SR(inst_Control_Juego_n_5),
        .clk_out(clk_out),
        .enable_CN_s(enable_CN_s),
        .enable_CompS_s_reg_0(inst_Control_Juego_n_3),
        .nxt_state(nxt_state));
  DivisorReloj inst_DivisorReloj
       (.CLK(CLK_top_IBUF_BUFG),
        .clk_out(clk_out));
  EDGEDTCTR inst_EDGEDTCTR
       (.Q({enable_CompS_s,enable_CN_s_0}),
        .clk_out(clk_out),
        .fin_comparacion_s(fin_comparacion_s),
        .nxt_state(nxt_state),
        .\sreg_reg[0]_0 (inst_sync_n_0));
  controlador_nivel inst_controlador_nivel
       (.E(estado_actual),
        .\FSM_sequential_estado_actual_reg[0]_0 (inst_controlador_nivel_n_3),
        .\FSM_sequential_estado_actual_reg[1]_0 (inst_controlador_nivel_n_10),
        .\FSM_sequential_estado_actual_reg[1]_1 (inst_controlador_nivel_n_11),
        .\FSM_sequential_estado_actual_reg[2]_0 (inst_Control_Juego_n_4),
        .Q(estado_actual__0),
        .clk_out(clk_out),
        .display_top_OBUF(display_top_OBUF),
        .exito_s(exito_s),
        .out(indice_reg));
  sync inst_sync
       (.accion_top_IBUF(accion_top_IBUF),
        .clk_out(clk_out),
        .\sreg_reg[0]_0 (inst_sync_n_0));
  OBUF \led_top_OBUF[1]_inst 
       (.I(1'b0),
        .O(led_top[1]));
  OBUF \led_top_OBUF[2]_inst 
       (.I(1'b0),
        .O(led_top[2]));
  OBUF \led_top_OBUF[3]_inst 
       (.I(1'b0),
        .O(led_top[3]));
  OBUF \led_top_OBUF[4]_inst 
       (.I(1'b0),
        .O(led_top[4]));
endmodule

module controlador_nivel
   (Q,
    \FSM_sequential_estado_actual_reg[0]_0 ,
    display_top_OBUF,
    \FSM_sequential_estado_actual_reg[1]_0 ,
    \FSM_sequential_estado_actual_reg[1]_1 ,
    E,
    clk_out,
    \FSM_sequential_estado_actual_reg[2]_0 ,
    out,
    exito_s);
  output [2:0]Q;
  output \FSM_sequential_estado_actual_reg[0]_0 ;
  output [5:0]display_top_OBUF;
  output \FSM_sequential_estado_actual_reg[1]_0 ;
  output \FSM_sequential_estado_actual_reg[1]_1 ;
  input [0:0]E;
  input clk_out;
  input \FSM_sequential_estado_actual_reg[2]_0 ;
  input [2:0]out;
  input exito_s;

  wire [0:0]E;
  wire \FSM_sequential_estado_actual[1]_i_1_n_0 ;
  wire \FSM_sequential_estado_actual_reg[0]_0 ;
  wire \FSM_sequential_estado_actual_reg[1]_0 ;
  wire \FSM_sequential_estado_actual_reg[1]_1 ;
  wire \FSM_sequential_estado_actual_reg[2]_0 ;
  wire [2:0]Q;
  wire clk_out;
  wire [5:0]display_top_OBUF;
  wire [2:0]estado_siguiente__0;
  wire exito_s;
  wire [2:0]out;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \FSM_sequential_estado_actual[0]_i_1 
       (.I0(Q[2]),
        .I1(exito_s),
        .I2(Q[0]),
        .O(estado_siguiente__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \FSM_sequential_estado_actual[1]_i_1 
       (.I0(exito_s),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\FSM_sequential_estado_actual[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE0A0)) 
    \FSM_sequential_estado_actual[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(exito_s),
        .I3(Q[0]),
        .O(estado_siguiente__0[2]));
  (* FSM_ENCODED_STATES = "estado_1:001,estado_2:010,estado_3:011,estado_4:100,estado_0:000,estado_5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_actual_reg[0] 
       (.C(clk_out),
        .CE(E),
        .CLR(\FSM_sequential_estado_actual_reg[2]_0 ),
        .D(estado_siguiente__0[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "estado_1:001,estado_2:010,estado_3:011,estado_4:100,estado_0:000,estado_5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_actual_reg[1] 
       (.C(clk_out),
        .CE(E),
        .CLR(\FSM_sequential_estado_actual_reg[2]_0 ),
        .D(\FSM_sequential_estado_actual[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "estado_1:001,estado_2:010,estado_3:011,estado_4:100,estado_0:000,estado_5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_actual_reg[2] 
       (.C(clk_out),
        .CE(E),
        .CLR(\FSM_sequential_estado_actual_reg[2]_0 ),
        .D(estado_siguiente__0[2]),
        .Q(Q[2]));
  LUT6 #(
    .INIT(64'h00000C1B00000000)) 
    \boton_anterior[0]_i_26 
       (.I0(Q[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_estado_actual_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000009B2454EB)) 
    \boton_anterior[0]_i_28 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[2]),
        .O(\FSM_sequential_estado_actual_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hEB00009B00240054)) 
    \boton_anterior[0]_i_36 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\FSM_sequential_estado_actual_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \display_top_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(display_top_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \display_top_OBUF[1]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(display_top_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h72)) 
    \display_top_OBUF[2]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(display_top_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \display_top_OBUF[4]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(display_top_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \display_top_OBUF[5]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(display_top_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_top_OBUF[6]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(display_top_OBUF[3]));
endmodule

module sync
   (\sreg_reg[0]_0 ,
    clk_out,
    accion_top_IBUF);
  output \sreg_reg[0]_0 ;
  input clk_out;
  input accion_top_IBUF;

  wire accion_top_IBUF;
  wire clk_out;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_name = "\\inst_sync/SYNC_OUT_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    SYNC_OUT_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_out),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(accion_top_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
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