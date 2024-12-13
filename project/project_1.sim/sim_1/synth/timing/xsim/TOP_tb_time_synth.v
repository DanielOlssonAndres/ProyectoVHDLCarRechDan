// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Dec 13 15:48:39 2024
// Host        : PortatilMarcos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/marco/OneDrive/Documentos/GitHub/ProyectoVHDLCarRechDan/project/project_1.sim/sim_1/synth/timing/xsim/TOP_tb_time_synth.v
// Design      : TOP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CompSecuencia
   (E,
    error_prev_reg,
    \i_reg[5]_i_2_0 ,
    \i_reg[1]_0 ,
    \i_reg[2]_0 ,
    \i_reg[0]_0 ,
    \i_reg[1]_1 ,
    \i_reg[2]_1 ,
    \i_reg[0]_1 ,
    \sec_generada_s_reg[4] ,
    exito_prev_reg,
    error_prev_reg_0,
    exito_prev_reg_0,
    S,
    \i0_inferred__0/i__carry__1_0 ,
    \sec_actual_reg[41]_0 ,
    accion_listo,
    \sec_generada_s_reg[41] ,
    \sec_generada_s_reg[41]_0 ,
    \sec_generada_s_reg[41]_1 ,
    \sec_generada_s_reg[41]_2 ,
    p_0_in__0,
    Q,
    error_prev_reg_1,
    error_prev_reg_2,
    error_prev_reg_3,
    \i_reg[5]_i_4_0 ,
    \i_reg[5]_i_4_1 ,
    \i_reg[5]_i_10_0 ,
    \i0_inferred__0/i__carry__1_1 ,
    \i_reg[5]_i_4_2 ,
    \i_reg[5]_i_4_3 ,
    \i_reg[5]_i_7_0 ,
    \i_reg[5]_i_4_4 ,
    \i_reg[5]_i_4_5 ,
    \i_reg[5]_i_8_0 ,
    RESET_IBUF,
    p_0_in);
  output [0:0]E;
  output error_prev_reg;
  output [3:0]\i_reg[5]_i_2_0 ;
  output \i_reg[1]_0 ;
  output \i_reg[2]_0 ;
  output \i_reg[0]_0 ;
  output \i_reg[1]_1 ;
  output \i_reg[2]_1 ;
  output \i_reg[0]_1 ;
  output [13:0]\sec_generada_s_reg[4] ;
  output exito_prev_reg;
  output error_prev_reg_0;
  output exito_prev_reg_0;
  input [1:0]S;
  input [1:0]\i0_inferred__0/i__carry__1_0 ;
  input [1:0]\sec_actual_reg[41]_0 ;
  input accion_listo;
  input \sec_generada_s_reg[41] ;
  input \sec_generada_s_reg[41]_0 ;
  input \sec_generada_s_reg[41]_1 ;
  input \sec_generada_s_reg[41]_2 ;
  input [0:0]p_0_in__0;
  input [1:0]Q;
  input error_prev_reg_1;
  input error_prev_reg_2;
  input error_prev_reg_3;
  input \i_reg[5]_i_4_0 ;
  input \i_reg[5]_i_4_1 ;
  input \i_reg[5]_i_10_0 ;
  input [20:0]\i0_inferred__0/i__carry__1_1 ;
  input \i_reg[5]_i_4_2 ;
  input \i_reg[5]_i_4_3 ;
  input \i_reg[5]_i_7_0 ;
  input \i_reg[5]_i_4_4 ;
  input \i_reg[5]_i_4_5 ;
  input \i_reg[5]_i_8_0 ;
  input RESET_IBUF;
  input [0:0]p_0_in;

  wire [0:0]E;
  wire [1:0]Q;
  wire RESET_IBUF;
  wire [1:0]S;
  wire accion_listo;
  wire error_prev_reg;
  wire error_prev_reg_0;
  wire error_prev_reg_1;
  wire error_prev_reg_2;
  wire error_prev_reg_3;
  wire exito_prev_i_2_n_0;
  wire exito_prev_reg;
  wire exito_prev_reg_0;
  wire flag_boton;
  wire flag_boton5_out;
  wire flag_boton_reg_i_1_n_0;
  wire [5:4]i;
  wire [5:1]i0;
  wire \i0_inferred__0/i__carry__0_n_0 ;
  wire \i0_inferred__0/i__carry__0_n_1 ;
  wire \i0_inferred__0/i__carry__0_n_2 ;
  wire \i0_inferred__0/i__carry__0_n_3 ;
  wire [1:0]\i0_inferred__0/i__carry__1_0 ;
  wire [20:0]\i0_inferred__0/i__carry__1_1 ;
  wire \i0_inferred__0/i__carry__1_n_0 ;
  wire \i0_inferred__0/i__carry__1_n_1 ;
  wire \i0_inferred__0/i__carry__1_n_2 ;
  wire \i0_inferred__0/i__carry__1_n_3 ;
  wire \i0_inferred__0/i__carry_n_0 ;
  wire \i0_inferred__0/i__carry_n_1 ;
  wire \i0_inferred__0/i__carry_n_2 ;
  wire \i0_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire \i_reg[0]_0 ;
  wire \i_reg[0]_1 ;
  wire \i_reg[0]_i_1_n_0 ;
  wire \i_reg[1]_0 ;
  wire \i_reg[1]_1 ;
  wire \i_reg[1]_i_1_n_0 ;
  wire \i_reg[2]_0 ;
  wire \i_reg[2]_1 ;
  wire \i_reg[2]_i_1_n_0 ;
  wire \i_reg[3]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_2_n_0 ;
  wire \i_reg[4]_i_2_n_1 ;
  wire \i_reg[4]_i_2_n_2 ;
  wire \i_reg[4]_i_2_n_3 ;
  wire \i_reg[4]_i_3_n_0 ;
  wire \i_reg[5]_i_10_0 ;
  wire \i_reg[5]_i_10_n_0 ;
  wire \i_reg[5]_i_13_n_0 ;
  wire \i_reg[5]_i_14_n_0 ;
  wire \i_reg[5]_i_16_n_0 ;
  wire \i_reg[5]_i_18_n_0 ;
  wire \i_reg[5]_i_19_n_0 ;
  wire \i_reg[5]_i_1_n_0 ;
  wire \i_reg[5]_i_21_n_0 ;
  wire \i_reg[5]_i_23_n_0 ;
  wire \i_reg[5]_i_25_n_0 ;
  wire [3:0]\i_reg[5]_i_2_0 ;
  wire \i_reg[5]_i_2_n_0 ;
  wire \i_reg[5]_i_3_n_0 ;
  wire \i_reg[5]_i_4_0 ;
  wire \i_reg[5]_i_4_1 ;
  wire \i_reg[5]_i_4_2 ;
  wire \i_reg[5]_i_4_3 ;
  wire \i_reg[5]_i_4_4 ;
  wire \i_reg[5]_i_4_5 ;
  wire \i_reg[5]_i_4_n_0 ;
  wire \i_reg[5]_i_7_0 ;
  wire \i_reg[5]_i_7_n_0 ;
  wire \i_reg[5]_i_8_0 ;
  wire \i_reg[5]_i_8_n_0 ;
  wire [0:0]p_0_in;
  wire [0:0]p_0_in__0;
  wire [1:19]sec_actual;
  wire [1:0]\sec_actual_reg[41]_0 ;
  wire \sec_generada_s[1]_i_3_n_0 ;
  wire \sec_generada_s_reg[41] ;
  wire \sec_generada_s_reg[41]_0 ;
  wire \sec_generada_s_reg[41]_1 ;
  wire \sec_generada_s_reg[41]_2 ;
  wire [13:0]\sec_generada_s_reg[4] ;
  wire [3:0]\NLW_i0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[5]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_i_reg[5]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    error_prev_i_1
       (.I0(\i_reg[5]_i_4_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_3_n_0 ),
        .I3(RESET_IBUF),
        .I4(p_0_in__0),
        .O(error_prev_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \estado_actual[2]_i_2 
       (.I0(p_0_in__0),
        .I1(\i_reg[5]_i_3_n_0 ),
        .I2(flag_boton_reg_i_1_n_0),
        .I3(\i_reg[5]_i_4_n_0 ),
        .O(error_prev_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \estado_actual[2]_i_3 
       (.I0(\i_reg[5]_i_10_n_0 ),
        .I1(\i_reg[5]_i_8_n_0 ),
        .I2(\i_reg[5]_i_7_n_0 ),
        .I3(p_0_in),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(exito_prev_reg_0));
  LUT3 #(
    .INIT(8'h74)) 
    exito_prev_i_1
       (.I0(exito_prev_i_2_n_0),
        .I1(RESET_IBUF),
        .I2(p_0_in),
        .O(exito_prev_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    exito_prev_i_2
       (.I0(\i_reg[5]_i_10_n_0 ),
        .I1(\i_reg[5]_i_8_n_0 ),
        .I2(\i_reg[5]_i_7_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(exito_prev_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    flag_boton_reg
       (.CLR(1'b0),
        .D(flag_boton_reg_i_1_n_0),
        .G(flag_boton5_out),
        .GE(1'b1),
        .Q(flag_boton));
  LUT5 #(
    .INIT(32'h55555554)) 
    flag_boton_reg_i_1
       (.I0(flag_boton),
        .I1(\sec_generada_s_reg[41]_2 ),
        .I2(\sec_generada_s_reg[41]_1 ),
        .I3(\sec_generada_s_reg[41]_0 ),
        .I4(\sec_generada_s_reg[41] ),
        .O(flag_boton_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    flag_boton_reg_i_2
       (.I0(flag_boton),
        .I1(\sec_generada_s_reg[41] ),
        .I2(\sec_generada_s_reg[41]_0 ),
        .I3(\sec_generada_s_reg[41]_1 ),
        .I4(\sec_generada_s_reg[41]_2 ),
        .I5(\i_reg[5]_i_4_n_0 ),
        .O(flag_boton5_out));
  CARRY4 \i0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\i0_inferred__0/i__carry_n_0 ,\i0_inferred__0/i__carry_n_1 ,\i0_inferred__0/i__carry_n_2 ,\i0_inferred__0/i__carry_n_3 }),
        .CYINIT(i__carry_i_1_n_0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_i0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({S,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  CARRY4 \i0_inferred__0/i__carry__0 
       (.CI(\i0_inferred__0/i__carry_n_0 ),
        .CO({\i0_inferred__0/i__carry__0_n_0 ,\i0_inferred__0/i__carry__0_n_1 ,\i0_inferred__0/i__carry__0_n_2 ,\i0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,\i0_inferred__0/i__carry__1_0 [1],i__carry__0_i_3_n_0,\i0_inferred__0/i__carry__1_0 [0]}));
  CARRY4 \i0_inferred__0/i__carry__1 
       (.CI(\i0_inferred__0/i__carry__0_n_0 ),
        .CO({\i0_inferred__0/i__carry__1_n_0 ,\i0_inferred__0/i__carry__1_n_1 ,\i0_inferred__0/i__carry__1_n_2 ,\i0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,\sec_actual_reg[41]_0 [1],i__carry__1_i_3_n_0,\sec_actual_reg[41]_0 [0]}));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_1
       (.I0(sec_actual[13]),
        .I1(\i0_inferred__0/i__carry__1_1 [12]),
        .I2(sec_actual[14]),
        .I3(\i0_inferred__0/i__carry__1_1 [11]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_3
       (.I0(\sec_generada_s_reg[4] [8]),
        .I1(\i0_inferred__0/i__carry__1_1 [8]),
        .I2(sec_actual[19]),
        .I3(\i0_inferred__0/i__carry__1_1 [9]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(sec_actual[1]),
        .I1(\i0_inferred__0/i__carry__1_1 [20]),
        .I2(sec_actual[2]),
        .I3(\i0_inferred__0/i__carry__1_1 [19]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(\sec_generada_s_reg[4] [0]),
        .I1(\i0_inferred__0/i__carry__1_1 [0]),
        .I2(\i0_inferred__0/i__carry__1_1 [16]),
        .I3(sec_actual[6]),
        .I4(\i0_inferred__0/i__carry__1_1 [15]),
        .I5(sec_actual[8]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(\sec_generada_s_reg[4] [0]),
        .I1(\i0_inferred__0/i__carry__1_1 [0]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(\sec_generada_s_reg[4] [2]),
        .I1(\i0_inferred__0/i__carry__1_1 [2]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\sec_generada_s_reg[4] [0]),
        .I1(\i0_inferred__0/i__carry__1_1 [0]),
        .I2(\sec_generada_s_reg[4] [1]),
        .I3(\i0_inferred__0/i__carry__1_1 [1]),
        .O(i__carry_i_5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.CLR(1'b0),
        .D(\i_reg[0]_i_1_n_0 ),
        .G(\i_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\i_reg[5]_i_2_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \i_reg[0]_i_1 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(\i_reg[5]_i_2_0 [0]),
        .O(\i_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.CLR(1'b0),
        .D(\i_reg[1]_i_1_n_0 ),
        .G(\i_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\i_reg[5]_i_2_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \i_reg[1]_i_1 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(i0[1]),
        .O(\i_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.CLR(1'b0),
        .D(\i_reg[2]_i_1_n_0 ),
        .G(\i_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\i_reg[5]_i_2_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \i_reg[2]_i_1 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(i0[2]),
        .O(\i_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.CLR(1'b0),
        .D(\i_reg[3]_i_1_n_0 ),
        .G(\i_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\i_reg[5]_i_2_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \i_reg[3]_i_1 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(i0[3]),
        .O(\i_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.CLR(1'b0),
        .D(\i_reg[4]_i_1_n_0 ),
        .G(\i_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(i[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \i_reg[4]_i_1 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(i0[4]),
        .O(\i_reg[4]_i_1_n_0 ));
  CARRY4 \i_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[4]_i_2_n_0 ,\i_reg[4]_i_2_n_1 ,\i_reg[4]_i_2_n_2 ,\i_reg[4]_i_2_n_3 }),
        .CYINIT(\i_reg[5]_i_2_0 [0]),
        .DI({1'b0,1'b0,1'b0,\i_reg[5]_i_2_0 [1]}),
        .O(i0[4:1]),
        .S({i[4],\i_reg[5]_i_2_0 [3:2],\i_reg[4]_i_3_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg[4]_i_3 
       (.I0(\i_reg[5]_i_2_0 [1]),
        .O(\i_reg[4]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.CLR(1'b0),
        .D(\i_reg[5]_i_1_n_0 ),
        .G(\i_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(i[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \i_reg[5]_i_1 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(i0[5]),
        .O(\i_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBEB88E8BB28882)) 
    \i_reg[5]_i_10 
       (.I0(\i_reg[5]_i_4_0 ),
        .I1(i[5]),
        .I2(\i_reg[5]_i_23_n_0 ),
        .I3(i[4]),
        .I4(\i_reg[5]_i_4_1 ),
        .I5(\i_reg[5]_i_25_n_0 ),
        .O(\i_reg[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFFF13131CCC)) 
    \i_reg[5]_i_13 
       (.I0(\i0_inferred__0/i__carry__1_1 [0]),
        .I1(\i_reg[5]_i_2_0 [3]),
        .I2(\i_reg[5]_i_2_0 [1]),
        .I3(\i_reg[5]_i_2_0 [0]),
        .I4(\i_reg[5]_i_2_0 [2]),
        .I5(\i_reg[5]_i_7_0 ),
        .O(\i_reg[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    \i_reg[5]_i_14 
       (.I0(\i_reg[5]_i_2_0 [1]),
        .I1(\i_reg[5]_i_2_0 [0]),
        .I2(\i_reg[5]_i_2_0 [2]),
        .I3(\i_reg[5]_i_2_0 [3]),
        .O(\i_reg[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h56AAAAAA)) 
    \i_reg[5]_i_16 
       (.I0(i[4]),
        .I1(\i_reg[5]_i_2_0 [1]),
        .I2(\i_reg[5]_i_2_0 [0]),
        .I3(\i_reg[5]_i_2_0 [2]),
        .I4(\i_reg[5]_i_2_0 [3]),
        .O(\i_reg[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h55FB5FFBFBAAFAAA)) 
    \i_reg[5]_i_18 
       (.I0(i[4]),
        .I1(\i0_inferred__0/i__carry__1_1 [0]),
        .I2(\i_reg[5]_i_2_0 [1]),
        .I3(\i_reg[5]_i_2_0 [2]),
        .I4(\i_reg[5]_i_2_0 [0]),
        .I5(\i_reg[5]_i_2_0 [3]),
        .O(\i_reg[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFF3FF2F2CBC8)) 
    \i_reg[5]_i_19 
       (.I0(\i_reg[5]_i_8_0 ),
        .I1(\i_reg[5]_i_2_0 [0]),
        .I2(\i_reg[5]_i_2_0 [2]),
        .I3(\i0_inferred__0/i__carry__1_1 [2]),
        .I4(\i_reg[5]_i_2_0 [1]),
        .I5(\i_reg[5]_i_2_0 [3]),
        .O(\i_reg[5]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \i_reg[5]_i_2 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(flag_boton_reg_i_1_n_0),
        .I2(\i_reg[5]_i_4_n_0 ),
        .I3(\i0_inferred__0/i__carry__1_n_0 ),
        .O(\i_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA95959555)) 
    \i_reg[5]_i_21 
       (.I0(i[5]),
        .I1(\i_reg[5]_i_2_0 [3]),
        .I2(\i_reg[5]_i_2_0 [2]),
        .I3(\i_reg[5]_i_2_0 [0]),
        .I4(\i_reg[5]_i_2_0 [1]),
        .I5(i[4]),
        .O(\i_reg[5]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_reg[5]_i_23 
       (.I0(\i_reg[5]_i_2_0 [2]),
        .I1(\i_reg[5]_i_2_0 [3]),
        .O(\i_reg[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h7141414141417D41)) 
    \i_reg[5]_i_25 
       (.I0(\i_reg[5]_i_10_0 ),
        .I1(\i_reg[5]_i_2_0 [3]),
        .I2(\i_reg[5]_i_2_0 [2]),
        .I3(\i0_inferred__0/i__carry__1_1 [0]),
        .I4(\i_reg[5]_i_2_0 [1]),
        .I5(\i_reg[5]_i_2_0 [0]),
        .O(\i_reg[5]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h556A)) 
    \i_reg[5]_i_28 
       (.I0(\i_reg[5]_i_2_0 [3]),
        .I1(\i_reg[5]_i_2_0 [1]),
        .I2(\i_reg[5]_i_2_0 [0]),
        .I3(\i_reg[5]_i_2_0 [2]),
        .O(\i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \i_reg[5]_i_3 
       (.I0(error_prev_reg_1),
        .I1(\i_reg[5]_i_7_n_0 ),
        .I2(\i_reg[5]_i_8_n_0 ),
        .I3(error_prev_reg_2),
        .I4(\i_reg[5]_i_10_n_0 ),
        .I5(error_prev_reg_3),
        .O(\i_reg[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg[5]_i_30 
       (.I0(\i_reg[5]_i_2_0 [2]),
        .I1(\i_reg[5]_i_2_0 [0]),
        .I2(\i_reg[5]_i_2_0 [1]),
        .O(\i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_reg[5]_i_35 
       (.I0(\i_reg[5]_i_2_0 [1]),
        .I1(\i_reg[5]_i_2_0 [0]),
        .O(\i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \i_reg[5]_i_39 
       (.I0(\i_reg[5]_i_2_0 [3]),
        .I1(\i_reg[5]_i_2_0 [1]),
        .I2(\i_reg[5]_i_2_0 [0]),
        .I3(\i_reg[5]_i_2_0 [2]),
        .O(\i_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF02)) 
    \i_reg[5]_i_4 
       (.I0(\i_reg[5]_i_7_n_0 ),
        .I1(\i_reg[5]_i_8_n_0 ),
        .I2(\i_reg[5]_i_10_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\i_reg[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \i_reg[5]_i_41 
       (.I0(\i_reg[5]_i_2_0 [2]),
        .I1(\i_reg[5]_i_2_0 [0]),
        .I2(\i_reg[5]_i_2_0 [1]),
        .O(\i_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i_reg[5]_i_46 
       (.I0(\i_reg[5]_i_2_0 [1]),
        .I1(\i_reg[5]_i_2_0 [0]),
        .O(\i_reg[0]_1 ));
  CARRY4 \i_reg[5]_i_5 
       (.CI(\i_reg[4]_i_2_n_0 ),
        .CO(\NLW_i_reg[5]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg[5]_i_5_O_UNCONNECTED [3:1],i0[5]}),
        .S({1'b0,1'b0,1'b0,i[5]}));
  LUT6 #(
    .INIT(64'hFCF5F5CF0C0505C0)) 
    \i_reg[5]_i_7 
       (.I0(\i_reg[5]_i_4_2 ),
        .I1(\i_reg[5]_i_13_n_0 ),
        .I2(i[5]),
        .I3(\i_reg[5]_i_14_n_0 ),
        .I4(i[4]),
        .I5(\i_reg[5]_i_4_3 ),
        .O(\i_reg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00008F888F88)) 
    \i_reg[5]_i_8 
       (.I0(\i_reg[5]_i_16_n_0 ),
        .I1(\i_reg[5]_i_4_4 ),
        .I2(\i_reg[5]_i_18_n_0 ),
        .I3(\i_reg[5]_i_19_n_0 ),
        .I4(\i_reg[5]_i_4_5 ),
        .I5(\i_reg[5]_i_21_n_0 ),
        .O(\i_reg[5]_i_8_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[10] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [14]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[11] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [13]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[13] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [12]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[14] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [11]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[17] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [10]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[19] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [9]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[1] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [20]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[20] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [8]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[21] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [7]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[22] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [6]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[23] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [5]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[26] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [4]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[28] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [3]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[2] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [19]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[32] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [2]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[34] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [1]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[41] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [0]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[4] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [18]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[5] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [17]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(\sec_generada_s_reg[4] [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[6] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [16]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sec_actual_reg[8] 
       (.CLR(1'b0),
        .D(\i0_inferred__0/i__carry__1_1 [15]),
        .G(\i0_inferred__0/i__carry__1_n_0 ),
        .GE(1'b1),
        .Q(sec_actual[8]));
  LUT3 #(
    .INIT(8'h8A)) 
    \sec_generada_s[1]_i_1 
       (.I0(accion_listo),
        .I1(\i_reg[5]_i_4_n_0 ),
        .I2(\sec_generada_s[1]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \sec_generada_s[1]_i_3 
       (.I0(\i_reg[5]_i_3_n_0 ),
        .I1(\sec_generada_s_reg[41] ),
        .I2(\sec_generada_s_reg[41]_0 ),
        .I3(\sec_generada_s_reg[41]_1 ),
        .I4(\sec_generada_s_reg[41]_2 ),
        .I5(flag_boton),
        .O(\sec_generada_s[1]_i_3_n_0 ));
endmodule

module Controlador_de_Sec
   (\cur_state_reg[0]_0 ,
    pedir_tiempo_reg_P_0,
    \indice_reg[3]_0 ,
    Q,
    \indice_reg[1]_0 ,
    \indice_reg[2]_0 ,
    \indice_reg[2]_1 ,
    \indice_reg[2]_2 ,
    D,
    sec_lista,
    fin_tiempo,
    \led_s_reg[1] ,
    fin_detectado_reg_i_5_0,
    fin_detectado_reg_i_4_0,
    \led_s_reg[1]_0 ,
    \led_s_reg[1]_1 ,
    fin_detectado_reg_i_3_0,
    fin_detectado_reg_i_5_1,
    fin_detectado_reg_i_5_2,
    fin_detectado_reg_i_5_3,
    fin_detectado_reg_i_4_1,
    fin_detectado_reg_i_4_2,
    fin_detectado_reg_i_5_4,
    fin_detectado_reg_i_5_5,
    clk_BUFG);
  output \cur_state_reg[0]_0 ;
  output pedir_tiempo_reg_P_0;
  output [3:0]\indice_reg[3]_0 ;
  output [1:0]Q;
  output \indice_reg[1]_0 ;
  output \indice_reg[2]_0 ;
  output \indice_reg[2]_1 ;
  output \indice_reg[2]_2 ;
  output [3:0]D;
  input sec_lista;
  input fin_tiempo;
  input \led_s_reg[1] ;
  input [0:0]fin_detectado_reg_i_5_0;
  input fin_detectado_reg_i_4_0;
  input \led_s_reg[1]_0 ;
  input \led_s_reg[1]_1 ;
  input fin_detectado_reg_i_3_0;
  input fin_detectado_reg_i_5_1;
  input fin_detectado_reg_i_5_2;
  input fin_detectado_reg_i_5_3;
  input fin_detectado_reg_i_4_1;
  input fin_detectado_reg_i_4_2;
  input fin_detectado_reg_i_5_4;
  input fin_detectado_reg_i_5_5;
  input clk_BUFG;

  wire [3:0]D;
  wire [1:0]Q;
  wire clk_BUFG;
  wire \cur_state[0]_i_1_n_0 ;
  wire \cur_state[1]_i_1_n_0 ;
  wire \cur_state_reg[0]_0 ;
  wire fin_detectado;
  wire fin_detectado_reg_i_10_n_0;
  wire fin_detectado_reg_i_11_n_0;
  wire fin_detectado_reg_i_12_n_0;
  wire fin_detectado_reg_i_14_n_0;
  wire fin_detectado_reg_i_15_n_0;
  wire fin_detectado_reg_i_16_n_0;
  wire fin_detectado_reg_i_17_n_0;
  wire fin_detectado_reg_i_1_n_0;
  wire fin_detectado_reg_i_2_n_0;
  wire fin_detectado_reg_i_3_0;
  wire fin_detectado_reg_i_3_n_0;
  wire fin_detectado_reg_i_4_0;
  wire fin_detectado_reg_i_4_1;
  wire fin_detectado_reg_i_4_2;
  wire fin_detectado_reg_i_4_n_0;
  wire [0:0]fin_detectado_reg_i_5_0;
  wire fin_detectado_reg_i_5_1;
  wire fin_detectado_reg_i_5_2;
  wire fin_detectado_reg_i_5_3;
  wire fin_detectado_reg_i_5_4;
  wire fin_detectado_reg_i_5_5;
  wire fin_detectado_reg_i_5_n_0;
  wire fin_detectado_reg_i_7_n_0;
  wire fin_detectado_reg_i_8_n_0;
  wire fin_tiempo;
  wire \indice[0]_i_1_n_0 ;
  wire \indice[0]_i_3_n_0 ;
  wire \indice[0]_i_4_n_0 ;
  wire \indice[0]_i_5_n_0 ;
  wire [5:4]indice_reg;
  wire \indice_reg[0]_i_2_n_0 ;
  wire \indice_reg[0]_i_2_n_1 ;
  wire \indice_reg[0]_i_2_n_2 ;
  wire \indice_reg[0]_i_2_n_3 ;
  wire \indice_reg[0]_i_2_n_4 ;
  wire \indice_reg[0]_i_2_n_5 ;
  wire \indice_reg[0]_i_2_n_6 ;
  wire \indice_reg[0]_i_2_n_7 ;
  wire \indice_reg[1]_0 ;
  wire \indice_reg[2]_0 ;
  wire \indice_reg[2]_1 ;
  wire \indice_reg[2]_2 ;
  wire [3:0]\indice_reg[3]_0 ;
  wire \indice_reg[4]_i_1_n_3 ;
  wire \indice_reg[4]_i_1_n_6 ;
  wire \indice_reg[4]_i_1_n_7 ;
  wire \led_s_reg[1] ;
  wire \led_s_reg[1]_0 ;
  wire \led_s_reg[1]_1 ;
  wire \nxt_state[0]_C_n_0 ;
  wire \nxt_state[0]_LDC_n_0 ;
  wire \nxt_state[1]_LDC_i_1_n_0 ;
  wire \nxt_state[1]_LDC_i_2_n_0 ;
  wire \nxt_state[1]_LDC_n_0 ;
  wire \nxt_state[1]_P_n_0 ;
  wire pedir_tiempo_reg_LDC_i_1_n_0;
  wire pedir_tiempo_reg_LDC_i_2_n_0;
  wire pedir_tiempo_reg_P_0;
  wire sec_lista;
  wire [3:1]\NLW_indice_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_indice_reg[4]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \cur_state[0]_i_1 
       (.I0(\nxt_state[0]_LDC_n_0 ),
        .I1(\nxt_state[0]_C_n_0 ),
        .O(\cur_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cur_state[1]_i_1 
       (.I0(\nxt_state[1]_LDC_n_0 ),
        .I1(\nxt_state[1]_P_n_0 ),
        .O(\cur_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cur_state_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\cur_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\cur_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    fin_detectado_reg
       (.CLR(1'b0),
        .D(fin_detectado_reg_i_1_n_0),
        .G(fin_detectado_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fin_detectado));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    fin_detectado_reg_i_1
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(fin_detectado_reg_i_4_n_0),
        .I4(fin_detectado_reg_i_5_n_0),
        .O(fin_detectado_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF56AAA9550000)) 
    fin_detectado_reg_i_10
       (.I0(\indice_reg[3]_0 [3]),
        .I1(\indice_reg[3]_0 [1]),
        .I2(\indice_reg[3]_0 [0]),
        .I3(\indice_reg[3]_0 [2]),
        .I4(fin_detectado_reg_i_4_1),
        .I5(fin_detectado_reg_i_4_2),
        .O(fin_detectado_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'hCEC33B3B02000808)) 
    fin_detectado_reg_i_11
       (.I0(fin_detectado_reg_i_5_0),
        .I1(\indice_reg[3]_0 [3]),
        .I2(\indice_reg[3]_0 [1]),
        .I3(\indice_reg[3]_0 [0]),
        .I4(\indice_reg[3]_0 [2]),
        .I5(fin_detectado_reg_i_4_0),
        .O(fin_detectado_reg_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    fin_detectado_reg_i_12
       (.I0(\indice_reg[3]_0 [3]),
        .I1(\indice_reg[3]_0 [2]),
        .I2(\indice_reg[3]_0 [0]),
        .I3(\indice_reg[3]_0 [1]),
        .O(fin_detectado_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFF556AAA950000)) 
    fin_detectado_reg_i_14
       (.I0(\indice_reg[3]_0 [3]),
        .I1(\indice_reg[3]_0 [1]),
        .I2(\indice_reg[3]_0 [0]),
        .I3(\indice_reg[3]_0 [2]),
        .I4(fin_detectado_reg_i_5_4),
        .I5(fin_detectado_reg_i_5_5),
        .O(fin_detectado_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'hECECE33320202000)) 
    fin_detectado_reg_i_15
       (.I0(fin_detectado_reg_i_5_0),
        .I1(\indice_reg[3]_0 [3]),
        .I2(\indice_reg[3]_0 [1]),
        .I3(\indice_reg[3]_0 [0]),
        .I4(\indice_reg[3]_0 [2]),
        .I5(fin_detectado_reg_i_5_3),
        .O(fin_detectado_reg_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    fin_detectado_reg_i_16
       (.I0(\indice_reg[3]_0 [3]),
        .I1(\indice_reg[3]_0 [1]),
        .I2(\indice_reg[3]_0 [0]),
        .I3(\indice_reg[3]_0 [2]),
        .O(fin_detectado_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'hE2222BBB22222888)) 
    fin_detectado_reg_i_17
       (.I0(fin_detectado_reg_i_5_1),
        .I1(\indice_reg[3]_0 [3]),
        .I2(\indice_reg[3]_0 [1]),
        .I3(\indice_reg[3]_0 [0]),
        .I4(\indice_reg[3]_0 [2]),
        .I5(fin_detectado_reg_i_5_2),
        .O(fin_detectado_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fin_detectado_reg_i_18
       (.I0(\indice_reg[3]_0 [2]),
        .I1(\indice_reg[3]_0 [3]),
        .O(\indice_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h03030307)) 
    fin_detectado_reg_i_2
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(fin_detectado_reg_i_5_n_0),
        .I4(fin_detectado_reg_i_4_n_0),
        .O(fin_detectado_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFCFAFACF0C0A0AC0)) 
    fin_detectado_reg_i_3
       (.I0(\led_s_reg[1]_0 ),
        .I1(fin_detectado_reg_i_7_n_0),
        .I2(indice_reg[5]),
        .I3(fin_detectado_reg_i_8_n_0),
        .I4(indice_reg[4]),
        .I5(\led_s_reg[1]_1 ),
        .O(fin_detectado_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fin_detectado_reg_i_30
       (.I0(\indice_reg[3]_0 [1]),
        .I1(\indice_reg[3]_0 [0]),
        .O(\indice_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFCFAFACF0C0A0AC0)) 
    fin_detectado_reg_i_4
       (.I0(fin_detectado_reg_i_10_n_0),
        .I1(fin_detectado_reg_i_11_n_0),
        .I2(indice_reg[5]),
        .I3(fin_detectado_reg_i_12_n_0),
        .I4(indice_reg[4]),
        .I5(\led_s_reg[1] ),
        .O(fin_detectado_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    fin_detectado_reg_i_41
       (.I0(\indice_reg[3]_0 [2]),
        .I1(\indice_reg[3]_0 [0]),
        .I2(\indice_reg[3]_0 [1]),
        .O(\indice_reg[2]_1 ));
  LUT3 #(
    .INIT(8'h6A)) 
    fin_detectado_reg_i_46
       (.I0(\indice_reg[3]_0 [2]),
        .I1(\indice_reg[3]_0 [0]),
        .I2(\indice_reg[3]_0 [1]),
        .O(\indice_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFCFAFACF0C0A0AC0)) 
    fin_detectado_reg_i_5
       (.I0(fin_detectado_reg_i_14_n_0),
        .I1(fin_detectado_reg_i_15_n_0),
        .I2(indice_reg[5]),
        .I3(fin_detectado_reg_i_16_n_0),
        .I4(indice_reg[4]),
        .I5(fin_detectado_reg_i_17_n_0),
        .O(fin_detectado_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E8282828282BE82)) 
    fin_detectado_reg_i_7
       (.I0(fin_detectado_reg_i_3_0),
        .I1(\indice_reg[3]_0 [2]),
        .I2(\indice_reg[3]_0 [3]),
        .I3(fin_detectado_reg_i_5_0),
        .I4(\indice_reg[3]_0 [1]),
        .I5(\indice_reg[3]_0 [0]),
        .O(fin_detectado_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fin_detectado_reg_i_8
       (.I0(\indice_reg[3]_0 [2]),
        .I1(\indice_reg[3]_0 [3]),
        .O(fin_detectado_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \indice[0]_i_1 
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(fin_detectado_reg_i_4_n_0),
        .I2(fin_detectado_reg_i_5_n_0),
        .O(\indice[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_3 
       (.I0(Q[0]),
        .O(\indice[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_4 
       (.I0(\indice_reg[3]_0 [1]),
        .O(\indice[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indice[0]_i_5 
       (.I0(\indice_reg[3]_0 [0]),
        .O(\indice[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[0] 
       (.C(fin_tiempo),
        .CE(\indice[0]_i_1_n_0 ),
        .CLR(\indice[0]_i_3_n_0 ),
        .D(\indice_reg[0]_i_2_n_7 ),
        .Q(\indice_reg[3]_0 [0]));
  CARRY4 \indice_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\indice_reg[0]_i_2_n_0 ,\indice_reg[0]_i_2_n_1 ,\indice_reg[0]_i_2_n_2 ,\indice_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\indice_reg[0]_i_2_n_4 ,\indice_reg[0]_i_2_n_5 ,\indice_reg[0]_i_2_n_6 ,\indice_reg[0]_i_2_n_7 }),
        .S({\indice_reg[3]_0 [3:2],\indice[0]_i_4_n_0 ,\indice[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[1] 
       (.C(fin_tiempo),
        .CE(\indice[0]_i_1_n_0 ),
        .CLR(\indice[0]_i_3_n_0 ),
        .D(\indice_reg[0]_i_2_n_6 ),
        .Q(\indice_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[2] 
       (.C(fin_tiempo),
        .CE(\indice[0]_i_1_n_0 ),
        .CLR(\indice[0]_i_3_n_0 ),
        .D(\indice_reg[0]_i_2_n_5 ),
        .Q(\indice_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[3] 
       (.C(fin_tiempo),
        .CE(\indice[0]_i_1_n_0 ),
        .CLR(\indice[0]_i_3_n_0 ),
        .D(\indice_reg[0]_i_2_n_4 ),
        .Q(\indice_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[4] 
       (.C(fin_tiempo),
        .CE(\indice[0]_i_1_n_0 ),
        .CLR(\indice[0]_i_3_n_0 ),
        .D(\indice_reg[4]_i_1_n_7 ),
        .Q(indice_reg[4]));
  CARRY4 \indice_reg[4]_i_1 
       (.CI(\indice_reg[0]_i_2_n_0 ),
        .CO({\NLW_indice_reg[4]_i_1_CO_UNCONNECTED [3:1],\indice_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indice_reg[4]_i_1_O_UNCONNECTED [3:2],\indice_reg[4]_i_1_n_6 ,\indice_reg[4]_i_1_n_7 }),
        .S({1'b0,1'b0,indice_reg}));
  FDCE #(
    .INIT(1'b0)) 
    \indice_reg[5] 
       (.C(fin_tiempo),
        .CE(\indice[0]_i_1_n_0 ),
        .CLR(\indice[0]_i_3_n_0 ),
        .D(\indice_reg[4]_i_1_n_6 ),
        .Q(indice_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \led_s[1]_i_1 
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(fin_detectado_reg_i_5_n_0),
        .I4(fin_detectado_reg_i_4_n_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \led_s[2]_i_1 
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(fin_detectado_reg_i_4_n_0),
        .I4(fin_detectado_reg_i_5_n_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \led_s[3]_i_1 
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(fin_detectado_reg_i_5_n_0),
        .I4(fin_detectado_reg_i_4_n_0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \led_s[4]_i_1 
       (.I0(fin_detectado_reg_i_3_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(fin_detectado_reg_i_4_n_0),
        .I4(fin_detectado_reg_i_5_n_0),
        .O(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \nxt_state[0]_C 
       (.C(sec_lista),
        .CE(1'b1),
        .CLR(\nxt_state[1]_LDC_i_1_n_0 ),
        .D(1'b1),
        .Q(\nxt_state[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nxt_state[0]_LDC 
       (.CLR(\nxt_state[1]_LDC_i_1_n_0 ),
        .D(1'b1),
        .G(\nxt_state[1]_LDC_i_2_n_0 ),
        .GE(1'b1),
        .Q(\nxt_state[0]_LDC_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nxt_state[1]_LDC 
       (.CLR(\nxt_state[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\nxt_state[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\nxt_state[1]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \nxt_state[1]_LDC_i_1 
       (.I0(fin_detectado),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\nxt_state[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \nxt_state[1]_LDC_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\nxt_state[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \nxt_state[1]_P 
       (.C(sec_lista),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\nxt_state[1]_LDC_i_1_n_0 ),
        .Q(\nxt_state[1]_P_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    pedir_tiempo_reg_LDC
       (.CLR(pedir_tiempo_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(pedir_tiempo_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(\cur_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h01010100)) 
    pedir_tiempo_reg_LDC_i_1
       (.I0(fin_detectado_reg_i_5_n_0),
        .I1(fin_detectado_reg_i_4_n_0),
        .I2(fin_detectado_reg_i_3_n_0),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(pedir_tiempo_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pedir_tiempo_reg_LDC_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(pedir_tiempo_reg_LDC_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    pedir_tiempo_reg_P
       (.C(fin_tiempo),
        .CE(1'b1),
        .D(1'b0),
        .PRE(pedir_tiempo_reg_LDC_i_1_n_0),
        .Q(pedir_tiempo_reg_P_0));
endmodule

module Decod_Leds_Sec
   (Q,
    D,
    clk_BUFG,
    AR);
  output [3:0]Q;
  input [3:0]D;
  input clk_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [3:0]D;
  wire [3:0]Q;
  wire clk_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \led_s_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_s_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_s_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_s_reg[4] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
endmodule

module DivisorReloj
   (clk,
    AR,
    CLK,
    RESET_IBUF);
  output clk;
  output [0:0]AR;
  input CLK;
  input RESET_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire RESET_IBUF;
  wire clk;
  wire clk_temp_i_1_n_0;
  wire clk_temp_n_0;
  wire [5:0]contador;
  wire \contador[0]_i_1_n_0 ;
  wire [5:1]contador_0;

  LUT2 #(
    .INIT(4'h1)) 
    clk_temp
       (.I0(contador[1]),
        .I1(contador[2]),
        .O(clk_temp_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    clk_temp_i_1
       (.I0(contador[5]),
        .I1(contador[0]),
        .I2(contador[4]),
        .I3(clk_temp_n_0),
        .I4(contador[3]),
        .I5(clk),
        .O(clk_temp_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_temp_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_temp_i_1_n_0),
        .Q(clk));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_1 
       (.I0(contador[0]),
        .O(\contador[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55A855AA55AA55AA)) 
    \contador[1]_i_1 
       (.I0(contador[0]),
        .I1(contador[3]),
        .I2(contador[2]),
        .I3(contador[1]),
        .I4(contador[4]),
        .I5(contador[5]),
        .O(contador_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \contador[2]_i_1 
       (.I0(contador[0]),
        .I1(contador[2]),
        .I2(contador[1]),
        .O(contador_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \contador[3]_i_1 
       (.I0(contador[0]),
        .I1(contador[3]),
        .I2(contador[2]),
        .I3(contador[1]),
        .O(contador_0[3]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \contador[4]_i_1 
       (.I0(contador[0]),
        .I1(contador[3]),
        .I2(contador[2]),
        .I3(contador[1]),
        .I4(contador[4]),
        .I5(contador[5]),
        .O(contador_0[4]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \contador[5]_i_1 
       (.I0(contador[0]),
        .I1(contador[3]),
        .I2(contador[2]),
        .I3(contador[1]),
        .I4(contador[4]),
        .I5(contador[5]),
        .O(contador_0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[5]_i_2 
       (.I0(RESET_IBUF),
        .O(AR));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\contador[0]_i_1_n_0 ),
        .Q(contador[0]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(contador_0[1]),
        .Q(contador[1]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(contador_0[2]),
        .Q(contador[2]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(contador_0[3]),
        .Q(contador[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(contador_0[4]),
        .Q(contador[4]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(contador_0[5]),
        .Q(contador[5]));
endmodule

module GenSecuencia
   (sec_lista,
    \sec_generada_s_reg[41]_0 ,
    \sec_generada_s_reg[23]_0 ,
    \sec_generada_s_reg[32]_0 ,
    Q,
    \sec_generada_s_reg[41]_1 ,
    \sec_generada_s_reg[41]_2 ,
    \sec_generada_s_reg[34]_0 ,
    \sec_generada_s_reg[41]_3 ,
    \sec_generada_s_reg[21]_0 ,
    \sec_generada_s_reg[4]_0 ,
    \indice_reg[3] ,
    \indice_reg[2] ,
    \indice_reg[2]_0 ,
    \sec_generada_s_reg[34]_1 ,
    \sec_generada_s_reg[1]_0 ,
    \indice_reg[2]_1 ,
    \sec_generada_s_reg[41]_4 ,
    \sec_generada_s_reg[34]_2 ,
    \indice_reg[2]_2 ,
    \indice_reg[2]_3 ,
    \indice_reg[2]_4 ,
    \indice_reg[2]_5 ,
    S,
    \sec_generada_s_reg[21]_1 ,
    \sec_generada_s_reg[4]_1 ,
    E,
    clk_BUFG,
    \i_reg[5]_i_7 ,
    \i_reg[5]_i_10 ,
    \i_reg[5]_i_7_0 ,
    \i_reg[5]_i_7_1 ,
    \i_reg[5]_i_8 ,
    \i_reg[5]_i_8_0 ,
    \i_reg[5]_i_8_1 ,
    fin_detectado_reg_i_3,
    fin_detectado_reg_i_4,
    fin_detectado_reg_i_10,
    fin_detectado_reg_i_14,
    fin_detectado_reg_i_3_0,
    \i0_inferred__0/i__carry__1 ,
    D);
  output sec_lista;
  output \sec_generada_s_reg[41]_0 ;
  output \sec_generada_s_reg[23]_0 ;
  output \sec_generada_s_reg[32]_0 ;
  output [20:0]Q;
  output \sec_generada_s_reg[41]_1 ;
  output \sec_generada_s_reg[41]_2 ;
  output \sec_generada_s_reg[34]_0 ;
  output \sec_generada_s_reg[41]_3 ;
  output \sec_generada_s_reg[21]_0 ;
  output \sec_generada_s_reg[4]_0 ;
  output \indice_reg[3] ;
  output \indice_reg[2] ;
  output \indice_reg[2]_0 ;
  output \sec_generada_s_reg[34]_1 ;
  output \sec_generada_s_reg[1]_0 ;
  output \indice_reg[2]_1 ;
  output \sec_generada_s_reg[41]_4 ;
  output \sec_generada_s_reg[34]_2 ;
  output \indice_reg[2]_2 ;
  output \indice_reg[2]_3 ;
  output \indice_reg[2]_4 ;
  output \indice_reg[2]_5 ;
  output [1:0]S;
  output [1:0]\sec_generada_s_reg[21]_1 ;
  output [1:0]\sec_generada_s_reg[4]_1 ;
  input [0:0]E;
  input clk_BUFG;
  input \i_reg[5]_i_7 ;
  input [3:0]\i_reg[5]_i_10 ;
  input \i_reg[5]_i_7_0 ;
  input \i_reg[5]_i_7_1 ;
  input \i_reg[5]_i_8 ;
  input \i_reg[5]_i_8_0 ;
  input \i_reg[5]_i_8_1 ;
  input [3:0]fin_detectado_reg_i_3;
  input fin_detectado_reg_i_4;
  input fin_detectado_reg_i_10;
  input fin_detectado_reg_i_14;
  input fin_detectado_reg_i_3_0;
  input [13:0]\i0_inferred__0/i__carry__1 ;
  input [20:0]D;

  wire [20:0]D;
  wire [0:0]E;
  wire [20:0]Q;
  wire [1:0]S;
  wire clk_BUFG;
  wire fin_detectado_reg_i_10;
  wire fin_detectado_reg_i_14;
  wire fin_detectado_reg_i_19_n_0;
  wire fin_detectado_reg_i_20_n_0;
  wire fin_detectado_reg_i_22_n_0;
  wire fin_detectado_reg_i_23_n_0;
  wire fin_detectado_reg_i_24_n_0;
  wire fin_detectado_reg_i_28_n_0;
  wire fin_detectado_reg_i_29_n_0;
  wire [3:0]fin_detectado_reg_i_3;
  wire fin_detectado_reg_i_31_n_0;
  wire fin_detectado_reg_i_37_n_0;
  wire fin_detectado_reg_i_38_n_0;
  wire fin_detectado_reg_i_39_n_0;
  wire fin_detectado_reg_i_3_0;
  wire fin_detectado_reg_i_4;
  wire fin_detectado_reg_i_40_n_0;
  wire fin_detectado_reg_i_42_n_0;
  wire fin_detectado_reg_i_43_n_0;
  wire fin_detectado_reg_i_44_n_0;
  wire fin_detectado_reg_i_45_n_0;
  wire fin_detectado_reg_i_47_n_0;
  wire fin_detectado_reg_i_48_n_0;
  wire fin_detectado_reg_i_49_n_0;
  wire fin_detectado_reg_i_50_n_0;
  wire fin_detectado_reg_i_51_n_0;
  wire fin_detectado_reg_i_52_n_0;
  wire [13:0]\i0_inferred__0/i__carry__1 ;
  wire [3:0]\i_reg[5]_i_10 ;
  wire \i_reg[5]_i_26_n_0 ;
  wire \i_reg[5]_i_27_n_0 ;
  wire \i_reg[5]_i_29_n_0 ;
  wire \i_reg[5]_i_31_n_0 ;
  wire \i_reg[5]_i_33_n_0 ;
  wire \i_reg[5]_i_34_n_0 ;
  wire \i_reg[5]_i_36_n_0 ;
  wire \i_reg[5]_i_37_n_0 ;
  wire \i_reg[5]_i_38_n_0 ;
  wire \i_reg[5]_i_40_n_0 ;
  wire \i_reg[5]_i_42_n_0 ;
  wire \i_reg[5]_i_44_n_0 ;
  wire \i_reg[5]_i_45_n_0 ;
  wire \i_reg[5]_i_47_n_0 ;
  wire \i_reg[5]_i_48_n_0 ;
  wire \i_reg[5]_i_49_n_0 ;
  wire \i_reg[5]_i_50_n_0 ;
  wire \i_reg[5]_i_51_n_0 ;
  wire \i_reg[5]_i_52_n_0 ;
  wire \i_reg[5]_i_53_n_0 ;
  wire \i_reg[5]_i_54_n_0 ;
  wire \i_reg[5]_i_7 ;
  wire \i_reg[5]_i_7_0 ;
  wire \i_reg[5]_i_7_1 ;
  wire \i_reg[5]_i_8 ;
  wire \i_reg[5]_i_8_0 ;
  wire \i_reg[5]_i_8_1 ;
  wire \indice_reg[2] ;
  wire \indice_reg[2]_0 ;
  wire \indice_reg[2]_1 ;
  wire \indice_reg[2]_2 ;
  wire \indice_reg[2]_3 ;
  wire \indice_reg[2]_4 ;
  wire \indice_reg[2]_5 ;
  wire \indice_reg[3] ;
  wire \sec_generada_s_reg[1]_0 ;
  wire \sec_generada_s_reg[21]_0 ;
  wire [1:0]\sec_generada_s_reg[21]_1 ;
  wire \sec_generada_s_reg[23]_0 ;
  wire \sec_generada_s_reg[32]_0 ;
  wire \sec_generada_s_reg[34]_0 ;
  wire \sec_generada_s_reg[34]_1 ;
  wire \sec_generada_s_reg[34]_2 ;
  wire \sec_generada_s_reg[41]_0 ;
  wire \sec_generada_s_reg[41]_1 ;
  wire \sec_generada_s_reg[41]_2 ;
  wire \sec_generada_s_reg[41]_3 ;
  wire \sec_generada_s_reg[41]_4 ;
  wire \sec_generada_s_reg[4]_0 ;
  wire [1:0]\sec_generada_s_reg[4]_1 ;
  wire sec_lista;

  LUT6 #(
    .INIT(64'hAF0CC0AFA00CC0A0)) 
    fin_detectado_reg_i_13
       (.I0(fin_detectado_reg_i_28_n_0),
        .I1(fin_detectado_reg_i_29_n_0),
        .I2(fin_detectado_reg_i_3[3]),
        .I3(fin_detectado_reg_i_4),
        .I4(fin_detectado_reg_i_3[2]),
        .I5(fin_detectado_reg_i_31_n_0),
        .O(\indice_reg[3] ));
  MUXF7 fin_detectado_reg_i_19
       (.I0(fin_detectado_reg_i_37_n_0),
        .I1(fin_detectado_reg_i_38_n_0),
        .O(fin_detectado_reg_i_19_n_0),
        .S(fin_detectado_reg_i_3[2]));
  MUXF7 fin_detectado_reg_i_20
       (.I0(fin_detectado_reg_i_39_n_0),
        .I1(fin_detectado_reg_i_40_n_0),
        .O(fin_detectado_reg_i_20_n_0),
        .S(fin_detectado_reg_i_3[2]));
  LUT6 #(
    .INIT(64'hF0000A0A0000FC0C)) 
    fin_detectado_reg_i_21
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(fin_detectado_reg_i_3[2]),
        .I3(Q[2]),
        .I4(fin_detectado_reg_i_3[1]),
        .I5(fin_detectado_reg_i_3[0]),
        .O(\sec_generada_s_reg[34]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fin_detectado_reg_i_22
       (.I0(Q[18]),
        .I1(Q[8]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(Q[19]),
        .I4(fin_detectado_reg_i_3[0]),
        .I5(Q[20]),
        .O(fin_detectado_reg_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fin_detectado_reg_i_23
       (.I0(Q[15]),
        .I1(Q[0]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(Q[16]),
        .I4(fin_detectado_reg_i_3[0]),
        .I5(Q[17]),
        .O(fin_detectado_reg_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    fin_detectado_reg_i_24
       (.I0(Q[13]),
        .I1(fin_detectado_reg_i_3[1]),
        .I2(Q[14]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[0]),
        .O(fin_detectado_reg_i_24_n_0));
  MUXF7 fin_detectado_reg_i_25
       (.I0(fin_detectado_reg_i_42_n_0),
        .I1(fin_detectado_reg_i_43_n_0),
        .O(\indice_reg[2] ),
        .S(fin_detectado_reg_i_10));
  MUXF7 fin_detectado_reg_i_26
       (.I0(fin_detectado_reg_i_44_n_0),
        .I1(fin_detectado_reg_i_45_n_0),
        .O(\indice_reg[2]_0 ),
        .S(fin_detectado_reg_i_10));
  LUT6 #(
    .INIT(64'h000AFC0F000A0C00)) 
    fin_detectado_reg_i_27
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(fin_detectado_reg_i_3[2]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(fin_detectado_reg_i_3[1]),
        .I5(Q[2]),
        .O(\sec_generada_s_reg[34]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hBC8CB080)) 
    fin_detectado_reg_i_28
       (.I0(Q[13]),
        .I1(fin_detectado_reg_i_3[1]),
        .I2(fin_detectado_reg_i_3[0]),
        .I3(Q[0]),
        .I4(Q[14]),
        .O(fin_detectado_reg_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_29
       (.I0(Q[0]),
        .I1(Q[15]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[17]),
        .I5(Q[16]),
        .O(fin_detectado_reg_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_31
       (.I0(Q[8]),
        .I1(Q[18]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[20]),
        .I5(Q[19]),
        .O(fin_detectado_reg_i_31_n_0));
  MUXF7 fin_detectado_reg_i_32
       (.I0(fin_detectado_reg_i_47_n_0),
        .I1(fin_detectado_reg_i_48_n_0),
        .O(\indice_reg[2]_2 ),
        .S(fin_detectado_reg_i_14));
  MUXF7 fin_detectado_reg_i_33
       (.I0(fin_detectado_reg_i_49_n_0),
        .I1(fin_detectado_reg_i_50_n_0),
        .O(\indice_reg[2]_4 ),
        .S(fin_detectado_reg_i_14));
  LUT6 #(
    .INIT(64'hAA00F000F00000CC)) 
    fin_detectado_reg_i_34
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(fin_detectado_reg_i_3[1]),
        .I4(fin_detectado_reg_i_3[0]),
        .I5(fin_detectado_reg_i_3[2]),
        .O(\sec_generada_s_reg[41]_4 ));
  MUXF7 fin_detectado_reg_i_35
       (.I0(fin_detectado_reg_i_51_n_0),
        .I1(fin_detectado_reg_i_52_n_0),
        .O(\indice_reg[2]_1 ),
        .S(fin_detectado_reg_i_14));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_36
       (.I0(Q[20]),
        .I1(Q[19]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[8]),
        .I5(Q[18]),
        .O(\sec_generada_s_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    fin_detectado_reg_i_37
       (.I0(Q[3]),
        .I1(fin_detectado_reg_i_3[1]),
        .I2(Q[4]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[0]),
        .O(fin_detectado_reg_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fin_detectado_reg_i_38
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(Q[6]),
        .I4(fin_detectado_reg_i_3[0]),
        .I5(Q[7]),
        .O(fin_detectado_reg_i_38_n_0));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    fin_detectado_reg_i_39
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(Q[10]),
        .I4(fin_detectado_reg_i_3[0]),
        .O(fin_detectado_reg_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fin_detectado_reg_i_40
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(Q[11]),
        .I4(fin_detectado_reg_i_3[0]),
        .I5(Q[12]),
        .O(fin_detectado_reg_i_40_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_42
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[12]),
        .I5(Q[11]),
        .O(fin_detectado_reg_i_42_n_0));
  LUT5 #(
    .INIT(32'hAF0CA00C)) 
    fin_detectado_reg_i_43
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[10]),
        .O(fin_detectado_reg_i_43_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_44
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(fin_detectado_reg_i_44_n_0));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    fin_detectado_reg_i_45
       (.I0(Q[3]),
        .I1(fin_detectado_reg_i_3[1]),
        .I2(fin_detectado_reg_i_3[0]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(fin_detectado_reg_i_45_n_0));
  LUT5 #(
    .INIT(32'hBC8CB080)) 
    fin_detectado_reg_i_47
       (.I0(Q[10]),
        .I1(fin_detectado_reg_i_3[1]),
        .I2(fin_detectado_reg_i_3[0]),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(fin_detectado_reg_i_47_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_48
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(fin_detectado_reg_i_48_n_0));
  LUT5 #(
    .INIT(32'hA0FCA00C)) 
    fin_detectado_reg_i_49
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[3]),
        .O(fin_detectado_reg_i_49_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_50
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(fin_detectado_reg_i_50_n_0));
  LUT5 #(
    .INIT(32'hAF0CA00C)) 
    fin_detectado_reg_i_51
       (.I0(Q[0]),
        .I1(Q[14]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[13]),
        .O(fin_detectado_reg_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    fin_detectado_reg_i_52
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(fin_detectado_reg_i_3[1]),
        .I3(fin_detectado_reg_i_3[0]),
        .I4(Q[0]),
        .I5(Q[15]),
        .O(fin_detectado_reg_i_52_n_0));
  MUXF8 fin_detectado_reg_i_6
       (.I0(fin_detectado_reg_i_19_n_0),
        .I1(fin_detectado_reg_i_20_n_0),
        .O(\indice_reg[2]_3 ),
        .S(fin_detectado_reg_i_3_0));
  LUT5 #(
    .INIT(32'h3E320E02)) 
    fin_detectado_reg_i_9
       (.I0(fin_detectado_reg_i_22_n_0),
        .I1(fin_detectado_reg_i_3[2]),
        .I2(fin_detectado_reg_i_3[3]),
        .I3(fin_detectado_reg_i_23_n_0),
        .I4(fin_detectado_reg_i_24_n_0),
        .O(\indice_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(Q[7]),
        .I1(\i0_inferred__0/i__carry__1 [7]),
        .I2(Q[6]),
        .I3(\i0_inferred__0/i__carry__1 [6]),
        .I4(\i0_inferred__0/i__carry__1 [9]),
        .I5(Q[10]),
        .O(\sec_generada_s_reg[21]_1 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(Q[7]),
        .I1(\i0_inferred__0/i__carry__1 [7]),
        .I2(Q[6]),
        .I3(\i0_inferred__0/i__carry__1 [6]),
        .I4(\i0_inferred__0/i__carry__1 [5]),
        .I5(Q[5]),
        .O(\sec_generada_s_reg[21]_1 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(Q[18]),
        .I1(\i0_inferred__0/i__carry__1 [13]),
        .I2(Q[8]),
        .I3(\i0_inferred__0/i__carry__1 [8]),
        .I4(\i0_inferred__0/i__carry__1 [12]),
        .I5(Q[17]),
        .O(\sec_generada_s_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_4
       (.I0(Q[14]),
        .I1(\i0_inferred__0/i__carry__1 [11]),
        .I2(Q[0]),
        .I3(\i0_inferred__0/i__carry__1 [0]),
        .I4(\i0_inferred__0/i__carry__1 [10]),
        .I5(Q[13]),
        .O(\sec_generada_s_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Q[1]),
        .I1(\i0_inferred__0/i__carry__1 [1]),
        .I2(Q[0]),
        .I3(\i0_inferred__0/i__carry__1 [0]),
        .I4(\i0_inferred__0/i__carry__1 [4]),
        .I5(Q[4]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_3
       (.I0(Q[2]),
        .I1(\i0_inferred__0/i__carry__1 [2]),
        .I2(\i0_inferred__0/i__carry__1 [3]),
        .I3(Q[3]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_reg[5]_i_12 
       (.I0(\i_reg[5]_i_26_n_0 ),
        .I1(\i_reg[5]_i_27_n_0 ),
        .I2(\i_reg[5]_i_7_0 ),
        .I3(\i_reg[5]_i_29_n_0 ),
        .I4(\i_reg[5]_i_7_1 ),
        .I5(\i_reg[5]_i_31_n_0 ),
        .O(\sec_generada_s_reg[23]_0 ));
  LUT6 #(
    .INIT(64'h0FF3FFF33550355F)) 
    \i_reg[5]_i_15 
       (.I0(\i_reg[5]_i_33_n_0 ),
        .I1(\i_reg[5]_i_34_n_0 ),
        .I2(\i_reg[5]_i_7 ),
        .I3(\i_reg[5]_i_10 [2]),
        .I4(\i_reg[5]_i_36_n_0 ),
        .I5(\i_reg[5]_i_10 [3]),
        .O(\sec_generada_s_reg[41]_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \i_reg[5]_i_17 
       (.I0(\i_reg[5]_i_37_n_0 ),
        .I1(\i_reg[5]_i_38_n_0 ),
        .I2(\i_reg[5]_i_8 ),
        .I3(\i_reg[5]_i_40_n_0 ),
        .I4(\i_reg[5]_i_8_0 ),
        .I5(\i_reg[5]_i_42_n_0 ),
        .O(\sec_generada_s_reg[41]_1 ));
  LUT6 #(
    .INIT(64'hAF0CC0AFA00CC0A0)) 
    \i_reg[5]_i_20 
       (.I0(\i_reg[5]_i_44_n_0 ),
        .I1(\i_reg[5]_i_45_n_0 ),
        .I2(\i_reg[5]_i_10 [3]),
        .I3(\i_reg[5]_i_8_1 ),
        .I4(\i_reg[5]_i_10 [2]),
        .I5(\i_reg[5]_i_47_n_0 ),
        .O(\sec_generada_s_reg[41]_2 ));
  LUT5 #(
    .INIT(32'h3E320E02)) 
    \i_reg[5]_i_22 
       (.I0(\i_reg[5]_i_48_n_0 ),
        .I1(\i_reg[5]_i_10 [2]),
        .I2(\i_reg[5]_i_10 [3]),
        .I3(\i_reg[5]_i_49_n_0 ),
        .I4(\i_reg[5]_i_50_n_0 ),
        .O(\sec_generada_s_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \i_reg[5]_i_24 
       (.I0(\i_reg[5]_i_51_n_0 ),
        .I1(\i_reg[5]_i_52_n_0 ),
        .I2(\i_reg[5]_i_10 [2]),
        .I3(\i_reg[5]_i_10 [3]),
        .I4(\i_reg[5]_i_53_n_0 ),
        .I5(\i_reg[5]_i_54_n_0 ),
        .O(\sec_generada_s_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_26 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\i_reg[5]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCB0BC808)) 
    \i_reg[5]_i_27 
       (.I0(Q[3]),
        .I1(\i_reg[5]_i_10 [1]),
        .I2(\i_reg[5]_i_10 [0]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(\i_reg[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_29 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[12]),
        .I5(Q[11]),
        .O(\i_reg[5]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \i_reg[5]_i_31 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[10]),
        .O(\i_reg[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h17FC17FFD7FCD7FF)) 
    \i_reg[5]_i_32 
       (.I0(Q[2]),
        .I1(\i_reg[5]_i_10 [2]),
        .I2(\i_reg[5]_i_10 [0]),
        .I3(\i_reg[5]_i_10 [1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\sec_generada_s_reg[32]_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_33 
       (.I0(Q[0]),
        .I1(Q[15]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[17]),
        .I5(Q[16]),
        .O(\i_reg[5]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hE323E020)) 
    \i_reg[5]_i_34 
       (.I0(Q[13]),
        .I1(\i_reg[5]_i_10 [1]),
        .I2(\i_reg[5]_i_10 [0]),
        .I3(Q[0]),
        .I4(Q[14]),
        .O(\i_reg[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_36 
       (.I0(Q[8]),
        .I1(Q[18]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[20]),
        .I5(Q[19]),
        .O(\i_reg[5]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \i_reg[5]_i_37 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[3]),
        .O(\i_reg[5]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_38 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\i_reg[5]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_40 
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\i_reg[5]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hE323E020)) 
    \i_reg[5]_i_42 
       (.I0(Q[10]),
        .I1(\i_reg[5]_i_10 [1]),
        .I2(\i_reg[5]_i_10 [0]),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(\i_reg[5]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_reg[5]_i_43 
       (.I0(Q[0]),
        .I1(\i_reg[5]_i_10 [0]),
        .I2(Q[1]),
        .O(\sec_generada_s_reg[41]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \i_reg[5]_i_44 
       (.I0(Q[0]),
        .I1(Q[14]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[13]),
        .O(\i_reg[5]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_45 
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[0]),
        .I5(Q[15]),
        .O(\i_reg[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \i_reg[5]_i_47 
       (.I0(Q[20]),
        .I1(Q[19]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[8]),
        .I5(Q[18]),
        .O(\i_reg[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_reg[5]_i_48 
       (.I0(Q[18]),
        .I1(Q[8]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(Q[19]),
        .I4(\i_reg[5]_i_10 [0]),
        .I5(Q[20]),
        .O(\i_reg[5]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_reg[5]_i_49 
       (.I0(Q[15]),
        .I1(Q[0]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(Q[16]),
        .I4(\i_reg[5]_i_10 [0]),
        .I5(Q[17]),
        .O(\i_reg[5]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \i_reg[5]_i_50 
       (.I0(Q[13]),
        .I1(\i_reg[5]_i_10 [1]),
        .I2(Q[14]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[0]),
        .O(\i_reg[5]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_reg[5]_i_51 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(Q[11]),
        .I4(\i_reg[5]_i_10 [0]),
        .I5(Q[12]),
        .O(\i_reg[5]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \i_reg[5]_i_52 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(Q[10]),
        .I4(\i_reg[5]_i_10 [0]),
        .O(\i_reg[5]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_reg[5]_i_53 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(Q[6]),
        .I4(\i_reg[5]_i_10 [0]),
        .I5(Q[7]),
        .O(\i_reg[5]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \i_reg[5]_i_54 
       (.I0(Q[3]),
        .I1(\i_reg[5]_i_10 [1]),
        .I2(Q[4]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[0]),
        .O(\i_reg[5]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0FFFFF5F3F5F3)) 
    \i_reg[5]_i_55 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\i_reg[5]_i_10 [1]),
        .I3(\i_reg[5]_i_10 [0]),
        .I4(Q[2]),
        .I5(\i_reg[5]_i_10 [2]),
        .O(\sec_generada_s_reg[34]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[10] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[11] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[13] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[14] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[17] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[19] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[1] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[20] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[21] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[22] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[23] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[26] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[28] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[2] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[32] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[34] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[41] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[4] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[5] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[6] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_generada_s_reg[8] 
       (.C(clk_BUFG),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sec_lista_s_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(E),
        .Q(sec_lista),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module TOP
   (RESET,
    boton,
    accion,
    CLK,
    led,
    display,
    enable_display);
  input RESET;
  input [4:1]boton;
  input accion;
  input CLK;
  output [4:1]led;
  output [6:0]display;
  output enable_display;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire RESET;
  wire RESET_IBUF;
  wire accion;
  wire accion_IBUF;
  wire accion_listo;
  wire [4:1]boton;
  wire [4:1]boton_IBUF;
  wire clk;
  wire clk_BUFG;
  wire [1:0]cur_state;
  wire [6:0]display;
  wire [6:0]display_OBUF;
  wire enable_display;
  wire fin_tiempo;
  wire [3:0]i;
  wire [3:0]indice_reg;
  wire inst_CompSecuencia_n_0;
  wire inst_CompSecuencia_n_1;
  wire inst_CompSecuencia_n_10;
  wire inst_CompSecuencia_n_11;
  wire inst_CompSecuencia_n_26;
  wire inst_CompSecuencia_n_27;
  wire inst_CompSecuencia_n_28;
  wire inst_CompSecuencia_n_6;
  wire inst_CompSecuencia_n_7;
  wire inst_CompSecuencia_n_8;
  wire inst_CompSecuencia_n_9;
  wire inst_Controlador_de_Sec_n_0;
  wire inst_Controlador_de_Sec_n_1;
  wire inst_Controlador_de_Sec_n_10;
  wire inst_Controlador_de_Sec_n_11;
  wire inst_Controlador_de_Sec_n_12;
  wire inst_Controlador_de_Sec_n_13;
  wire inst_Controlador_de_Sec_n_14;
  wire inst_Controlador_de_Sec_n_15;
  wire inst_Controlador_de_Sec_n_8;
  wire inst_Controlador_de_Sec_n_9;
  wire inst_DivisorReloj_n_1;
  wire inst_GenSecuencia_n_1;
  wire inst_GenSecuencia_n_2;
  wire inst_GenSecuencia_n_25;
  wire inst_GenSecuencia_n_26;
  wire inst_GenSecuencia_n_27;
  wire inst_GenSecuencia_n_28;
  wire inst_GenSecuencia_n_29;
  wire inst_GenSecuencia_n_3;
  wire inst_GenSecuencia_n_30;
  wire inst_GenSecuencia_n_31;
  wire inst_GenSecuencia_n_32;
  wire inst_GenSecuencia_n_33;
  wire inst_GenSecuencia_n_34;
  wire inst_GenSecuencia_n_35;
  wire inst_GenSecuencia_n_36;
  wire inst_GenSecuencia_n_37;
  wire inst_GenSecuencia_n_38;
  wire inst_GenSecuencia_n_39;
  wire inst_GenSecuencia_n_40;
  wire inst_GenSecuencia_n_41;
  wire inst_GenSecuencia_n_42;
  wire inst_GenSecuencia_n_43;
  wire inst_GenSecuencia_n_44;
  wire inst_GenSecuencia_n_45;
  wire inst_GenSecuencia_n_46;
  wire inst_GenSecuencia_n_47;
  wire inst_GenSecuencia_n_48;
  wire inst_controlador_nivel_n_10;
  wire inst_controlador_nivel_n_11;
  wire inst_controlador_nivel_n_12;
  wire inst_controlador_nivel_n_13;
  wire inst_controlador_nivel_n_14;
  wire inst_controlador_nivel_n_15;
  wire inst_controlador_nivel_n_16;
  wire inst_controlador_nivel_n_17;
  wire inst_controlador_nivel_n_18;
  wire inst_controlador_nivel_n_19;
  wire inst_controlador_nivel_n_2;
  wire inst_controlador_nivel_n_20;
  wire inst_controlador_nivel_n_21;
  wire inst_controlador_nivel_n_22;
  wire inst_controlador_nivel_n_23;
  wire inst_controlador_nivel_n_24;
  wire inst_controlador_nivel_n_3;
  wire inst_controlador_nivel_n_4;
  wire inst_controlador_nivel_n_5;
  wire inst_controlador_nivel_n_6;
  wire inst_controlador_nivel_n_7;
  wire inst_controlador_nivel_n_8;
  wire inst_controlador_nivel_n_9;
  wire \inst_sync[1].botones_sync_n_0 ;
  wire \inst_sync[1].botones_sync_n_1 ;
  wire \inst_sync[1].botones_sync_n_2 ;
  wire \inst_sync[2].botones_sync_n_0 ;
  wire \inst_sync[3].botones_sync_n_0 ;
  wire \inst_sync[4].botones_sync_n_0 ;
  wire \inst_sync[4].botones_sync_n_1 ;
  wire [4:1]led;
  wire [4:1]led_OBUF;
  wire [0:0]p_0_in;
  wire [0:0]p_0_in__0;
  wire [4:41]sec_actual;
  wire [1:41]sec_generada_s;
  wire sec_lista;

initial begin
 $sdf_annotate("TOP_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  IBUF accion_IBUF_inst
       (.I(accion),
        .O(accion_IBUF));
  IBUF \boton_IBUF[1]_inst 
       (.I(boton[1]),
        .O(boton_IBUF[1]));
  IBUF \boton_IBUF[2]_inst 
       (.I(boton[2]),
        .O(boton_IBUF[2]));
  IBUF \boton_IBUF[3]_inst 
       (.I(boton[3]),
        .O(boton_IBUF[3]));
  IBUF \boton_IBUF[4]_inst 
       (.I(boton[4]),
        .O(boton_IBUF[4]));
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  OBUF \display_OBUF[0]_inst 
       (.I(display_OBUF[0]),
        .O(display[0]));
  OBUF \display_OBUF[1]_inst 
       (.I(display_OBUF[1]),
        .O(display[1]));
  OBUF \display_OBUF[2]_inst 
       (.I(display_OBUF[2]),
        .O(display[2]));
  OBUF \display_OBUF[3]_inst 
       (.I(display_OBUF[3]),
        .O(display[3]));
  OBUF \display_OBUF[4]_inst 
       (.I(display_OBUF[4]),
        .O(display[4]));
  OBUF \display_OBUF[5]_inst 
       (.I(display_OBUF[5]),
        .O(display[5]));
  OBUF \display_OBUF[6]_inst 
       (.I(display_OBUF[6]),
        .O(display[6]));
  OBUF enable_display_OBUF_inst
       (.I(1'b0),
        .O(enable_display));
  CompSecuencia inst_CompSecuencia
       (.E(inst_CompSecuencia_n_0),
        .Q(cur_state),
        .RESET_IBUF(RESET_IBUF),
        .S({inst_GenSecuencia_n_43,inst_GenSecuencia_n_44}),
        .accion_listo(accion_listo),
        .error_prev_reg(inst_CompSecuencia_n_1),
        .error_prev_reg_0(inst_CompSecuencia_n_27),
        .error_prev_reg_1(\inst_sync[1].botones_sync_n_2 ),
        .error_prev_reg_2(\inst_sync[4].botones_sync_n_1 ),
        .error_prev_reg_3(\inst_sync[1].botones_sync_n_1 ),
        .exito_prev_reg(inst_CompSecuencia_n_26),
        .exito_prev_reg_0(inst_CompSecuencia_n_28),
        .\i0_inferred__0/i__carry__1_0 ({inst_GenSecuencia_n_45,inst_GenSecuencia_n_46}),
        .\i0_inferred__0/i__carry__1_1 ({sec_generada_s[1],sec_generada_s[2],sec_generada_s[4],sec_generada_s[5],sec_generada_s[6],sec_generada_s[8],sec_generada_s[10],sec_generada_s[11],sec_generada_s[13],sec_generada_s[14],sec_generada_s[17],sec_generada_s[19],sec_generada_s[20],sec_generada_s[21],sec_generada_s[22],sec_generada_s[23],sec_generada_s[26],sec_generada_s[28],sec_generada_s[32],sec_generada_s[34],sec_generada_s[41]}),
        .\i_reg[0]_0 (inst_CompSecuencia_n_8),
        .\i_reg[0]_1 (inst_CompSecuencia_n_11),
        .\i_reg[1]_0 (inst_CompSecuencia_n_6),
        .\i_reg[1]_1 (inst_CompSecuencia_n_9),
        .\i_reg[2]_0 (inst_CompSecuencia_n_7),
        .\i_reg[2]_1 (inst_CompSecuencia_n_10),
        .\i_reg[5]_i_10_0 (inst_GenSecuencia_n_27),
        .\i_reg[5]_i_2_0 (i),
        .\i_reg[5]_i_4_0 (inst_GenSecuencia_n_30),
        .\i_reg[5]_i_4_1 (inst_GenSecuencia_n_29),
        .\i_reg[5]_i_4_2 (inst_GenSecuencia_n_2),
        .\i_reg[5]_i_4_3 (inst_GenSecuencia_n_1),
        .\i_reg[5]_i_4_4 (inst_GenSecuencia_n_25),
        .\i_reg[5]_i_4_5 (inst_GenSecuencia_n_26),
        .\i_reg[5]_i_7_0 (inst_GenSecuencia_n_3),
        .\i_reg[5]_i_8_0 (inst_GenSecuencia_n_28),
        .p_0_in(p_0_in),
        .p_0_in__0(p_0_in__0),
        .\sec_actual_reg[41]_0 ({inst_GenSecuencia_n_47,inst_GenSecuencia_n_48}),
        .\sec_generada_s_reg[41] (\inst_sync[4].botones_sync_n_0 ),
        .\sec_generada_s_reg[41]_0 (\inst_sync[2].botones_sync_n_0 ),
        .\sec_generada_s_reg[41]_1 (\inst_sync[3].botones_sync_n_0 ),
        .\sec_generada_s_reg[41]_2 (\inst_sync[1].botones_sync_n_0 ),
        .\sec_generada_s_reg[4] ({sec_actual[4],sec_actual[5],sec_actual[10],sec_actual[11],sec_actual[17],sec_actual[20],sec_actual[21],sec_actual[22],sec_actual[23],sec_actual[26],sec_actual[28],sec_actual[32],sec_actual[34],sec_actual[41]}));
  Controlador_de_Sec inst_Controlador_de_Sec
       (.D({inst_Controlador_de_Sec_n_12,inst_Controlador_de_Sec_n_13,inst_Controlador_de_Sec_n_14,inst_Controlador_de_Sec_n_15}),
        .Q(cur_state),
        .clk_BUFG(clk_BUFG),
        .\cur_state_reg[0]_0 (inst_Controlador_de_Sec_n_0),
        .fin_detectado_reg_i_3_0(inst_GenSecuencia_n_38),
        .fin_detectado_reg_i_4_0(inst_GenSecuencia_n_34),
        .fin_detectado_reg_i_4_1(inst_GenSecuencia_n_32),
        .fin_detectado_reg_i_4_2(inst_GenSecuencia_n_33),
        .fin_detectado_reg_i_5_0(sec_generada_s[41]),
        .fin_detectado_reg_i_5_1(inst_GenSecuencia_n_36),
        .fin_detectado_reg_i_5_2(inst_GenSecuencia_n_35),
        .fin_detectado_reg_i_5_3(inst_GenSecuencia_n_37),
        .fin_detectado_reg_i_5_4(inst_GenSecuencia_n_39),
        .fin_detectado_reg_i_5_5(inst_GenSecuencia_n_41),
        .fin_tiempo(fin_tiempo),
        .\indice_reg[1]_0 (inst_Controlador_de_Sec_n_8),
        .\indice_reg[2]_0 (inst_Controlador_de_Sec_n_9),
        .\indice_reg[2]_1 (inst_Controlador_de_Sec_n_10),
        .\indice_reg[2]_2 (inst_Controlador_de_Sec_n_11),
        .\indice_reg[3]_0 (indice_reg),
        .\led_s_reg[1] (inst_GenSecuencia_n_31),
        .\led_s_reg[1]_0 (inst_GenSecuencia_n_40),
        .\led_s_reg[1]_1 (inst_GenSecuencia_n_42),
        .pedir_tiempo_reg_P_0(inst_Controlador_de_Sec_n_1),
        .sec_lista(sec_lista));
  Decod_Leds_Sec inst_Decod_Leds_Sec
       (.AR(inst_DivisorReloj_n_1),
        .D({inst_Controlador_de_Sec_n_12,inst_Controlador_de_Sec_n_13,inst_Controlador_de_Sec_n_14,inst_Controlador_de_Sec_n_15}),
        .Q(led_OBUF),
        .clk_BUFG(clk_BUFG));
  DivisorReloj inst_DivisorReloj
       (.AR(inst_DivisorReloj_n_1),
        .CLK(CLK_IBUF_BUFG),
        .RESET_IBUF(RESET_IBUF),
        .clk(clk));
  GenSecuencia inst_GenSecuencia
       (.D({inst_controlador_nivel_n_2,inst_controlador_nivel_n_3,inst_controlador_nivel_n_4,inst_controlador_nivel_n_5,inst_controlador_nivel_n_6,inst_controlador_nivel_n_7,inst_controlador_nivel_n_8,inst_controlador_nivel_n_9,inst_controlador_nivel_n_10,inst_controlador_nivel_n_11,inst_controlador_nivel_n_12,inst_controlador_nivel_n_13,inst_controlador_nivel_n_14,inst_controlador_nivel_n_15,inst_controlador_nivel_n_16,inst_controlador_nivel_n_17,inst_controlador_nivel_n_18,inst_controlador_nivel_n_19,inst_controlador_nivel_n_20,inst_controlador_nivel_n_21,inst_controlador_nivel_n_22}),
        .E(inst_CompSecuencia_n_0),
        .Q({sec_generada_s[1],sec_generada_s[2],sec_generada_s[4],sec_generada_s[5],sec_generada_s[6],sec_generada_s[8],sec_generada_s[10],sec_generada_s[11],sec_generada_s[13],sec_generada_s[14],sec_generada_s[17],sec_generada_s[19],sec_generada_s[20],sec_generada_s[21],sec_generada_s[22],sec_generada_s[23],sec_generada_s[26],sec_generada_s[28],sec_generada_s[32],sec_generada_s[34],sec_generada_s[41]}),
        .S({inst_GenSecuencia_n_43,inst_GenSecuencia_n_44}),
        .clk_BUFG(clk_BUFG),
        .fin_detectado_reg_i_10(inst_Controlador_de_Sec_n_10),
        .fin_detectado_reg_i_14(inst_Controlador_de_Sec_n_9),
        .fin_detectado_reg_i_3(indice_reg),
        .fin_detectado_reg_i_3_0(inst_Controlador_de_Sec_n_11),
        .fin_detectado_reg_i_4(inst_Controlador_de_Sec_n_8),
        .\i0_inferred__0/i__carry__1 ({sec_actual[4],sec_actual[5],sec_actual[10],sec_actual[11],sec_actual[17],sec_actual[20],sec_actual[21],sec_actual[22],sec_actual[23],sec_actual[26],sec_actual[28],sec_actual[32],sec_actual[34],sec_actual[41]}),
        .\i_reg[5]_i_10 (i),
        .\i_reg[5]_i_7 (inst_CompSecuencia_n_8),
        .\i_reg[5]_i_7_0 (inst_CompSecuencia_n_7),
        .\i_reg[5]_i_7_1 (inst_CompSecuencia_n_6),
        .\i_reg[5]_i_8 (inst_CompSecuencia_n_10),
        .\i_reg[5]_i_8_0 (inst_CompSecuencia_n_9),
        .\i_reg[5]_i_8_1 (inst_CompSecuencia_n_11),
        .\indice_reg[2] (inst_GenSecuencia_n_32),
        .\indice_reg[2]_0 (inst_GenSecuencia_n_33),
        .\indice_reg[2]_1 (inst_GenSecuencia_n_36),
        .\indice_reg[2]_2 (inst_GenSecuencia_n_39),
        .\indice_reg[2]_3 (inst_GenSecuencia_n_40),
        .\indice_reg[2]_4 (inst_GenSecuencia_n_41),
        .\indice_reg[2]_5 (inst_GenSecuencia_n_42),
        .\indice_reg[3] (inst_GenSecuencia_n_31),
        .\sec_generada_s_reg[1]_0 (inst_GenSecuencia_n_35),
        .\sec_generada_s_reg[21]_0 (inst_GenSecuencia_n_29),
        .\sec_generada_s_reg[21]_1 ({inst_GenSecuencia_n_45,inst_GenSecuencia_n_46}),
        .\sec_generada_s_reg[23]_0 (inst_GenSecuencia_n_2),
        .\sec_generada_s_reg[32]_0 (inst_GenSecuencia_n_3),
        .\sec_generada_s_reg[34]_0 (inst_GenSecuencia_n_27),
        .\sec_generada_s_reg[34]_1 (inst_GenSecuencia_n_34),
        .\sec_generada_s_reg[34]_2 (inst_GenSecuencia_n_38),
        .\sec_generada_s_reg[41]_0 (inst_GenSecuencia_n_1),
        .\sec_generada_s_reg[41]_1 (inst_GenSecuencia_n_25),
        .\sec_generada_s_reg[41]_2 (inst_GenSecuencia_n_26),
        .\sec_generada_s_reg[41]_3 (inst_GenSecuencia_n_28),
        .\sec_generada_s_reg[41]_4 (inst_GenSecuencia_n_37),
        .\sec_generada_s_reg[4]_0 (inst_GenSecuencia_n_30),
        .\sec_generada_s_reg[4]_1 ({inst_GenSecuencia_n_47,inst_GenSecuencia_n_48}),
        .sec_lista(sec_lista));
  controlador_nivel inst_controlador_nivel
       (.AR(inst_DivisorReloj_n_1),
        .D({inst_controlador_nivel_n_2,inst_controlador_nivel_n_3,inst_controlador_nivel_n_4,inst_controlador_nivel_n_5,inst_controlador_nivel_n_6,inst_controlador_nivel_n_7,inst_controlador_nivel_n_8,inst_controlador_nivel_n_9,inst_controlador_nivel_n_10,inst_controlador_nivel_n_11,inst_controlador_nivel_n_12,inst_controlador_nivel_n_13,inst_controlador_nivel_n_14,inst_controlador_nivel_n_15,inst_controlador_nivel_n_16,inst_controlador_nivel_n_17,inst_controlador_nivel_n_18,inst_controlador_nivel_n_19,inst_controlador_nivel_n_20,inst_controlador_nivel_n_21,inst_controlador_nivel_n_22}),
        .clk_BUFG(clk_BUFG),
        .error_prev_reg_0(inst_CompSecuencia_n_27),
        .\estado_actual_reg[1]_0 (inst_CompSecuencia_n_28),
        .\estado_actual_reg[1]_1 (inst_CompSecuencia_n_1),
        .\estado_actual_reg[2]_0 ({inst_controlador_nivel_n_23,inst_controlador_nivel_n_24}),
        .exito_prev_reg_0(inst_CompSecuencia_n_26),
        .p_0_in(p_0_in),
        .p_0_in__0(p_0_in__0));
  decod_display inst_decod_display
       (.D({inst_controlador_nivel_n_13,inst_controlador_nivel_n_20,inst_controlador_nivel_n_17,inst_controlador_nivel_n_23,inst_controlador_nivel_n_24,inst_controlador_nivel_n_10,inst_controlador_nivel_n_2}),
        .Q(display_OBUF),
        .clk_BUFG(clk_BUFG));
  sync \inst_sync[1].botones_sync 
       (.D(boton_IBUF[1]),
        .SYNC_OUT_reg_0(\inst_sync[1].botones_sync_n_0 ),
        .SYNC_OUT_reg_1(\inst_sync[1].botones_sync_n_1 ),
        .SYNC_OUT_reg_2(\inst_sync[1].botones_sync_n_2 ),
        .clk_BUFG(clk_BUFG),
        .\i_reg[5]_i_3 (\inst_sync[3].botones_sync_n_0 ),
        .\i_reg[5]_i_3_0 (\inst_sync[2].botones_sync_n_0 ));
  sync_0 \inst_sync[2].botones_sync 
       (.D(boton_IBUF[2]),
        .SYNC_OUT_reg_0(\inst_sync[2].botones_sync_n_0 ),
        .clk_BUFG(clk_BUFG));
  sync_1 \inst_sync[3].botones_sync 
       (.D(boton_IBUF[3]),
        .SYNC_OUT_reg_0(\inst_sync[3].botones_sync_n_0 ),
        .clk_BUFG(clk_BUFG));
  sync_2 \inst_sync[4].botones_sync 
       (.D(boton_IBUF[4]),
        .SYNC_OUT_reg_0(\inst_sync[4].botones_sync_n_0 ),
        .SYNC_OUT_reg_1(\inst_sync[4].botones_sync_n_1 ),
        .clk_BUFG(clk_BUFG),
        .\i_reg[5]_i_3 (\inst_sync[2].botones_sync_n_0 ),
        .\i_reg[5]_i_3_0 (\inst_sync[3].botones_sync_n_0 ),
        .\i_reg[5]_i_3_1 (\inst_sync[1].botones_sync_n_0 ));
  sync_3 inst_sync_accion
       (.D(accion_IBUF),
        .accion_listo(accion_listo),
        .clk_BUFG(clk_BUFG));
  temporizador inst_temporizador
       (.activo_reg_0(inst_Controlador_de_Sec_n_0),
        .activo_reg_1(inst_Controlador_de_Sec_n_1),
        .clk_BUFG(clk_BUFG),
        .fin_tiempo(fin_tiempo));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
endmodule

module controlador_nivel
   (p_0_in,
    p_0_in__0,
    D,
    \estado_actual_reg[2]_0 ,
    exito_prev_reg_0,
    clk_BUFG,
    error_prev_reg_0,
    \estado_actual_reg[1]_0 ,
    \estado_actual_reg[1]_1 ,
    AR);
  output [0:0]p_0_in;
  output [0:0]p_0_in__0;
  output [20:0]D;
  output [1:0]\estado_actual_reg[2]_0 ;
  input exito_prev_reg_0;
  input clk_BUFG;
  input error_prev_reg_0;
  input \estado_actual_reg[1]_0 ;
  input \estado_actual_reg[1]_1 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire [20:0]D;
  wire clk_BUFG;
  wire error_prev_reg_0;
  wire [2:0]estado_actual;
  wire \estado_actual_reg[1]_0 ;
  wire \estado_actual_reg[1]_1 ;
  wire [1:0]\estado_actual_reg[2]_0 ;
  wire [2:0]estado_siguiente;
  wire exito_prev_reg_0;
  wire [0:0]p_0_in;
  wire [0:0]p_0_in__0;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \display_s[2]_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(\estado_actual_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \display_s[3]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[0]),
        .I2(estado_actual[1]),
        .O(\estado_actual_reg[2]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    error_prev_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(error_prev_reg_0),
        .Q(p_0_in__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h1011300F)) 
    \estado_actual[0]_i_1 
       (.I0(estado_actual[1]),
        .I1(\estado_actual_reg[1]_1 ),
        .I2(estado_actual[0]),
        .I3(\estado_actual_reg[1]_0 ),
        .I4(estado_actual[2]),
        .O(estado_siguiente[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h01104510)) 
    \estado_actual[1]_i_1 
       (.I0(estado_actual[2]),
        .I1(\estado_actual_reg[1]_0 ),
        .I2(estado_actual[0]),
        .I3(estado_actual[1]),
        .I4(\estado_actual_reg[1]_1 ),
        .O(estado_siguiente[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h03005050)) 
    \estado_actual[2]_i_1 
       (.I0(\estado_actual_reg[1]_1 ),
        .I1(\estado_actual_reg[1]_0 ),
        .I2(estado_actual[2]),
        .I3(estado_actual[0]),
        .I4(estado_actual[1]),
        .O(estado_siguiente[2]));
  FDCE #(
    .INIT(1'b0)) 
    \estado_actual_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(estado_siguiente[0]),
        .Q(estado_actual[0]));
  FDCE #(
    .INIT(1'b0)) 
    \estado_actual_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(estado_siguiente[1]),
        .Q(estado_actual[1]));
  FDCE #(
    .INIT(1'b0)) 
    \estado_actual_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(estado_siguiente[2]),
        .Q(estado_actual[2]));
  FDRE #(
    .INIT(1'b0)) 
    exito_prev_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(exito_prev_reg_0),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    \sec_generada_s[10]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[0]),
        .I2(estado_actual[1]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \sec_generada_s[11]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h36)) 
    \sec_generada_s[13]_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \sec_generada_s[14]_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sec_generada_s[17]_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[1]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sec_generada_s[19]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \sec_generada_s[1]_i_2 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \sec_generada_s[20]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \sec_generada_s[21]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \sec_generada_s[22]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sec_generada_s[23]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .I2(estado_actual[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sec_generada_s[26]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[0]),
        .I2(estado_actual[1]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \sec_generada_s[28]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[0]),
        .I2(estado_actual[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \sec_generada_s[2]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .I2(estado_actual[0]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sec_generada_s[32]_i_1 
       (.I0(estado_actual[2]),
        .I1(estado_actual[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sec_generada_s[34]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sec_generada_s[41]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[0]),
        .I2(estado_actual[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA7)) 
    \sec_generada_s[4]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[0]),
        .I2(estado_actual[2]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hDB)) 
    \sec_generada_s[5]_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \sec_generada_s[6]_i_1 
       (.I0(estado_actual[0]),
        .I1(estado_actual[2]),
        .I2(estado_actual[1]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAD)) 
    \sec_generada_s[8]_i_1 
       (.I0(estado_actual[1]),
        .I1(estado_actual[2]),
        .I2(estado_actual[0]),
        .O(D[15]));
endmodule

module decod_display
   (Q,
    D,
    clk_BUFG);
  output [6:0]Q;
  input [6:0]D;
  input clk_BUFG;

  wire [6:0]D;
  wire [6:0]Q;
  wire clk_BUFG;

  FDRE #(
    .INIT(1'b1)) 
    \display_s_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_s_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_s_reg[2] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_s_reg[3] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_s_reg[4] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_s_reg[5] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_s_reg[6] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
endmodule

module sync
   (SYNC_OUT_reg_0,
    SYNC_OUT_reg_1,
    SYNC_OUT_reg_2,
    clk_BUFG,
    \i_reg[5]_i_3 ,
    \i_reg[5]_i_3_0 ,
    D);
  output SYNC_OUT_reg_0;
  output SYNC_OUT_reg_1;
  output SYNC_OUT_reg_2;
  input clk_BUFG;
  input \i_reg[5]_i_3 ;
  input \i_reg[5]_i_3_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire SYNC_OUT_reg_0;
  wire SYNC_OUT_reg_1;
  wire SYNC_OUT_reg_2;
  wire clk_BUFG;
  wire \i_reg[5]_i_3 ;
  wire \i_reg[5]_i_3_0 ;
  wire [1:0]sreg;

  FDRE #(
    .INIT(1'b0)) 
    SYNC_OUT_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(SYNC_OUT_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \i_reg[5]_i_11 
       (.I0(SYNC_OUT_reg_0),
        .I1(\i_reg[5]_i_3 ),
        .I2(\i_reg[5]_i_3_0 ),
        .O(SYNC_OUT_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \i_reg[5]_i_6 
       (.I0(SYNC_OUT_reg_0),
        .I1(\i_reg[5]_i_3_0 ),
        .I2(\i_reg[5]_i_3 ),
        .O(SYNC_OUT_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_0
   (SYNC_OUT_reg_0,
    clk_BUFG,
    D);
  output SYNC_OUT_reg_0;
  input clk_BUFG;
  input [0:0]D;

  wire [0:0]D;
  wire SYNC_OUT_reg_0;
  wire clk_BUFG;
  wire \sreg_reg_n_0_[0] ;
  wire \sreg_reg_n_0_[1] ;

  FDRE #(
    .INIT(1'b0)) 
    SYNC_OUT_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[1] ),
        .Q(SYNC_OUT_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_1
   (SYNC_OUT_reg_0,
    clk_BUFG,
    D);
  output SYNC_OUT_reg_0;
  input clk_BUFG;
  input [0:0]D;

  wire [0:0]D;
  wire SYNC_OUT_reg_0;
  wire clk_BUFG;
  wire \sreg_reg_n_0_[0] ;
  wire \sreg_reg_n_0_[1] ;

  FDRE #(
    .INIT(1'b0)) 
    SYNC_OUT_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[1] ),
        .Q(SYNC_OUT_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_2
   (SYNC_OUT_reg_0,
    SYNC_OUT_reg_1,
    clk_BUFG,
    \i_reg[5]_i_3 ,
    \i_reg[5]_i_3_0 ,
    \i_reg[5]_i_3_1 ,
    D);
  output SYNC_OUT_reg_0;
  output SYNC_OUT_reg_1;
  input clk_BUFG;
  input \i_reg[5]_i_3 ;
  input \i_reg[5]_i_3_0 ;
  input \i_reg[5]_i_3_1 ;
  input [0:0]D;

  wire [0:0]D;
  wire SYNC_OUT_reg_0;
  wire SYNC_OUT_reg_1;
  wire clk_BUFG;
  wire \i_reg[5]_i_3 ;
  wire \i_reg[5]_i_3_0 ;
  wire \i_reg[5]_i_3_1 ;
  wire \sreg_reg_n_0_[0] ;
  wire \sreg_reg_n_0_[1] ;

  FDRE #(
    .INIT(1'b0)) 
    SYNC_OUT_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[1] ),
        .Q(SYNC_OUT_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \i_reg[5]_i_9 
       (.I0(SYNC_OUT_reg_0),
        .I1(\i_reg[5]_i_3 ),
        .I2(\i_reg[5]_i_3_0 ),
        .I3(\i_reg[5]_i_3_1 ),
        .O(SYNC_OUT_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_3
   (accion_listo,
    clk_BUFG,
    D);
  output accion_listo;
  input clk_BUFG;
  input [0:0]D;

  wire [0:0]D;
  wire accion_listo;
  wire clk_BUFG;
  wire \sreg_reg_n_0_[0] ;
  wire \sreg_reg_n_0_[1] ;

  FDRE #(
    .INIT(1'b0)) 
    SYNC_OUT_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[1] ),
        .Q(accion_listo),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module temporizador
   (fin_tiempo,
    clk_BUFG,
    activo_reg_0,
    activo_reg_1);
  output fin_tiempo;
  input clk_BUFG;
  input activo_reg_0;
  input activo_reg_1;

  wire activo;
  wire activo1;
  wire activo1_carry__0_i_1_n_0;
  wire activo1_carry__0_i_2_n_0;
  wire activo1_carry__0_i_3_n_0;
  wire activo1_carry__0_i_4_n_0;
  wire activo1_carry__0_n_0;
  wire activo1_carry__0_n_1;
  wire activo1_carry__0_n_2;
  wire activo1_carry__0_n_3;
  wire activo1_carry__1_i_1_n_0;
  wire activo1_carry__1_i_2_n_0;
  wire activo1_carry__1_i_3_n_0;
  wire activo1_carry__1_i_4_n_0;
  wire activo1_carry__1_n_0;
  wire activo1_carry__1_n_1;
  wire activo1_carry__1_n_2;
  wire activo1_carry__1_n_3;
  wire activo1_carry__2_i_1_n_0;
  wire activo1_carry__2_i_2_n_0;
  wire activo1_carry__2_i_3_n_0;
  wire activo1_carry__2_i_4_n_0;
  wire activo1_carry__2_n_1;
  wire activo1_carry__2_n_2;
  wire activo1_carry__2_n_3;
  wire activo1_carry_i_1_n_0;
  wire activo1_carry_i_2_n_0;
  wire activo1_carry_i_3_n_0;
  wire activo1_carry_i_4_n_0;
  wire activo1_carry_i_5_n_0;
  wire activo1_carry_n_0;
  wire activo1_carry_n_1;
  wire activo1_carry_n_2;
  wire activo1_carry_n_3;
  wire activo_i_1_n_0;
  wire activo_reg_0;
  wire activo_reg_1;
  wire clk_BUFG;
  wire \contador_s[0]_i_1_n_0 ;
  wire \contador_s[0]_i_3_n_0 ;
  wire [31:0]contador_s_reg;
  wire \contador_s_reg[0]_i_2_n_0 ;
  wire \contador_s_reg[0]_i_2_n_1 ;
  wire \contador_s_reg[0]_i_2_n_2 ;
  wire \contador_s_reg[0]_i_2_n_3 ;
  wire \contador_s_reg[0]_i_2_n_4 ;
  wire \contador_s_reg[0]_i_2_n_5 ;
  wire \contador_s_reg[0]_i_2_n_6 ;
  wire \contador_s_reg[0]_i_2_n_7 ;
  wire \contador_s_reg[12]_i_1_n_0 ;
  wire \contador_s_reg[12]_i_1_n_1 ;
  wire \contador_s_reg[12]_i_1_n_2 ;
  wire \contador_s_reg[12]_i_1_n_3 ;
  wire \contador_s_reg[12]_i_1_n_4 ;
  wire \contador_s_reg[12]_i_1_n_5 ;
  wire \contador_s_reg[12]_i_1_n_6 ;
  wire \contador_s_reg[12]_i_1_n_7 ;
  wire \contador_s_reg[16]_i_1_n_0 ;
  wire \contador_s_reg[16]_i_1_n_1 ;
  wire \contador_s_reg[16]_i_1_n_2 ;
  wire \contador_s_reg[16]_i_1_n_3 ;
  wire \contador_s_reg[16]_i_1_n_4 ;
  wire \contador_s_reg[16]_i_1_n_5 ;
  wire \contador_s_reg[16]_i_1_n_6 ;
  wire \contador_s_reg[16]_i_1_n_7 ;
  wire \contador_s_reg[20]_i_1_n_0 ;
  wire \contador_s_reg[20]_i_1_n_1 ;
  wire \contador_s_reg[20]_i_1_n_2 ;
  wire \contador_s_reg[20]_i_1_n_3 ;
  wire \contador_s_reg[20]_i_1_n_4 ;
  wire \contador_s_reg[20]_i_1_n_5 ;
  wire \contador_s_reg[20]_i_1_n_6 ;
  wire \contador_s_reg[20]_i_1_n_7 ;
  wire \contador_s_reg[24]_i_1_n_0 ;
  wire \contador_s_reg[24]_i_1_n_1 ;
  wire \contador_s_reg[24]_i_1_n_2 ;
  wire \contador_s_reg[24]_i_1_n_3 ;
  wire \contador_s_reg[24]_i_1_n_4 ;
  wire \contador_s_reg[24]_i_1_n_5 ;
  wire \contador_s_reg[24]_i_1_n_6 ;
  wire \contador_s_reg[24]_i_1_n_7 ;
  wire \contador_s_reg[28]_i_1_n_1 ;
  wire \contador_s_reg[28]_i_1_n_2 ;
  wire \contador_s_reg[28]_i_1_n_3 ;
  wire \contador_s_reg[28]_i_1_n_4 ;
  wire \contador_s_reg[28]_i_1_n_5 ;
  wire \contador_s_reg[28]_i_1_n_6 ;
  wire \contador_s_reg[28]_i_1_n_7 ;
  wire \contador_s_reg[4]_i_1_n_0 ;
  wire \contador_s_reg[4]_i_1_n_1 ;
  wire \contador_s_reg[4]_i_1_n_2 ;
  wire \contador_s_reg[4]_i_1_n_3 ;
  wire \contador_s_reg[4]_i_1_n_4 ;
  wire \contador_s_reg[4]_i_1_n_5 ;
  wire \contador_s_reg[4]_i_1_n_6 ;
  wire \contador_s_reg[4]_i_1_n_7 ;
  wire \contador_s_reg[8]_i_1_n_0 ;
  wire \contador_s_reg[8]_i_1_n_1 ;
  wire \contador_s_reg[8]_i_1_n_2 ;
  wire \contador_s_reg[8]_i_1_n_3 ;
  wire \contador_s_reg[8]_i_1_n_4 ;
  wire \contador_s_reg[8]_i_1_n_5 ;
  wire \contador_s_reg[8]_i_1_n_6 ;
  wire \contador_s_reg[8]_i_1_n_7 ;
  wire fin_tiempo;
  wire fin_tiempo_i_1_n_0;
  wire [3:0]NLW_activo1_carry_O_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_activo1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_contador_s_reg[28]_i_1_CO_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry
       (.CI(1'b0),
        .CO({activo1_carry_n_0,activo1_carry_n_1,activo1_carry_n_2,activo1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,activo1_carry_i_1_n_0}),
        .O(NLW_activo1_carry_O_UNCONNECTED[3:0]),
        .S({activo1_carry_i_2_n_0,activo1_carry_i_3_n_0,activo1_carry_i_4_n_0,activo1_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry__0
       (.CI(activo1_carry_n_0),
        .CO({activo1_carry__0_n_0,activo1_carry__0_n_1,activo1_carry__0_n_2,activo1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_activo1_carry__0_O_UNCONNECTED[3:0]),
        .S({activo1_carry__0_i_1_n_0,activo1_carry__0_i_2_n_0,activo1_carry__0_i_3_n_0,activo1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_1
       (.I0(contador_s_reg[14]),
        .I1(contador_s_reg[15]),
        .O(activo1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_2
       (.I0(contador_s_reg[12]),
        .I1(contador_s_reg[13]),
        .O(activo1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_3
       (.I0(contador_s_reg[10]),
        .I1(contador_s_reg[11]),
        .O(activo1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__0_i_4
       (.I0(contador_s_reg[8]),
        .I1(contador_s_reg[9]),
        .O(activo1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry__1
       (.CI(activo1_carry__0_n_0),
        .CO({activo1_carry__1_n_0,activo1_carry__1_n_1,activo1_carry__1_n_2,activo1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_activo1_carry__1_O_UNCONNECTED[3:0]),
        .S({activo1_carry__1_i_1_n_0,activo1_carry__1_i_2_n_0,activo1_carry__1_i_3_n_0,activo1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_1
       (.I0(contador_s_reg[22]),
        .I1(contador_s_reg[23]),
        .O(activo1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_2
       (.I0(contador_s_reg[20]),
        .I1(contador_s_reg[21]),
        .O(activo1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_3
       (.I0(contador_s_reg[18]),
        .I1(contador_s_reg[19]),
        .O(activo1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry__1_i_4
       (.I0(contador_s_reg[16]),
        .I1(contador_s_reg[17]),
        .O(activo1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 activo1_carry__2
       (.CI(activo1_carry__1_n_0),
        .CO({activo1,activo1_carry__2_n_1,activo1_carry__2_n_2,activo1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({contador_s_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_activo1_carry__2_O_UNCONNECTED[3:0]),
        .S({activo1_carry__2_i_1_n_0,activo1_carry__2_i_2_n_0,activo1_carry__2_i_3_n_0,activo1_carry__2_i_4_n_0}));
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
    .INIT(4'h1)) 
    activo1_carry__2_i_4
       (.I0(contador_s_reg[24]),
        .I1(contador_s_reg[25]),
        .O(activo1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    activo1_carry_i_1
       (.I0(contador_s_reg[0]),
        .I1(contador_s_reg[1]),
        .O(activo1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry_i_2
       (.I0(contador_s_reg[6]),
        .I1(contador_s_reg[7]),
        .O(activo1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry_i_3
       (.I0(contador_s_reg[4]),
        .I1(contador_s_reg[5]),
        .O(activo1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    activo1_carry_i_4
       (.I0(contador_s_reg[2]),
        .I1(contador_s_reg[3]),
        .O(activo1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    activo1_carry_i_5
       (.I0(contador_s_reg[0]),
        .I1(contador_s_reg[1]),
        .O(activo1_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    activo_i_1
       (.I0(activo1),
        .I1(activo),
        .I2(activo_reg_0),
        .I3(activo_reg_1),
        .O(activo_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    activo_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(activo_i_1_n_0),
        .Q(activo),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \contador_s[0]_i_1 
       (.I0(activo),
        .I1(activo1),
        .O(\contador_s[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \contador_s[0]_i_3 
       (.I0(contador_s_reg[0]),
        .O(\contador_s[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[0] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[0]_i_2_n_7 ),
        .Q(contador_s_reg[0]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\contador_s_reg[0]_i_2_n_0 ,\contador_s_reg[0]_i_2_n_1 ,\contador_s_reg[0]_i_2_n_2 ,\contador_s_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\contador_s_reg[0]_i_2_n_4 ,\contador_s_reg[0]_i_2_n_5 ,\contador_s_reg[0]_i_2_n_6 ,\contador_s_reg[0]_i_2_n_7 }),
        .S({contador_s_reg[3:1],\contador_s[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[10] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[8]_i_1_n_5 ),
        .Q(contador_s_reg[10]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[11] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[8]_i_1_n_4 ),
        .Q(contador_s_reg[11]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[12] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[12]_i_1_n_7 ),
        .Q(contador_s_reg[12]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[12]_i_1 
       (.CI(\contador_s_reg[8]_i_1_n_0 ),
        .CO({\contador_s_reg[12]_i_1_n_0 ,\contador_s_reg[12]_i_1_n_1 ,\contador_s_reg[12]_i_1_n_2 ,\contador_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[12]_i_1_n_4 ,\contador_s_reg[12]_i_1_n_5 ,\contador_s_reg[12]_i_1_n_6 ,\contador_s_reg[12]_i_1_n_7 }),
        .S(contador_s_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[13] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[12]_i_1_n_6 ),
        .Q(contador_s_reg[13]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[14] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[12]_i_1_n_5 ),
        .Q(contador_s_reg[14]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[15] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[12]_i_1_n_4 ),
        .Q(contador_s_reg[15]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[16] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[16]_i_1_n_7 ),
        .Q(contador_s_reg[16]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[16]_i_1 
       (.CI(\contador_s_reg[12]_i_1_n_0 ),
        .CO({\contador_s_reg[16]_i_1_n_0 ,\contador_s_reg[16]_i_1_n_1 ,\contador_s_reg[16]_i_1_n_2 ,\contador_s_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[16]_i_1_n_4 ,\contador_s_reg[16]_i_1_n_5 ,\contador_s_reg[16]_i_1_n_6 ,\contador_s_reg[16]_i_1_n_7 }),
        .S(contador_s_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[17] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[16]_i_1_n_6 ),
        .Q(contador_s_reg[17]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[18] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[16]_i_1_n_5 ),
        .Q(contador_s_reg[18]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[19] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[16]_i_1_n_4 ),
        .Q(contador_s_reg[19]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[1] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[0]_i_2_n_6 ),
        .Q(contador_s_reg[1]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[20] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[20]_i_1_n_7 ),
        .Q(contador_s_reg[20]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[20]_i_1 
       (.CI(\contador_s_reg[16]_i_1_n_0 ),
        .CO({\contador_s_reg[20]_i_1_n_0 ,\contador_s_reg[20]_i_1_n_1 ,\contador_s_reg[20]_i_1_n_2 ,\contador_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[20]_i_1_n_4 ,\contador_s_reg[20]_i_1_n_5 ,\contador_s_reg[20]_i_1_n_6 ,\contador_s_reg[20]_i_1_n_7 }),
        .S(contador_s_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[21] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[20]_i_1_n_6 ),
        .Q(contador_s_reg[21]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[22] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[20]_i_1_n_5 ),
        .Q(contador_s_reg[22]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[23] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[20]_i_1_n_4 ),
        .Q(contador_s_reg[23]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[24] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[24]_i_1_n_7 ),
        .Q(contador_s_reg[24]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[24]_i_1 
       (.CI(\contador_s_reg[20]_i_1_n_0 ),
        .CO({\contador_s_reg[24]_i_1_n_0 ,\contador_s_reg[24]_i_1_n_1 ,\contador_s_reg[24]_i_1_n_2 ,\contador_s_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[24]_i_1_n_4 ,\contador_s_reg[24]_i_1_n_5 ,\contador_s_reg[24]_i_1_n_6 ,\contador_s_reg[24]_i_1_n_7 }),
        .S(contador_s_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[25] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[24]_i_1_n_6 ),
        .Q(contador_s_reg[25]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[26] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[24]_i_1_n_5 ),
        .Q(contador_s_reg[26]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[27] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[24]_i_1_n_4 ),
        .Q(contador_s_reg[27]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[28] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[28]_i_1_n_7 ),
        .Q(contador_s_reg[28]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[28]_i_1 
       (.CI(\contador_s_reg[24]_i_1_n_0 ),
        .CO({\NLW_contador_s_reg[28]_i_1_CO_UNCONNECTED [3],\contador_s_reg[28]_i_1_n_1 ,\contador_s_reg[28]_i_1_n_2 ,\contador_s_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[28]_i_1_n_4 ,\contador_s_reg[28]_i_1_n_5 ,\contador_s_reg[28]_i_1_n_6 ,\contador_s_reg[28]_i_1_n_7 }),
        .S(contador_s_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[29] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[28]_i_1_n_6 ),
        .Q(contador_s_reg[29]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[2] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[0]_i_2_n_5 ),
        .Q(contador_s_reg[2]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[30] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[28]_i_1_n_5 ),
        .Q(contador_s_reg[30]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[31] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[28]_i_1_n_4 ),
        .Q(contador_s_reg[31]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[3] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[0]_i_2_n_4 ),
        .Q(contador_s_reg[3]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[4] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[4]_i_1_n_7 ),
        .Q(contador_s_reg[4]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[4]_i_1 
       (.CI(\contador_s_reg[0]_i_2_n_0 ),
        .CO({\contador_s_reg[4]_i_1_n_0 ,\contador_s_reg[4]_i_1_n_1 ,\contador_s_reg[4]_i_1_n_2 ,\contador_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[4]_i_1_n_4 ,\contador_s_reg[4]_i_1_n_5 ,\contador_s_reg[4]_i_1_n_6 ,\contador_s_reg[4]_i_1_n_7 }),
        .S(contador_s_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[5] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[4]_i_1_n_6 ),
        .Q(contador_s_reg[5]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[6] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[4]_i_1_n_5 ),
        .Q(contador_s_reg[6]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[7] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[4]_i_1_n_4 ),
        .Q(contador_s_reg[7]),
        .R(\contador_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[8] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[8]_i_1_n_7 ),
        .Q(contador_s_reg[8]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_s_reg[8]_i_1 
       (.CI(\contador_s_reg[4]_i_1_n_0 ),
        .CO({\contador_s_reg[8]_i_1_n_0 ,\contador_s_reg[8]_i_1_n_1 ,\contador_s_reg[8]_i_1_n_2 ,\contador_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_s_reg[8]_i_1_n_4 ,\contador_s_reg[8]_i_1_n_5 ,\contador_s_reg[8]_i_1_n_6 ,\contador_s_reg[8]_i_1_n_7 }),
        .S(contador_s_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_s_reg[9] 
       (.C(clk_BUFG),
        .CE(activo),
        .D(\contador_s_reg[8]_i_1_n_6 ),
        .Q(contador_s_reg[9]),
        .R(\contador_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    fin_tiempo_i_1
       (.I0(fin_tiempo),
        .I1(activo1),
        .I2(activo),
        .O(fin_tiempo_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fin_tiempo_reg
       (.C(clk_BUFG),
        .CE(1'b1),
        .D(fin_tiempo_i_1_n_0),
        .Q(fin_tiempo),
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
