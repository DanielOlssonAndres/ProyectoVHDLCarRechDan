// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec 17 00:11:22 2024
// Host        : PortatilMarcos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/marco/OneDrive/Documentos/GitHub/ProyectoVHDLCarRechDan/project/project_1.sim/sim_1/impl/timing/xsim/ALL_tb_time_impl.v
// Design      : TOP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CompSecuencia
   (\indice_reg[2]_0 ,
    exito_s,
    fin_comparacion_s,
    E,
    clk_out_BUFG,
    exito_s_reg_0,
    estado_actual,
    \boton_anterior_reg[0]_i_6_0 ,
    \boton_anterior_reg[0]_i_4_0 ,
    \boton_anterior_reg[0]_i_5_0 ,
    boton_top_IBUF);
  output [2:0]\indice_reg[2]_0 ;
  output exito_s;
  output fin_comparacion_s;
  output [0:0]E;
  input clk_out_BUFG;
  input exito_s_reg_0;
  input [2:0]estado_actual;
  input \boton_anterior_reg[0]_i_6_0 ;
  input \boton_anterior_reg[0]_i_4_0 ;
  input \boton_anterior_reg[0]_i_5_0 ;
  input [1:4]boton_top_IBUF;

  wire [0:0]E;
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
  wire \boton_anterior[0]_i_1_n_0 ;
  wire \boton_anterior[0]_i_20_n_0 ;
  wire \boton_anterior[0]_i_21_n_0 ;
  wire \boton_anterior[0]_i_22_n_0 ;
  wire \boton_anterior[0]_i_23_n_0 ;
  wire \boton_anterior[0]_i_24_n_0 ;
  wire \boton_anterior[0]_i_25_n_0 ;
  wire \boton_anterior[0]_i_26_n_0 ;
  wire \boton_anterior[0]_i_28_n_0 ;
  wire \boton_anterior[0]_i_29_n_0 ;
  wire \boton_anterior[0]_i_30_n_0 ;
  wire \boton_anterior[0]_i_31_n_0 ;
  wire \boton_anterior[0]_i_32_n_0 ;
  wire \boton_anterior[0]_i_33_n_0 ;
  wire \boton_anterior[0]_i_34_n_0 ;
  wire \boton_anterior[0]_i_35_n_0 ;
  wire \boton_anterior[0]_i_36_n_0 ;
  wire \boton_anterior[0]_i_37_n_0 ;
  wire \boton_anterior[0]_i_38_n_0 ;
  wire \boton_anterior[0]_i_39_n_0 ;
  wire \boton_anterior[0]_i_40_n_0 ;
  wire \boton_anterior[0]_i_9_n_0 ;
  wire \boton_anterior_reg[0]_i_4_0 ;
  wire \boton_anterior_reg[0]_i_5_0 ;
  wire \boton_anterior_reg[0]_i_6_0 ;
  wire [0:2]boton_pulsado_s;
  wire [1:4]boton_top_IBUF;
  wire clk_out_BUFG;
  wire error_s;
  wire error_s_i_1_n_0;
  wire [2:0]estado_actual;
  wire exito_s;
  wire exito_s_i_1_n_0;
  wire exito_s_reg_0;
  wire fin_comparacion_s;
  wire fin_comparacion_s0;
  wire fin_comparacion_s1__1;
  wire fin_comparacion_s3__0;
  wire fin_comparacion_s41_in;
  wire fin_comparacion_s4__36;
  wire fin_comparacion_s_i_1_n_0;
  wire \indice[0]_i_2__0_n_0 ;
  wire \indice[0]_i_3__0_n_0 ;
  wire [5:3]indice_reg;
  wire \indice_reg[0]_i_1__0_n_0 ;
  wire \indice_reg[0]_i_1__0_n_4 ;
  wire \indice_reg[0]_i_1__0_n_5 ;
  wire \indice_reg[0]_i_1__0_n_6 ;
  wire \indice_reg[0]_i_1__0_n_7 ;
  wire [2:0]\indice_reg[2]_0 ;
  wire \indice_reg[4]_i_1__0_n_6 ;
  wire \indice_reg[4]_i_1__0_n_7 ;
  wire [2:0]\NLW_indice_reg[0]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_indice_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_indice_reg[4]_i_1__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_estado_siguiente_reg[2]_i_2 
       (.I0(exito_s),
        .I1(error_s),
        .O(E));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \boton_anterior[0]_i_1 
       (.I0(fin_comparacion_s4__36),
        .I1(fin_comparacion_s3__0),
        .I2(fin_comparacion_s41_in),
        .I3(fin_comparacion_s1__1),
        .I4(fin_comparacion_s0),
        .O(\boton_anterior[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \boton_anterior[0]_i_10 
       (.I0(\boton_anterior[0]_i_18_n_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(indice_reg[3]),
        .I3(\boton_anterior_reg[0]_i_4_0 ),
        .O(\boton_anterior[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \boton_anterior[0]_i_11 
       (.I0(\boton_anterior[0]_i_20_n_0 ),
        .I1(\boton_anterior[0]_i_21_n_0 ),
        .I2(\boton_anterior[0]_i_22_n_0 ),
        .I3(\boton_anterior[0]_i_23_n_0 ),
        .I4(\boton_anterior[0]_i_24_n_0 ),
        .I5(\boton_anterior[0]_i_25_n_0 ),
        .O(\boton_anterior[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h01115555FEEEAAAA)) 
    \boton_anterior[0]_i_12 
       (.I0(indice_reg[4]),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(\indice_reg[2]_0 [1]),
        .I4(indice_reg[3]),
        .I5(indice_reg[5]),
        .O(\boton_anterior[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEABBB0222A888)) 
    \boton_anterior[0]_i_13 
       (.I0(\boton_anterior[0]_i_26_n_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(\indice_reg[2]_0 [1]),
        .I4(indice_reg[3]),
        .I5(\boton_anterior_reg[0]_i_5_0 ),
        .O(\boton_anterior[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \boton_anterior[0]_i_14 
       (.I0(\boton_anterior[0]_i_28_n_0 ),
        .I1(\boton_anterior[0]_i_29_n_0 ),
        .I2(\boton_anterior[0]_i_30_n_0 ),
        .I3(\boton_anterior[0]_i_31_n_0 ),
        .I4(\boton_anterior[0]_i_32_n_0 ),
        .I5(\boton_anterior[0]_i_33_n_0 ),
        .O(\boton_anterior[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h11155555EEEAAAAA)) 
    \boton_anterior[0]_i_15 
       (.I0(indice_reg[4]),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(\indice_reg[2]_0 [0]),
        .I4(indice_reg[3]),
        .I5(indice_reg[5]),
        .O(\boton_anterior[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEEEABBBF222A8880)) 
    \boton_anterior[0]_i_16 
       (.I0(\boton_anterior[0]_i_34_n_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(\indice_reg[2]_0 [0]),
        .I4(indice_reg[3]),
        .I5(\boton_anterior[0]_i_35_n_0 ),
        .O(\boton_anterior[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \boton_anterior[0]_i_17 
       (.I0(\boton_anterior[0]_i_36_n_0 ),
        .I1(\boton_anterior[0]_i_37_n_0 ),
        .I2(\boton_anterior[0]_i_38_n_0 ),
        .I3(\boton_anterior[0]_i_39_n_0 ),
        .I4(\boton_anterior[0]_i_40_n_0 ),
        .I5(\boton_anterior_reg[0]_i_6_0 ),
        .O(\boton_anterior[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h96960B9490263296)) 
    \boton_anterior[0]_i_18 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\boton_anterior[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \boton_anterior[0]_i_2 
       (.I0(boton_top_IBUF[4]),
        .I1(boton_top_IBUF[2]),
        .I2(boton_top_IBUF[1]),
        .I3(boton_top_IBUF[3]),
        .O(boton_pulsado_s[0]));
  LUT6 #(
    .INIT(64'h000043E052280000)) 
    \boton_anterior[0]_i_20 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\boton_anterior[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0AE2040005630EE0)) 
    \boton_anterior[0]_i_21 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(estado_actual[1]),
        .I3(estado_actual[2]),
        .I4(estado_actual[0]),
        .I5(\indice_reg[2]_0 [0]),
        .O(\boton_anterior[0]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \boton_anterior[0]_i_22 
       (.I0(indice_reg[3]),
        .I1(\indice_reg[2]_0 [2]),
        .I2(indice_reg[4]),
        .O(\boton_anterior[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000C00)) 
    \boton_anterior[0]_i_23 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .I3(estado_actual[0]),
        .I4(\indice_reg[2]_0 [0]),
        .I5(\indice_reg[2]_0 [1]),
        .O(\boton_anterior[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \boton_anterior[0]_i_24 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(indice_reg[3]),
        .O(\boton_anterior[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0808000000040C08)) 
    \boton_anterior[0]_i_25 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .I3(estado_actual[0]),
        .I4(\indice_reg[2]_0 [0]),
        .I5(\indice_reg[2]_0 [1]),
        .O(\boton_anterior[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2D2D211CC825192D)) 
    \boton_anterior[0]_i_26 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\boton_anterior[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00008A320B500000)) 
    \boton_anterior[0]_i_28 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\boton_anterior[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00B43E98004E4C00)) 
    \boton_anterior[0]_i_29 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[1]),
        .I4(estado_actual[2]),
        .I5(estado_actual[0]),
        .O(\boton_anterior[0]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h557FAA80)) 
    \boton_anterior[0]_i_30 
       (.I0(indice_reg[3]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(\indice_reg[2]_0 [2]),
        .I4(indice_reg[4]),
        .O(\boton_anterior[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000A80000000000)) 
    \boton_anterior[0]_i_31 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[2]),
        .I4(estado_actual[1]),
        .I5(estado_actual[0]),
        .O(\boton_anterior[0]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    \boton_anterior[0]_i_32 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(indice_reg[3]),
        .O(\boton_anterior[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00A8000000290000)) 
    \boton_anterior[0]_i_33 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[1]),
        .I4(estado_actual[2]),
        .I5(estado_actual[0]),
        .O(\boton_anterior[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h2D2D0568A20D642D)) 
    \boton_anterior[0]_i_34 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\boton_anterior[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h10045451050482A2)) 
    \boton_anterior[0]_i_35 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .I3(estado_actual[0]),
        .I4(\indice_reg[2]_0 [1]),
        .I5(\indice_reg[2]_0 [0]),
        .O(\boton_anterior[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h000034C032510000)) 
    \boton_anterior[0]_i_36 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\boton_anterior[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000079A84BB86200)) 
    \boton_anterior[0]_i_37 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\boton_anterior[0]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h57FFA800)) 
    \boton_anterior[0]_i_38 
       (.I0(indice_reg[3]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(\indice_reg[2]_0 [2]),
        .I4(indice_reg[4]),
        .O(\boton_anterior[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000230000000000)) 
    \boton_anterior[0]_i_39 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\boton_anterior[0]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \boton_anterior[0]_i_40 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(indice_reg[3]),
        .O(\boton_anterior[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \boton_anterior[0]_i_7 
       (.I0(boton_pulsado_s[0]),
        .I1(fin_comparacion_s41_in),
        .I2(fin_comparacion_s4__36),
        .I3(boton_pulsado_s[1]),
        .I4(fin_comparacion_s3__0),
        .I5(boton_pulsado_s[2]),
        .O(fin_comparacion_s1__1));
  LUT6 #(
    .INIT(64'h6FF6FFFFFAFA6AF2)) 
    \boton_anterior[0]_i_8 
       (.I0(boton_pulsado_s[1]),
        .I1(boton_anterior[1]),
        .I2(boton_pulsado_s[0]),
        .I3(boton_anterior[0]),
        .I4(boton_anterior[2]),
        .I5(boton_pulsado_s[2]),
        .O(fin_comparacion_s0));
  LUT4 #(
    .INIT(16'h15EA)) 
    \boton_anterior[0]_i_9 
       (.I0(indice_reg[4]),
        .I1(\indice_reg[2]_0 [2]),
        .I2(indice_reg[3]),
        .I3(indice_reg[5]),
        .O(\boton_anterior[0]_i_9_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \boton_anterior_reg[0] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(boton_pulsado_s[0]),
        .Q(boton_anterior[0]));
  MUXF7 \boton_anterior_reg[0]_i_4 
       (.I0(\boton_anterior[0]_i_10_n_0 ),
        .I1(\boton_anterior[0]_i_11_n_0 ),
        .O(fin_comparacion_s4__36),
        .S(\boton_anterior[0]_i_9_n_0 ));
  MUXF7 \boton_anterior_reg[0]_i_5 
       (.I0(\boton_anterior[0]_i_13_n_0 ),
        .I1(\boton_anterior[0]_i_14_n_0 ),
        .O(fin_comparacion_s3__0),
        .S(\boton_anterior[0]_i_12_n_0 ));
  MUXF7 \boton_anterior_reg[0]_i_6 
       (.I0(\boton_anterior[0]_i_16_n_0 ),
        .I1(\boton_anterior[0]_i_17_n_0 ),
        .O(fin_comparacion_s41_in),
        .S(\boton_anterior[0]_i_15_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \boton_anterior_reg[1] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(boton_pulsado_s[1]),
        .Q(boton_anterior[1]));
  FDCE #(
    .INIT(1'b0)) 
    \boton_anterior_reg[2] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(boton_pulsado_s[2]),
        .Q(boton_anterior[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FE0000)) 
    error_s_i_1
       (.I0(fin_comparacion_s4__36),
        .I1(fin_comparacion_s3__0),
        .I2(fin_comparacion_s41_in),
        .I3(fin_comparacion_s1__1),
        .I4(fin_comparacion_s0),
        .I5(error_s),
        .O(error_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    error_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(exito_s_reg_0),
        .D(error_s_i_1_n_0),
        .Q(error_s));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    exito_s_i_1
       (.I0(fin_comparacion_s4__36),
        .I1(fin_comparacion_s3__0),
        .I2(fin_comparacion_s41_in),
        .I3(exito_s),
        .O(exito_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    exito_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(exito_s_reg_0),
        .D(exito_s_i_1_n_0),
        .Q(exito_s));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FF0101)) 
    fin_comparacion_s_i_1
       (.I0(fin_comparacion_s4__36),
        .I1(fin_comparacion_s3__0),
        .I2(fin_comparacion_s41_in),
        .I3(fin_comparacion_s1__1),
        .I4(fin_comparacion_s0),
        .I5(fin_comparacion_s),
        .O(fin_comparacion_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    fin_comparacion_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(exito_s_reg_0),
        .D(fin_comparacion_s_i_1_n_0),
        .Q(fin_comparacion_s));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_2__0 
       (.I0(\indice_reg[2]_0 [1]),
        .O(\indice[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_3__0 
       (.I0(\indice_reg[2]_0 [0]),
        .O(\indice[0]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[0] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(\indice_reg[0]_i_1__0_n_7 ),
        .Q(\indice_reg[2]_0 [0]));
  CARRY4 \indice_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\indice_reg[0]_i_1__0_n_0 ,\NLW_indice_reg[0]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\indice_reg[0]_i_1__0_n_4 ,\indice_reg[0]_i_1__0_n_5 ,\indice_reg[0]_i_1__0_n_6 ,\indice_reg[0]_i_1__0_n_7 }),
        .S({indice_reg[3],\indice_reg[2]_0 [2],\indice[0]_i_2__0_n_0 ,\indice[0]_i_3__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[1] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(\indice_reg[0]_i_1__0_n_6 ),
        .Q(\indice_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[2] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(\indice_reg[0]_i_1__0_n_5 ),
        .Q(\indice_reg[2]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[3] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(\indice_reg[0]_i_1__0_n_4 ),
        .Q(indice_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[4] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(\indice_reg[4]_i_1__0_n_7 ),
        .Q(indice_reg[4]));
  CARRY4 \indice_reg[4]_i_1__0 
       (.CI(\indice_reg[0]_i_1__0_n_0 ),
        .CO(\NLW_indice_reg[4]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indice_reg[4]_i_1__0_O_UNCONNECTED [3:2],\indice_reg[4]_i_1__0_n_6 ,\indice_reg[4]_i_1__0_n_7 }),
        .S({1'b0,1'b0,indice_reg[5:4]}));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[5] 
       (.C(clk_out_BUFG),
        .CE(\boton_anterior[0]_i_1_n_0 ),
        .CLR(exito_s_reg_0),
        .D(\indice_reg[4]_i_1__0_n_6 ),
        .Q(indice_reg[5]));
endmodule

module Control_Juego
   (enable_CN_s,
    Q,
    AR,
    \FSM_onehot_state_reg[1]_0 ,
    enable_ContS_s_reg_0,
    enable_CompS_s_reg_0,
    clk_out_BUFG,
    fin_secuencia_s,
    fin_comparacion_s,
    RESET_top_IBUF,
    nxt_state);
  output enable_CN_s;
  output [0:0]Q;
  output [0:0]AR;
  output \FSM_onehot_state_reg[1]_0 ;
  output enable_ContS_s_reg_0;
  output enable_CompS_s_reg_0;
  input clk_out_BUFG;
  input fin_secuencia_s;
  input fin_comparacion_s;
  input RESET_top_IBUF;
  input nxt_state;

  wire [0:0]AR;
  wire \FSM_onehot_nxt_state[0]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state[1]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state[2]_i_1_n_0 ;
  wire \FSM_onehot_nxt_state_reg_n_0_[0] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[1] ;
  wire \FSM_onehot_nxt_state_reg_n_0_[2] ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [0:0]Q;
  wire RESET_CN_s;
  wire RESET_top_IBUF;
  wire clk_out_BUFG;
  wire enable;
  wire enable_CN_s;
  wire enable_CompS_s;
  wire enable_CompS_s_reg_0;
  wire enable_ContS_s;
  wire enable_ContS_s_reg_0;
  wire enable_ContS_s_reg_n_0;
  wire fin_comparacion_s;
  wire fin_secuencia_s;
  wire nxt_state;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_nxt_state[0]_i_1 
       (.I0(enable_CompS_s),
        .I1(nxt_state),
        .I2(\FSM_onehot_nxt_state_reg_n_0_[0] ),
        .O(\FSM_onehot_nxt_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_nxt_state[1]_i_1 
       (.I0(Q),
        .I1(nxt_state),
        .I2(\FSM_onehot_nxt_state_reg_n_0_[1] ),
        .O(\FSM_onehot_nxt_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_nxt_state[2]_i_1 
       (.I0(enable_ContS_s),
        .I1(nxt_state),
        .I2(\FSM_onehot_nxt_state_reg_n_0_[2] ),
        .O(\FSM_onehot_nxt_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_nxt_state[2]_i_3 
       (.I0(enable_ContS_s),
        .I1(fin_secuencia_s),
        .I2(enable_CompS_s),
        .I3(fin_comparacion_s),
        .O(\FSM_onehot_state_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_nxt_state_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_nxt_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nxt_state_reg[2] 
       (.C(clk_out_BUFG),
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
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_nxt_state_reg_n_0_[0] ),
        .PRE(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q));
  (* FSM_ENCODED_STATES = "nivel:001,secuencia:010,comparar:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state_reg_n_0_[1] ),
        .Q(enable_ContS_s));
  (* FSM_ENCODED_STATES = "nivel:001,secuencia:010,comparar:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_nxt_state_reg_n_0_[2] ),
        .Q(enable_CompS_s));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_estado_actual[2]_i_2 
       (.I0(RESET_CN_s),
        .O(AR));
  FDCE #(
    .INIT(1'b1)) 
    RESET_CN_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(1'b1),
        .Q(RESET_CN_s));
  LUT1 #(
    .INIT(2'h1)) 
    \boton_anterior[0]_i_3 
       (.I0(enable),
        .O(enable_CompS_s_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \elemento_s[0]_i_2 
       (.I0(enable_ContS_s_reg_n_0),
        .O(enable_ContS_s_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_CN_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(enable_CN_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    enable_CompS_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(enable_CompS_s),
        .Q(enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    enable_ContS_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(enable_ContS_s),
        .Q(enable_ContS_s_reg_n_0),
        .R(1'b0));
endmodule

module Controlador_de_Sec
   (pedir_tiempo_s,
    \indice_reg[2]_0 ,
    fin_secuencia_s,
    contador_s0,
    Q,
    clk_out_BUFG,
    \elemento_s_reg[0]_0 ,
    fin_tiempo_s,
    activo,
    \elemento_s_reg[2]_0 ,
    \elemento_s_reg[0]_1 ,
    \elemento_s_reg[1]_0 ,
    estado_actual,
    \elemento_s_reg[2]_1 );
  output pedir_tiempo_s;
  output [2:0]\indice_reg[2]_0 ;
  output fin_secuencia_s;
  output contador_s0;
  output [2:0]Q;
  input clk_out_BUFG;
  input \elemento_s_reg[0]_0 ;
  input fin_tiempo_s;
  input activo;
  input \elemento_s_reg[2]_0 ;
  input \elemento_s_reg[0]_1 ;
  input \elemento_s_reg[1]_0 ;
  input [2:0]estado_actual;
  input \elemento_s_reg[2]_1 ;

  wire [2:0]Q;
  wire activo;
  wire clk_out_BUFG;
  wire contador_s0;
  wire \elemento_s[0]_i_12_n_0 ;
  wire \elemento_s[0]_i_13_n_0 ;
  wire \elemento_s[0]_i_1_n_0 ;
  wire \elemento_s[0]_i_4_n_0 ;
  wire \elemento_s[0]_i_5_n_0 ;
  wire \elemento_s[0]_i_6_n_0 ;
  wire \elemento_s[0]_i_7_n_0 ;
  wire \elemento_s[0]_i_8_n_0 ;
  wire \elemento_s[0]_i_9_n_0 ;
  wire \elemento_s[1]_i_10_n_0 ;
  wire \elemento_s[1]_i_1_n_0 ;
  wire \elemento_s[1]_i_3_n_0 ;
  wire \elemento_s[1]_i_4_n_0 ;
  wire \elemento_s[1]_i_5_n_0 ;
  wire \elemento_s[1]_i_6_n_0 ;
  wire \elemento_s[1]_i_7_n_0 ;
  wire \elemento_s[1]_i_8_n_0 ;
  wire \elemento_s[1]_i_9_n_0 ;
  wire \elemento_s[2]_i_10_n_0 ;
  wire \elemento_s[2]_i_1_n_0 ;
  wire \elemento_s[2]_i_3_n_0 ;
  wire \elemento_s[2]_i_4_n_0 ;
  wire \elemento_s[2]_i_5_n_0 ;
  wire \elemento_s[2]_i_6_n_0 ;
  wire \elemento_s[2]_i_7_n_0 ;
  wire \elemento_s[2]_i_8_n_0 ;
  wire \elemento_s[2]_i_9_n_0 ;
  wire \elemento_s_reg[0]_0 ;
  wire \elemento_s_reg[0]_1 ;
  wire \elemento_s_reg[0]_i_3_n_0 ;
  wire \elemento_s_reg[1]_0 ;
  wire \elemento_s_reg[1]_i_2_n_0 ;
  wire \elemento_s_reg[2]_0 ;
  wire \elemento_s_reg[2]_1 ;
  wire \elemento_s_reg[2]_i_2_n_0 ;
  wire [2:0]estado_actual;
  wire fin_secuencia_s;
  wire fin_secuencia_s_i_1_n_0;
  wire fin_tiempo_s;
  wire \indice[0]_i_2_n_0 ;
  wire \indice[0]_i_3_n_0 ;
  wire [5:3]indice_reg;
  wire \indice_reg[0]_i_1_n_0 ;
  wire \indice_reg[0]_i_1_n_4 ;
  wire \indice_reg[0]_i_1_n_5 ;
  wire \indice_reg[0]_i_1_n_6 ;
  wire \indice_reg[0]_i_1_n_7 ;
  wire [2:0]\indice_reg[2]_0 ;
  wire \indice_reg[4]_i_1_n_6 ;
  wire \indice_reg[4]_i_1_n_7 ;
  wire pedir_tiempo_s;
  wire [2:0]\NLW_indice_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_indice_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_indice_reg[4]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \contador_s[0]_i_2 
       (.I0(pedir_tiempo_s),
        .I1(activo),
        .O(contador_s0));
  LUT6 #(
    .INIT(64'hFCFFAFCA0C00A0CA)) 
    \elemento_s[0]_i_1 
       (.I0(\elemento_s_reg[0]_i_3_n_0 ),
        .I1(\elemento_s[0]_i_4_n_0 ),
        .I2(indice_reg[4]),
        .I3(\elemento_s[0]_i_5_n_0 ),
        .I4(indice_reg[5]),
        .I5(\elemento_s[0]_i_6_n_0 ),
        .O(\elemento_s[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2D2D0568A20D642D)) 
    \elemento_s[0]_i_12 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\elemento_s[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10045451050482A2)) 
    \elemento_s[0]_i_13 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .I3(estado_actual[0]),
        .I4(\indice_reg[2]_0 [1]),
        .I5(\indice_reg[2]_0 [0]),
        .O(\elemento_s[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCDC1373F01010400)) 
    \elemento_s[0]_i_4 
       (.I0(\elemento_s_reg[2]_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(\indice_reg[2]_0 [0]),
        .I4(indice_reg[3]),
        .I5(\elemento_s_reg[0]_1 ),
        .O(\elemento_s[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \elemento_s[0]_i_5 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(indice_reg[3]),
        .O(\elemento_s[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEABBBF222A8880)) 
    \elemento_s[0]_i_6 
       (.I0(\elemento_s[0]_i_12_n_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(\indice_reg[2]_0 [0]),
        .I4(indice_reg[3]),
        .I5(\elemento_s[0]_i_13_n_0 ),
        .O(\elemento_s[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h57A8)) 
    \elemento_s[0]_i_7 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(indice_reg[3]),
        .O(\elemento_s[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000079A84BB86200)) 
    \elemento_s[0]_i_8 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\elemento_s[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000034C032510000)) 
    \elemento_s[0]_i_9 
       (.I0(\indice_reg[2]_0 [0]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\elemento_s[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAFCA0C00A0CA)) 
    \elemento_s[1]_i_1 
       (.I0(\elemento_s_reg[1]_i_2_n_0 ),
        .I1(\elemento_s[1]_i_3_n_0 ),
        .I2(indice_reg[4]),
        .I3(\elemento_s[1]_i_4_n_0 ),
        .I4(indice_reg[5]),
        .I5(\elemento_s[1]_i_5_n_0 ),
        .O(\elemento_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96960B9490263296)) 
    \elemento_s[1]_i_10 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\elemento_s[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF0141FF00014100)) 
    \elemento_s[1]_i_3 
       (.I0(\elemento_s_reg[2]_0 ),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(\indice_reg[2]_0 [2]),
        .I4(indice_reg[3]),
        .I5(\elemento_s[1]_i_9_n_0 ),
        .O(\elemento_s[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \elemento_s[1]_i_4 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(indice_reg[3]),
        .O(\elemento_s[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \elemento_s[1]_i_5 
       (.I0(\elemento_s[1]_i_10_n_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(indice_reg[3]),
        .I3(\elemento_s_reg[1]_0 ),
        .O(\elemento_s[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \elemento_s[1]_i_6 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(indice_reg[3]),
        .O(\elemento_s[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0AE2040005630EE0)) 
    \elemento_s[1]_i_7 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(estado_actual[1]),
        .I3(estado_actual[2]),
        .I4(estado_actual[0]),
        .I5(\indice_reg[2]_0 [0]),
        .O(\elemento_s[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000043E052280000)) 
    \elemento_s[1]_i_8 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [1]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\elemento_s[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0808000000040C08)) 
    \elemento_s[1]_i_9 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .I3(estado_actual[0]),
        .I4(\indice_reg[2]_0 [0]),
        .I5(\indice_reg[2]_0 [1]),
        .O(\elemento_s[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAFCA0C00A0CA)) 
    \elemento_s[2]_i_1 
       (.I0(\elemento_s_reg[2]_i_2_n_0 ),
        .I1(\elemento_s[2]_i_3_n_0 ),
        .I2(indice_reg[4]),
        .I3(\elemento_s[2]_i_4_n_0 ),
        .I4(indice_reg[5]),
        .I5(\elemento_s[2]_i_5_n_0 ),
        .O(\elemento_s[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2D2D211CC825192D)) 
    \elemento_s[2]_i_10 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[2]),
        .I5(estado_actual[1]),
        .O(\elemento_s[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCCC573300005400)) 
    \elemento_s[2]_i_3 
       (.I0(\elemento_s_reg[2]_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(\indice_reg[2]_0 [1]),
        .I4(indice_reg[3]),
        .I5(\elemento_s[2]_i_9_n_0 ),
        .O(\elemento_s[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \elemento_s[2]_i_4 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(indice_reg[3]),
        .O(\elemento_s[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEABBB0222A888)) 
    \elemento_s[2]_i_5 
       (.I0(\elemento_s[2]_i_10_n_0 ),
        .I1(\indice_reg[2]_0 [2]),
        .I2(\indice_reg[2]_0 [0]),
        .I3(\indice_reg[2]_0 [1]),
        .I4(indice_reg[3]),
        .I5(\elemento_s_reg[2]_1 ),
        .O(\elemento_s[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h15EA)) 
    \elemento_s[2]_i_6 
       (.I0(\indice_reg[2]_0 [2]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [1]),
        .I3(indice_reg[3]),
        .O(\elemento_s[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B43E98004E4C00)) 
    \elemento_s[2]_i_7 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[1]),
        .I4(estado_actual[2]),
        .I5(estado_actual[0]),
        .O(\elemento_s[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00008A320B500000)) 
    \elemento_s[2]_i_8 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\elemento_s[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00A8000000290000)) 
    \elemento_s[2]_i_9 
       (.I0(\indice_reg[2]_0 [1]),
        .I1(\indice_reg[2]_0 [0]),
        .I2(\indice_reg[2]_0 [2]),
        .I3(estado_actual[1]),
        .I4(estado_actual[2]),
        .I5(estado_actual[0]),
        .O(\elemento_s[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \elemento_s_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\elemento_s[0]_i_1_n_0 ),
        .Q(Q[2]));
  MUXF7 \elemento_s_reg[0]_i_3 
       (.I0(\elemento_s[0]_i_8_n_0 ),
        .I1(\elemento_s[0]_i_9_n_0 ),
        .O(\elemento_s_reg[0]_i_3_n_0 ),
        .S(\elemento_s[0]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \elemento_s_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\elemento_s[1]_i_1_n_0 ),
        .Q(Q[1]));
  MUXF7 \elemento_s_reg[1]_i_2 
       (.I0(\elemento_s[1]_i_7_n_0 ),
        .I1(\elemento_s[1]_i_8_n_0 ),
        .O(\elemento_s_reg[1]_i_2_n_0 ),
        .S(\elemento_s[1]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \elemento_s_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\elemento_s[2]_i_1_n_0 ),
        .Q(Q[0]));
  MUXF7 \elemento_s_reg[2]_i_2 
       (.I0(\elemento_s[2]_i_7_n_0 ),
        .I1(\elemento_s[2]_i_8_n_0 ),
        .O(\elemento_s_reg[2]_i_2_n_0 ),
        .S(\elemento_s[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    fin_secuencia_s_i_1
       (.I0(\elemento_s[0]_i_1_n_0 ),
        .I1(\elemento_s[2]_i_1_n_0 ),
        .I2(\elemento_s[1]_i_1_n_0 ),
        .I3(fin_secuencia_s),
        .O(fin_secuencia_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    fin_secuencia_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(fin_secuencia_s_i_1_n_0),
        .Q(fin_secuencia_s));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_2 
       (.I0(\indice_reg[2]_0 [1]),
        .O(\indice[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_3 
       (.I0(\indice_reg[2]_0 [0]),
        .O(\indice[0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[0] 
       (.C(fin_tiempo_s),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\indice_reg[0]_i_1_n_7 ),
        .Q(\indice_reg[2]_0 [0]));
  CARRY4 \indice_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\indice_reg[0]_i_1_n_0 ,\NLW_indice_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\indice_reg[0]_i_1_n_4 ,\indice_reg[0]_i_1_n_5 ,\indice_reg[0]_i_1_n_6 ,\indice_reg[0]_i_1_n_7 }),
        .S({indice_reg[3],\indice_reg[2]_0 [2],\indice[0]_i_2_n_0 ,\indice[0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[1] 
       (.C(fin_tiempo_s),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\indice_reg[0]_i_1_n_6 ),
        .Q(\indice_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[2] 
       (.C(fin_tiempo_s),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\indice_reg[0]_i_1_n_5 ),
        .Q(\indice_reg[2]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[3] 
       (.C(fin_tiempo_s),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\indice_reg[0]_i_1_n_4 ),
        .Q(indice_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[4] 
       (.C(fin_tiempo_s),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\indice_reg[4]_i_1_n_7 ),
        .Q(indice_reg[4]));
  CARRY4 \indice_reg[4]_i_1 
       (.CI(\indice_reg[0]_i_1_n_0 ),
        .CO(\NLW_indice_reg[4]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indice_reg[4]_i_1_O_UNCONNECTED [3:2],\indice_reg[4]_i_1_n_6 ,\indice_reg[4]_i_1_n_7 }),
        .S({1'b0,1'b0,indice_reg[5:4]}));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[5] 
       (.C(fin_tiempo_s),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(\indice_reg[4]_i_1_n_6 ),
        .Q(indice_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    pedir_tiempo_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(\elemento_s_reg[0]_0 ),
        .D(1'b1),
        .Q(pedir_tiempo_s));
endmodule

module Decod_Leds_Sec
   (led_top_OBUF,
    Q);
  output [4:1]led_top_OBUF;
  input [2:0]Q;

  wire [2:0]Q;
  wire [4:1]led_top_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \led_top_OBUF[1]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(led_top_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \led_top_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(led_top_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \led_top_OBUF[3]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(led_top_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \led_top_OBUF[4]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(led_top_OBUF[4]));
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
  wire \contador[5]_i_1_n_0 ;
  wire [5:0]p_1_in;

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
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \contador[1]_i_1 
       (.I0(contador[0]),
        .I1(contador[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \contador[2]_i_1 
       (.I0(contador[0]),
        .I1(contador[1]),
        .I2(contador[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \contador[3]_i_1 
       (.I0(contador[1]),
        .I1(contador[0]),
        .I2(contador[2]),
        .I3(contador[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \contador[4]_i_1 
       (.I0(contador[2]),
        .I1(contador[0]),
        .I2(contador[1]),
        .I3(contador[3]),
        .I4(contador[4]),
        .O(p_1_in[4]));
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
        .O(p_1_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(contador[0]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(contador[1]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(contador[2]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(contador[3]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(contador[4]),
        .R(\contador[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(contador[5]),
        .R(\contador[5]_i_1_n_0 ));
endmodule

module EDGEDTCTR
   (nxt_state,
    \sreg_reg[0]_0 ,
    clk_out_BUFG,
    Q,
    \FSM_onehot_nxt_state_reg[2] );
  output nxt_state;
  input \sreg_reg[0]_0 ;
  input clk_out_BUFG;
  input [0:0]Q;
  input \FSM_onehot_nxt_state_reg[2] ;

  wire \FSM_onehot_nxt_state_reg[2] ;
  wire [0:0]Q;
  wire clk_out_BUFG;
  wire nxt_state;
  wire [2:0]sreg;
  wire \sreg_reg[0]_0 ;

  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \FSM_onehot_nxt_state[2]_i_2 
       (.I0(Q),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(sreg[1]),
        .I4(\FSM_onehot_nxt_state_reg[2] ),
        .O(nxt_state));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_0 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "c8f9a84e" *) 
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
  wire activo;
  wire [1:4]boton_top;
  wire [1:4]boton_top_IBUF;
  wire clk_out;
  wire clk_out_BUFG;
  wire contador_s0;
  wire [6:0]display_top;
  wire [5:0]display_top_OBUF;
  wire [0:2]elemento_s;
  wire enable_CN_s;
  wire enable_CN_s_1;
  wire enable_display_top;
  wire [2:0]estado_actual;
  wire exito_s;
  wire fin_comparacion_s;
  wire fin_secuencia_s;
  wire fin_tiempo_s;
  wire [2:0]indice_reg;
  wire [2:0]indice_reg_0;
  wire inst_CompSecuencia_n_5;
  wire inst_Control_Juego_n_2;
  wire inst_Control_Juego_n_3;
  wire inst_Control_Juego_n_4;
  wire inst_Control_Juego_n_5;
  wire inst_controlador_nivel_n_12;
  wire inst_controlador_nivel_n_13;
  wire inst_controlador_nivel_n_14;
  wire inst_controlador_nivel_n_15;
  wire inst_controlador_nivel_n_3;
  wire inst_controlador_nivel_n_4;
  wire inst_controlador_nivel_n_5;
  wire inst_sync_n_0;
  wire [4:1]led_top;
  wire [4:1]led_top_OBUF;
  wire nxt_state;
  wire pedir_tiempo_s;

initial begin
 $sdf_annotate("ALL_tb_time_impl.sdf",,,,"tool_control");
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
  BUFG clk_out_BUFG_inst
       (.I(clk_out),
        .O(clk_out_BUFG));
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
       (.E(inst_CompSecuencia_n_5),
        .\boton_anterior_reg[0]_i_4_0 (inst_controlador_nivel_n_14),
        .\boton_anterior_reg[0]_i_5_0 (inst_controlador_nivel_n_13),
        .\boton_anterior_reg[0]_i_6_0 (inst_controlador_nivel_n_3),
        .boton_top_IBUF(boton_top_IBUF),
        .clk_out_BUFG(clk_out_BUFG),
        .estado_actual(estado_actual),
        .exito_s(exito_s),
        .exito_s_reg_0(inst_Control_Juego_n_5),
        .fin_comparacion_s(fin_comparacion_s),
        .\indice_reg[2]_0 (indice_reg));
  Controlador_de_Sec inst_CondeSec
       (.Q({elemento_s[0],elemento_s[1],elemento_s[2]}),
        .activo(activo),
        .clk_out_BUFG(clk_out_BUFG),
        .contador_s0(contador_s0),
        .\elemento_s_reg[0]_0 (inst_Control_Juego_n_4),
        .\elemento_s_reg[0]_1 (inst_controlador_nivel_n_4),
        .\elemento_s_reg[1]_0 (inst_controlador_nivel_n_15),
        .\elemento_s_reg[2]_0 (inst_controlador_nivel_n_5),
        .\elemento_s_reg[2]_1 (inst_controlador_nivel_n_12),
        .estado_actual(estado_actual),
        .fin_secuencia_s(fin_secuencia_s),
        .fin_tiempo_s(fin_tiempo_s),
        .\indice_reg[2]_0 (indice_reg_0),
        .pedir_tiempo_s(pedir_tiempo_s));
  Control_Juego inst_Control_Juego
       (.AR(inst_Control_Juego_n_2),
        .\FSM_onehot_state_reg[1]_0 (inst_Control_Juego_n_3),
        .Q(enable_CN_s_1),
        .RESET_top_IBUF(RESET_top_IBUF),
        .clk_out_BUFG(clk_out_BUFG),
        .enable_CN_s(enable_CN_s),
        .enable_CompS_s_reg_0(inst_Control_Juego_n_5),
        .enable_ContS_s_reg_0(inst_Control_Juego_n_4),
        .fin_comparacion_s(fin_comparacion_s),
        .fin_secuencia_s(fin_secuencia_s),
        .nxt_state(nxt_state));
  Decod_Leds_Sec inst_DLS
       (.Q({elemento_s[0],elemento_s[1],elemento_s[2]}),
        .led_top_OBUF(led_top_OBUF));
  DivisorReloj inst_DivisorReloj
       (.CLK(CLK_top_IBUF_BUFG),
        .clk_out(clk_out));
  EDGEDTCTR inst_EDGEDTCTR
       (.\FSM_onehot_nxt_state_reg[2] (inst_Control_Juego_n_3),
        .Q(enable_CN_s_1),
        .clk_out_BUFG(clk_out_BUFG),
        .nxt_state(nxt_state),
        .\sreg_reg[0]_0 (inst_sync_n_0));
  controlador_nivel inst_controlador_nivel
       (.AR(inst_Control_Juego_n_2),
        .E(inst_CompSecuencia_n_5),
        .\FSM_sequential_estado_actual_reg[0]_0 (inst_controlador_nivel_n_3),
        .\FSM_sequential_estado_actual_reg[0]_1 (inst_controlador_nivel_n_4),
        .\FSM_sequential_estado_actual_reg[1]_0 (inst_controlador_nivel_n_12),
        .\FSM_sequential_estado_actual_reg[1]_1 (inst_controlador_nivel_n_13),
        .\FSM_sequential_estado_actual_reg[1]_2 (inst_controlador_nivel_n_14),
        .\FSM_sequential_estado_actual_reg[1]_3 (inst_controlador_nivel_n_15),
        .\FSM_sequential_estado_actual_reg[2]_0 (inst_controlador_nivel_n_5),
        .\boton_anterior[0]_i_10 (indice_reg),
        .clk_out_BUFG(clk_out_BUFG),
        .display_top_OBUF(display_top_OBUF),
        .\elemento_s[1]_i_5 (indice_reg_0),
        .enable_CN_s(enable_CN_s),
        .estado_actual(estado_actual),
        .exito_s(exito_s));
  sync inst_sync
       (.accion_top_IBUF(accion_top_IBUF),
        .clk_out_BUFG(clk_out_BUFG),
        .\sreg_reg[0]_0 (inst_sync_n_0));
  temporizador inst_temporizador
       (.activo(activo),
        .clk_out_BUFG(clk_out_BUFG),
        .contador_s0(contador_s0),
        .fin_tiempo_s(fin_tiempo_s),
        .pedir_tiempo_s(pedir_tiempo_s));
  OBUF \led_top_OBUF[1]_inst 
       (.I(led_top_OBUF[1]),
        .O(led_top[1]));
  OBUF \led_top_OBUF[2]_inst 
       (.I(led_top_OBUF[2]),
        .O(led_top[2]));
  OBUF \led_top_OBUF[3]_inst 
       (.I(led_top_OBUF[3]),
        .O(led_top[3]));
  OBUF \led_top_OBUF[4]_inst 
       (.I(led_top_OBUF[4]),
        .O(led_top[4]));
endmodule

module controlador_nivel
   (estado_actual,
    \FSM_sequential_estado_actual_reg[0]_0 ,
    \FSM_sequential_estado_actual_reg[0]_1 ,
    \FSM_sequential_estado_actual_reg[2]_0 ,
    display_top_OBUF,
    \FSM_sequential_estado_actual_reg[1]_0 ,
    \FSM_sequential_estado_actual_reg[1]_1 ,
    \FSM_sequential_estado_actual_reg[1]_2 ,
    \FSM_sequential_estado_actual_reg[1]_3 ,
    clk_out_BUFG,
    AR,
    enable_CN_s,
    \boton_anterior[0]_i_10 ,
    \elemento_s[1]_i_5 ,
    exito_s,
    E);
  output [2:0]estado_actual;
  output \FSM_sequential_estado_actual_reg[0]_0 ;
  output \FSM_sequential_estado_actual_reg[0]_1 ;
  output \FSM_sequential_estado_actual_reg[2]_0 ;
  output [5:0]display_top_OBUF;
  output \FSM_sequential_estado_actual_reg[1]_0 ;
  output \FSM_sequential_estado_actual_reg[1]_1 ;
  output \FSM_sequential_estado_actual_reg[1]_2 ;
  output \FSM_sequential_estado_actual_reg[1]_3 ;
  input clk_out_BUFG;
  input [0:0]AR;
  input enable_CN_s;
  input [2:0]\boton_anterior[0]_i_10 ;
  input [2:0]\elemento_s[1]_i_5 ;
  input exito_s;
  input [0:0]E;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_estado_actual[0]_i_1_n_0 ;
  wire \FSM_sequential_estado_actual[1]_i_1_n_0 ;
  wire \FSM_sequential_estado_actual[2]_i_1_n_0 ;
  wire \FSM_sequential_estado_actual_reg[0]_0 ;
  wire \FSM_sequential_estado_actual_reg[0]_1 ;
  wire \FSM_sequential_estado_actual_reg[1]_0 ;
  wire \FSM_sequential_estado_actual_reg[1]_1 ;
  wire \FSM_sequential_estado_actual_reg[1]_2 ;
  wire \FSM_sequential_estado_actual_reg[1]_3 ;
  wire \FSM_sequential_estado_actual_reg[2]_0 ;
  wire \FSM_sequential_estado_siguiente_reg[1]_i_1_n_0 ;
  wire [2:0]\boton_anterior[0]_i_10 ;
  wire clk_out_BUFG;
  wire [5:0]display_top_OBUF;
  wire [2:0]\elemento_s[1]_i_5 ;
  wire enable_CN_s;
  wire [2:0]estado_actual;
  wire [2:0]estado_siguiente__0;
  wire [2:0]estado_siguiente__1;
  wire exito_s;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_estado_actual[0]_i_1 
       (.I0(estado_siguiente__0[0]),
        .I1(enable_CN_s),
        .I2(estado_actual[0]),
        .O(\FSM_sequential_estado_actual[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_estado_actual[1]_i_1 
       (.I0(estado_siguiente__0[1]),
        .I1(enable_CN_s),
        .I2(estado_actual[1]),
        .O(\FSM_sequential_estado_actual[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_estado_actual[2]_i_1 
       (.I0(estado_siguiente__0[2]),
        .I1(enable_CN_s),
        .I2(estado_actual[2]),
        .O(\FSM_sequential_estado_actual[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "estado_1:001,estado_2:010,estado_3:011,estado_4:100,estado_0:000,estado_5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_actual_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_estado_actual[0]_i_1_n_0 ),
        .Q(estado_actual[0]));
  (* FSM_ENCODED_STATES = "estado_1:001,estado_2:010,estado_3:011,estado_4:100,estado_0:000,estado_5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_actual_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_estado_actual[1]_i_1_n_0 ),
        .Q(estado_actual[1]));
  (* FSM_ENCODED_STATES = "estado_1:001,estado_2:010,estado_3:011,estado_4:100,estado_0:000,estado_5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_actual_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_estado_actual[2]_i_1_n_0 ),
        .Q(estado_actual[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_siguiente_reg[0] 
       (.CLR(AR),
        .D(estado_siguiente__1[0]),
        .G(E),
        .GE(1'b1),
        .Q(estado_siguiente__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \FSM_sequential_estado_siguiente_reg[0]_i_1 
       (.I0(estado_actual[2]),
        .I1(exito_s),
        .I2(estado_actual[0]),
        .O(estado_siguiente__1[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_siguiente_reg[1] 
       (.CLR(AR),
        .D(\FSM_sequential_estado_siguiente_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(estado_siguiente__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \FSM_sequential_estado_siguiente_reg[1]_i_1 
       (.I0(exito_s),
        .I1(estado_actual[0]),
        .I2(estado_actual[1]),
        .I3(estado_actual[2]),
        .O(\FSM_sequential_estado_siguiente_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_siguiente_reg[2] 
       (.CLR(AR),
        .D(estado_siguiente__1[2]),
        .G(E),
        .GE(1'b1),
        .Q(estado_siguiente__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE0A0)) 
    \FSM_sequential_estado_siguiente_reg[2]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .I2(exito_s),
        .I3(estado_actual[0]),
        .O(estado_siguiente__1[2]));
  LUT6 #(
    .INIT(64'h000000009B2454EB)) 
    \boton_anterior[0]_i_19 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .I3(\boton_anterior[0]_i_10 [0]),
        .I4(\boton_anterior[0]_i_10 [1]),
        .I5(\boton_anterior[0]_i_10 [2]),
        .O(\FSM_sequential_estado_actual_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hEB00009B00240054)) 
    \boton_anterior[0]_i_27 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .I3(\boton_anterior[0]_i_10 [2]),
        .I4(\boton_anterior[0]_i_10 [0]),
        .I5(\boton_anterior[0]_i_10 [1]),
        .O(\FSM_sequential_estado_actual_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000C1B00000000)) 
    \boton_anterior[0]_i_41 
       (.I0(estado_actual[0]),
        .I1(\boton_anterior[0]_i_10 [0]),
        .I2(\boton_anterior[0]_i_10 [1]),
        .I3(\boton_anterior[0]_i_10 [2]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\FSM_sequential_estado_actual_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \display_top_OBUF[0]_inst_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .O(display_top_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \display_top_OBUF[1]_inst_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[1]),
        .I2(estado_actual[2]),
        .O(display_top_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h72)) 
    \display_top_OBUF[2]_inst_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .I2(estado_actual[0]),
        .O(display_top_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \display_top_OBUF[4]_inst_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .I2(estado_actual[0]),
        .O(display_top_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \display_top_OBUF[5]_inst_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(display_top_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_top_OBUF[6]_inst_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(display_top_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \elemento_s[0]_i_10 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .I2(estado_actual[0]),
        .O(\FSM_sequential_estado_actual_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000C1B00000000)) 
    \elemento_s[0]_i_11 
       (.I0(estado_actual[0]),
        .I1(\elemento_s[1]_i_5 [0]),
        .I2(\elemento_s[1]_i_5 [1]),
        .I3(\elemento_s[1]_i_5 [2]),
        .I4(estado_actual[1]),
        .I5(estado_actual[2]),
        .O(\FSM_sequential_estado_actual_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000009B2454EB)) 
    \elemento_s[1]_i_11 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .I3(\elemento_s[1]_i_5 [0]),
        .I4(\elemento_s[1]_i_5 [1]),
        .I5(\elemento_s[1]_i_5 [2]),
        .O(\FSM_sequential_estado_actual_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hEB00009B00240054)) 
    \elemento_s[2]_i_11 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .I3(\elemento_s[1]_i_5 [2]),
        .I4(\elemento_s[1]_i_5 [0]),
        .I5(\elemento_s[1]_i_5 [1]),
        .O(\FSM_sequential_estado_actual_reg[1]_0 ));
endmodule

module sync
   (\sreg_reg[0]_0 ,
    clk_out_BUFG,
    accion_top_IBUF);
  output \sreg_reg[0]_0 ;
  input clk_out_BUFG;
  input accion_top_IBUF;

  wire accion_top_IBUF;
  wire clk_out_BUFG;
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
        .CLK(clk_out_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(accion_top_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

module temporizador
   (fin_tiempo_s,
    activo,
    contador_s0,
    clk_out_BUFG,
    pedir_tiempo_s);
  output fin_tiempo_s;
  output activo;
  input contador_s0;
  input clk_out_BUFG;
  input pedir_tiempo_s;

  wire activo;
  wire activo1;
  wire activo1_carry__0_i_1_n_0;
  wire activo1_carry__0_i_2_n_0;
  wire activo1_carry__0_i_3_n_0;
  wire activo1_carry__0_i_4_n_0;
  wire activo1_carry__0_n_0;
  wire activo1_carry__1_i_1_n_0;
  wire activo1_carry__1_i_2_n_0;
  wire activo1_carry__1_i_3_n_0;
  wire activo1_carry__1_i_4_n_0;
  wire activo1_carry__1_n_0;
  wire activo1_carry__2_i_1_n_0;
  wire activo1_carry__2_i_2_n_0;
  wire activo1_carry__2_i_3_n_0;
  wire activo1_carry_i_1_n_0;
  wire activo1_carry_i_2_n_0;
  wire activo1_carry_i_3_n_0;
  wire activo1_carry_i_4_n_0;
  wire activo1_carry_i_5_n_0;
  wire activo1_carry_i_6_n_0;
  wire activo1_carry_n_0;
  wire activo_i_1_n_0;
  wire clk_out_BUFG;
  wire contador_s0;
  wire \contador_s[0]_i_1_n_0 ;
  wire \contador_s[0]_i_4_n_0 ;
  wire [31:2]contador_s_reg;
  wire \contador_s_reg[0]_i_3_n_0 ;
  wire \contador_s_reg[0]_i_3_n_4 ;
  wire \contador_s_reg[0]_i_3_n_5 ;
  wire \contador_s_reg[0]_i_3_n_6 ;
  wire \contador_s_reg[0]_i_3_n_7 ;
  wire \contador_s_reg[12]_i_1_n_0 ;
  wire \contador_s_reg[12]_i_1_n_4 ;
  wire \contador_s_reg[12]_i_1_n_5 ;
  wire \contador_s_reg[12]_i_1_n_6 ;
  wire \contador_s_reg[12]_i_1_n_7 ;
  wire \contador_s_reg[16]_i_1_n_0 ;
  wire \contador_s_reg[16]_i_1_n_4 ;
  wire \contador_s_reg[16]_i_1_n_5 ;
  wire \contador_s_reg[16]_i_1_n_6 ;
  wire \contador_s_reg[16]_i_1_n_7 ;
  wire \contador_s_reg[20]_i_1_n_0 ;
  wire \contador_s_reg[20]_i_1_n_4 ;
  wire \contador_s_reg[20]_i_1_n_5 ;
  wire \contador_s_reg[20]_i_1_n_6 ;
  wire \contador_s_reg[20]_i_1_n_7 ;
  wire \contador_s_reg[24]_i_1_n_0 ;
  wire \contador_s_reg[24]_i_1_n_4 ;
  wire \contador_s_reg[24]_i_1_n_5 ;
  wire \contador_s_reg[24]_i_1_n_6 ;
  wire \contador_s_reg[24]_i_1_n_7 ;
  wire \contador_s_reg[28]_i_1_n_4 ;
  wire \contador_s_reg[28]_i_1_n_5 ;
  wire \contador_s_reg[28]_i_1_n_6 ;
  wire \contador_s_reg[28]_i_1_n_7 ;
  wire \contador_s_reg[4]_i_1_n_0 ;
  wire \contador_s_reg[4]_i_1_n_4 ;
  wire \contador_s_reg[4]_i_1_n_5 ;
  wire \contador_s_reg[4]_i_1_n_6 ;
  wire \contador_s_reg[4]_i_1_n_7 ;
  wire \contador_s_reg[8]_i_1_n_0 ;
  wire \contador_s_reg[8]_i_1_n_4 ;
  wire \contador_s_reg[8]_i_1_n_5 ;
  wire \contador_s_reg[8]_i_1_n_6 ;
  wire \contador_s_reg[8]_i_1_n_7 ;
  wire \contador_s_reg_n_0_[0] ;
  wire \contador_s_reg_n_0_[1] ;
  wire fin_tiempo_s;
  wire fin_tiempo_s_i_1_n_0;
  wire pedir_tiempo_s;
  wire [2:0]NLW_activo1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_activo1_carry_O_UNCONNECTED;
  wire [2:0]NLW_activo1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_activo1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_contador_s_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_s_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_s_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_s_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_s_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_contador_s_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_s_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_contador_s_reg[8]_i_1_CO_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry
       (.CI(1'b0),
        .CO({activo1_carry_n_0,NLW_activo1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,activo1_carry_i_1_n_0,1'b0,activo1_carry_i_2_n_0}),
        .O(NLW_activo1_carry_O_UNCONNECTED[3:0]),
        .S({activo1_carry_i_3_n_0,activo1_carry_i_4_n_0,activo1_carry_i_5_n_0,activo1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry__0
       (.CI(activo1_carry_n_0),
        .CO({activo1_carry__0_n_0,NLW_activo1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_activo1_carry__0_O_UNCONNECTED[3:0]),
        .S({activo1_carry__0_i_1_n_0,activo1_carry__0_i_2_n_0,activo1_carry__0_i_3_n_0,activo1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_1
       (.I0(contador_s_reg[16]),
        .I1(contador_s_reg[17]),
        .O(activo1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_2
       (.I0(contador_s_reg[14]),
        .I1(contador_s_reg[15]),
        .O(activo1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_3
       (.I0(contador_s_reg[12]),
        .I1(contador_s_reg[13]),
        .O(activo1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_4
       (.I0(contador_s_reg[10]),
        .I1(contador_s_reg[11]),
        .O(activo1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry__1
       (.CI(activo1_carry__0_n_0),
        .CO({activo1_carry__1_n_0,NLW_activo1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_activo1_carry__1_O_UNCONNECTED[3:0]),
        .S({activo1_carry__1_i_1_n_0,activo1_carry__1_i_2_n_0,activo1_carry__1_i_3_n_0,activo1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_1
       (.I0(contador_s_reg[24]),
        .I1(contador_s_reg[25]),
        .O(activo1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_2
       (.I0(contador_s_reg[22]),
        .I1(contador_s_reg[23]),
        .O(activo1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_3
       (.I0(contador_s_reg[20]),
        .I1(contador_s_reg[21]),
        .O(activo1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_4
       (.I0(contador_s_reg[18]),
        .I1(contador_s_reg[19]),
        .O(activo1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry__2
       (.CI(activo1_carry__1_n_0),
        .CO({NLW_activo1_carry__2_CO_UNCONNECTED[3],activo1,NLW_activo1_carry__2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,contador_s_reg[31],1'b0,1'b0}),
        .O(NLW_activo1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,activo1_carry__2_i_1_n_0,activo1_carry__2_i_2_n_0,activo1_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__2_i_1
       (.I0(contador_s_reg[30]),
        .I1(contador_s_reg[31]),
        .O(activo1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__2_i_2
       (.I0(contador_s_reg[28]),
        .I1(contador_s_reg[29]),
        .O(activo1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__2_i_3
       (.I0(contador_s_reg[26]),
        .I1(contador_s_reg[27]),
        .O(activo1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    activo1_carry_i_1
       (.I0(contador_s_reg[6]),
        .I1(contador_s_reg[7]),
        .O(activo1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    activo1_carry_i_2
       (.I0(contador_s_reg[3]),
        .O(activo1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry_i_3
       (.I0(contador_s_reg[8]),
        .I1(contador_s_reg[9]),
        .O(activo1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    activo1_carry_i_4
       (.I0(contador_s_reg[6]),
        .I1(contador_s_reg[7]),
        .O(activo1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry_i_5
       (.I0(contador_s_reg[4]),
        .I1(contador_s_reg[5]),
        .O(activo1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    activo1_carry_i_6
       (.I0(contador_s_reg[3]),
        .I1(contador_s_reg[2]),
        .O(activo1_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE6)) 
    activo_i_1
       (.I0(pedir_tiempo_s),
        .I1(activo),
        .I2(activo1),
        .O(activo_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    activo_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(activo_i_1_n_0),
        .Q(activo),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \contador_s[0]_i_1 
       (.I0(pedir_tiempo_s),
        .I1(activo1),
        .I2(activo),
        .O(\contador_s[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador_s[0]_i_4 
       (.I0(\contador_s_reg_n_0_[0] ),
        .O(\contador_s[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[0] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[0]_i_3_n_7 ),
        .Q(\contador_s_reg_n_0_[0] ),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\contador_s_reg[0]_i_3_n_0 ,\NLW_contador_s_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\contador_s_reg[0]_i_3_n_4 ,\contador_s_reg[0]_i_3_n_5 ,\contador_s_reg[0]_i_3_n_6 ,\contador_s_reg[0]_i_3_n_7 }),
        .S({contador_s_reg[3:2],\contador_s_reg_n_0_[1] ,\contador_s[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[10] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[8]_i_1_n_5 ),
        .Q(contador_s_reg[10]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[11] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[8]_i_1_n_4 ),
        .Q(contador_s_reg[11]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[12] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[12]_i_1_n_7 ),
        .Q(contador_s_reg[12]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[12]_i_1 
       (.CI(\contador_s_reg[8]_i_1_n_0 ),
        .CO({\contador_s_reg[12]_i_1_n_0 ,\NLW_contador_s_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[12]_i_1_n_4 ,\contador_s_reg[12]_i_1_n_5 ,\contador_s_reg[12]_i_1_n_6 ,\contador_s_reg[12]_i_1_n_7 }),
        .S(contador_s_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[13] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[12]_i_1_n_6 ),
        .Q(contador_s_reg[13]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[14] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[12]_i_1_n_5 ),
        .Q(contador_s_reg[14]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[15] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[12]_i_1_n_4 ),
        .Q(contador_s_reg[15]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[16] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[16]_i_1_n_7 ),
        .Q(contador_s_reg[16]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[16]_i_1 
       (.CI(\contador_s_reg[12]_i_1_n_0 ),
        .CO({\contador_s_reg[16]_i_1_n_0 ,\NLW_contador_s_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[16]_i_1_n_4 ,\contador_s_reg[16]_i_1_n_5 ,\contador_s_reg[16]_i_1_n_6 ,\contador_s_reg[16]_i_1_n_7 }),
        .S(contador_s_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[17] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[16]_i_1_n_6 ),
        .Q(contador_s_reg[17]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[18] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[16]_i_1_n_5 ),
        .Q(contador_s_reg[18]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[19] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[16]_i_1_n_4 ),
        .Q(contador_s_reg[19]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[1] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[0]_i_3_n_6 ),
        .Q(\contador_s_reg_n_0_[1] ),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[20] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[20]_i_1_n_7 ),
        .Q(contador_s_reg[20]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[20]_i_1 
       (.CI(\contador_s_reg[16]_i_1_n_0 ),
        .CO({\contador_s_reg[20]_i_1_n_0 ,\NLW_contador_s_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[20]_i_1_n_4 ,\contador_s_reg[20]_i_1_n_5 ,\contador_s_reg[20]_i_1_n_6 ,\contador_s_reg[20]_i_1_n_7 }),
        .S(contador_s_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[21] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[20]_i_1_n_6 ),
        .Q(contador_s_reg[21]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[22] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[20]_i_1_n_5 ),
        .Q(contador_s_reg[22]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[23] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[20]_i_1_n_4 ),
        .Q(contador_s_reg[23]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[24] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[24]_i_1_n_7 ),
        .Q(contador_s_reg[24]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[24]_i_1 
       (.CI(\contador_s_reg[20]_i_1_n_0 ),
        .CO({\contador_s_reg[24]_i_1_n_0 ,\NLW_contador_s_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[24]_i_1_n_4 ,\contador_s_reg[24]_i_1_n_5 ,\contador_s_reg[24]_i_1_n_6 ,\contador_s_reg[24]_i_1_n_7 }),
        .S(contador_s_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[25] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[24]_i_1_n_6 ),
        .Q(contador_s_reg[25]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[26] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[24]_i_1_n_5 ),
        .Q(contador_s_reg[26]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[27] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[24]_i_1_n_4 ),
        .Q(contador_s_reg[27]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[28] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[28]_i_1_n_7 ),
        .Q(contador_s_reg[28]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[28]_i_1 
       (.CI(\contador_s_reg[24]_i_1_n_0 ),
        .CO(\NLW_contador_s_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[28]_i_1_n_4 ,\contador_s_reg[28]_i_1_n_5 ,\contador_s_reg[28]_i_1_n_6 ,\contador_s_reg[28]_i_1_n_7 }),
        .S(contador_s_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[29] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[28]_i_1_n_6 ),
        .Q(contador_s_reg[29]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[2] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[0]_i_3_n_5 ),
        .Q(contador_s_reg[2]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[30] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[28]_i_1_n_5 ),
        .Q(contador_s_reg[30]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[31] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[28]_i_1_n_4 ),
        .Q(contador_s_reg[31]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[3] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[0]_i_3_n_4 ),
        .Q(contador_s_reg[3]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[4] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[4]_i_1_n_7 ),
        .Q(contador_s_reg[4]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[4]_i_1 
       (.CI(\contador_s_reg[0]_i_3_n_0 ),
        .CO({\contador_s_reg[4]_i_1_n_0 ,\NLW_contador_s_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[4]_i_1_n_4 ,\contador_s_reg[4]_i_1_n_5 ,\contador_s_reg[4]_i_1_n_6 ,\contador_s_reg[4]_i_1_n_7 }),
        .S(contador_s_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[5] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[4]_i_1_n_6 ),
        .Q(contador_s_reg[5]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[6] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[4]_i_1_n_5 ),
        .Q(contador_s_reg[6]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[7] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[4]_i_1_n_4 ),
        .Q(contador_s_reg[7]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[8] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[8]_i_1_n_7 ),
        .Q(contador_s_reg[8]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[8]_i_1 
       (.CI(\contador_s_reg[4]_i_1_n_0 ),
        .CO({\contador_s_reg[8]_i_1_n_0 ,\NLW_contador_s_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[8]_i_1_n_4 ,\contador_s_reg[8]_i_1_n_5 ,\contador_s_reg[8]_i_1_n_6 ,\contador_s_reg[8]_i_1_n_7 }),
        .S(contador_s_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[9] 
       (.C(clk_out_BUFG),
        .CE(contador_s0),
        .D(\contador_s_reg[8]_i_1_n_6 ),
        .Q(contador_s_reg[9]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDD08)) 
    fin_tiempo_s_i_1
       (.I0(pedir_tiempo_s),
        .I1(activo),
        .I2(activo1),
        .I3(fin_tiempo_s),
        .O(fin_tiempo_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fin_tiempo_s_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(fin_tiempo_s_i_1_n_0),
        .Q(fin_tiempo_s),
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