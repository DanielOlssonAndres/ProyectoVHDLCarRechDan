-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Dec 13 15:47:09 2024
-- Host        : PortatilMarcos running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marco/OneDrive/Documentos/GitHub/ProyectoVHDLCarRechDan/project/project_1.sim/sim_1/synth/func/xsim/TOP_tb_func_synth.vhd
-- Design      : TOP
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CompSecuencia is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    error_prev_reg : out STD_LOGIC;
    \i_reg[5]_i_2_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i_reg[1]_0\ : out STD_LOGIC;
    \i_reg[2]_0\ : out STD_LOGIC;
    \i_reg[0]_0\ : out STD_LOGIC;
    \i_reg[1]_1\ : out STD_LOGIC;
    \i_reg[2]_1\ : out STD_LOGIC;
    \i_reg[0]_1\ : out STD_LOGIC;
    \sec_generada_s_reg[4]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    exito_prev_reg : out STD_LOGIC;
    error_prev_reg_0 : out STD_LOGIC;
    exito_prev_reg_0 : out STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i0_inferred__0/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[41]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    accion_listo : in STD_LOGIC;
    \sec_generada_s_reg[41]\ : in STD_LOGIC;
    \sec_generada_s_reg[41]_0\ : in STD_LOGIC;
    \sec_generada_s_reg[41]_1\ : in STD_LOGIC;
    \sec_generada_s_reg[41]_2\ : in STD_LOGIC;
    \p_0_in__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    error_prev_reg_1 : in STD_LOGIC;
    error_prev_reg_2 : in STD_LOGIC;
    error_prev_reg_3 : in STD_LOGIC;
    \i_reg[5]_i_4_0\ : in STD_LOGIC;
    \i_reg[5]_i_4_1\ : in STD_LOGIC;
    \i_reg[5]_i_10_0\ : in STD_LOGIC;
    \i0_inferred__0/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \i_reg[5]_i_4_2\ : in STD_LOGIC;
    \i_reg[5]_i_4_3\ : in STD_LOGIC;
    \i_reg[5]_i_7_0\ : in STD_LOGIC;
    \i_reg[5]_i_4_4\ : in STD_LOGIC;
    \i_reg[5]_i_4_5\ : in STD_LOGIC;
    \i_reg[5]_i_8_0\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end CompSecuencia;

architecture STRUCTURE of CompSecuencia is
  signal exito_prev_i_2_n_0 : STD_LOGIC;
  signal flag_boton : STD_LOGIC;
  signal flag_boton5_out : STD_LOGIC;
  signal flag_boton_reg_i_1_n_0 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal i0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \i0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_14_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_16_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_18_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_19_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_21_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_23_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_25_n_0\ : STD_LOGIC;
  signal \^i_reg[5]_i_2_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal sec_actual : STD_LOGIC_VECTOR ( 1 to 19 );
  signal \sec_generada_s[1]_i_3_n_0\ : STD_LOGIC;
  signal \^sec_generada_s_reg[4]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \NLW_i0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg[5]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg[5]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of error_prev_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \estado_actual[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of exito_prev_i_2 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of flag_boton_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of flag_boton_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \i_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[0]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \i_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \i_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \i_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \i_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \i_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_reg[5]_i_14\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_reg[5]_i_16\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_reg[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_reg[5]_i_28\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_reg[5]_i_30\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i_reg[5]_i_35\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_reg[5]_i_39\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_reg[5]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_reg[5]_i_41\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[19]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[19]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[20]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[20]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[21]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[21]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[22]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[22]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[23]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[23]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[26]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[26]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[28]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[28]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[32]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[32]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[34]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[34]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[41]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[41]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[8]\ : label is "VCC:GE GND:CLR";
begin
  \i_reg[5]_i_2_0\(3 downto 0) <= \^i_reg[5]_i_2_0\(3 downto 0);
  \sec_generada_s_reg[4]\(13 downto 0) <= \^sec_generada_s_reg[4]\(13 downto 0);
error_prev_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => \i_reg[5]_i_4_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_3_n_0\,
      I3 => RESET_IBUF,
      I4 => \p_0_in__0\(0),
      O => error_prev_reg_0
    );
\estado_actual[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \p_0_in__0\(0),
      I1 => \i_reg[5]_i_3_n_0\,
      I2 => flag_boton_reg_i_1_n_0,
      I3 => \i_reg[5]_i_4_n_0\,
      O => error_prev_reg
    );
\estado_actual[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \i_reg[5]_i_10_n_0\,
      I1 => \i_reg[5]_i_8_n_0\,
      I2 => \i_reg[5]_i_7_n_0\,
      I3 => p_0_in(0),
      I4 => Q(1),
      I5 => Q(0),
      O => exito_prev_reg_0
    );
exito_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => exito_prev_i_2_n_0,
      I1 => RESET_IBUF,
      I2 => p_0_in(0),
      O => exito_prev_reg
    );
exito_prev_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \i_reg[5]_i_10_n_0\,
      I1 => \i_reg[5]_i_8_n_0\,
      I2 => \i_reg[5]_i_7_n_0\,
      I3 => Q(0),
      I4 => Q(1),
      O => exito_prev_i_2_n_0
    );
flag_boton_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => flag_boton_reg_i_1_n_0,
      G => flag_boton5_out,
      GE => '1',
      Q => flag_boton
    );
flag_boton_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => flag_boton,
      I1 => \sec_generada_s_reg[41]_2\,
      I2 => \sec_generada_s_reg[41]_1\,
      I3 => \sec_generada_s_reg[41]_0\,
      I4 => \sec_generada_s_reg[41]\,
      O => flag_boton_reg_i_1_n_0
    );
flag_boton_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => flag_boton,
      I1 => \sec_generada_s_reg[41]\,
      I2 => \sec_generada_s_reg[41]_0\,
      I3 => \sec_generada_s_reg[41]_1\,
      I4 => \sec_generada_s_reg[41]_2\,
      I5 => \i_reg[5]_i_4_n_0\,
      O => flag_boton5_out
    );
\i0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i0_inferred__0/i__carry_n_0\,
      CO(2) => \i0_inferred__0/i__carry_n_1\,
      CO(1) => \i0_inferred__0/i__carry_n_2\,
      CO(0) => \i0_inferred__0/i__carry_n_3\,
      CYINIT => \i__carry_i_1_n_0\,
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => S(1 downto 0),
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\i0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry_n_0\,
      CO(3) => \i0_inferred__0/i__carry__0_n_0\,
      CO(2) => \i0_inferred__0/i__carry__0_n_1\,
      CO(1) => \i0_inferred__0/i__carry__0_n_2\,
      CO(0) => \i0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i0_inferred__0/i__carry__1_0\(1),
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i0_inferred__0/i__carry__1_0\(0)
    );
\i0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry__0_n_0\,
      CO(3) => \i0_inferred__0/i__carry__1_n_0\,
      CO(2) => \i0_inferred__0/i__carry__1_n_1\,
      CO(1) => \i0_inferred__0/i__carry__1_n_2\,
      CO(0) => \i0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \sec_actual_reg[41]_0\(1),
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \sec_actual_reg[41]_0\(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sec_actual(13),
      I1 => \i0_inferred__0/i__carry__1_1\(12),
      I2 => sec_actual(14),
      I3 => \i0_inferred__0/i__carry__1_1\(11),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_generada_s_reg[4]\(8),
      I1 => \i0_inferred__0/i__carry__1_1\(8),
      I2 => sec_actual(19),
      I3 => \i0_inferred__0/i__carry__1_1\(9),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sec_actual(1),
      I1 => \i0_inferred__0/i__carry__1_1\(20),
      I2 => sec_actual(2),
      I3 => \i0_inferred__0/i__carry__1_1\(19),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^sec_generada_s_reg[4]\(0),
      I1 => \i0_inferred__0/i__carry__1_1\(0),
      I2 => \i0_inferred__0/i__carry__1_1\(16),
      I3 => sec_actual(6),
      I4 => \i0_inferred__0/i__carry__1_1\(15),
      I5 => sec_actual(8),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sec_generada_s_reg[4]\(0),
      I1 => \i0_inferred__0/i__carry__1_1\(0),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^sec_generada_s_reg[4]\(2),
      I1 => \i0_inferred__0/i__carry__1_1\(2),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_generada_s_reg[4]\(0),
      I1 => \i0_inferred__0/i__carry__1_1\(0),
      I2 => \^sec_generada_s_reg[4]\(1),
      I3 => \i0_inferred__0/i__carry__1_1\(1),
      O => \i__carry_i_5_n_0\
    );
\i_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[0]_i_1_n_0\,
      G => \i_reg[5]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[5]_i_2_0\(0)
    );
\i_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => \^i_reg[5]_i_2_0\(0),
      O => \i_reg[0]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[1]_i_1_n_0\,
      G => \i_reg[5]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[5]_i_2_0\(1)
    );
\i_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => i0(1),
      O => \i_reg[1]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[2]_i_1_n_0\,
      G => \i_reg[5]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[5]_i_2_0\(2)
    );
\i_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => i0(2),
      O => \i_reg[2]_i_1_n_0\
    );
\i_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[3]_i_1_n_0\,
      G => \i_reg[5]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[5]_i_2_0\(3)
    );
\i_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => i0(3),
      O => \i_reg[3]_i_1_n_0\
    );
\i_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[4]_i_1_n_0\,
      G => \i_reg[5]_i_2_n_0\,
      GE => '1',
      Q => i(4)
    );
\i_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => i0(4),
      O => \i_reg[4]_i_1_n_0\
    );
\i_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[4]_i_2_n_0\,
      CO(2) => \i_reg[4]_i_2_n_1\,
      CO(1) => \i_reg[4]_i_2_n_2\,
      CO(0) => \i_reg[4]_i_2_n_3\,
      CYINIT => \^i_reg[5]_i_2_0\(0),
      DI(3 downto 1) => B"000",
      DI(0) => \^i_reg[5]_i_2_0\(1),
      O(3 downto 0) => i0(4 downto 1),
      S(3) => i(4),
      S(2 downto 1) => \^i_reg[5]_i_2_0\(3 downto 2),
      S(0) => \i_reg[4]_i_3_n_0\
    );
\i_reg[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(1),
      O => \i_reg[4]_i_3_n_0\
    );
\i_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[5]_i_1_n_0\,
      G => \i_reg[5]_i_2_n_0\,
      GE => '1',
      Q => i(5)
    );
\i_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => i0(5),
      O => \i_reg[5]_i_1_n_0\
    );
\i_reg[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBEB88E8BB28882"
    )
        port map (
      I0 => \i_reg[5]_i_4_0\,
      I1 => i(5),
      I2 => \i_reg[5]_i_23_n_0\,
      I3 => i(4),
      I4 => \i_reg[5]_i_4_1\,
      I5 => \i_reg[5]_i_25_n_0\,
      O => \i_reg[5]_i_10_n_0\
    );
\i_reg[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFF13131CCC"
    )
        port map (
      I0 => \i0_inferred__0/i__carry__1_1\(0),
      I1 => \^i_reg[5]_i_2_0\(3),
      I2 => \^i_reg[5]_i_2_0\(1),
      I3 => \^i_reg[5]_i_2_0\(0),
      I4 => \^i_reg[5]_i_2_0\(2),
      I5 => \i_reg[5]_i_7_0\,
      O => \i_reg[5]_i_13_n_0\
    );
\i_reg[5]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(1),
      I1 => \^i_reg[5]_i_2_0\(0),
      I2 => \^i_reg[5]_i_2_0\(2),
      I3 => \^i_reg[5]_i_2_0\(3),
      O => \i_reg[5]_i_14_n_0\
    );
\i_reg[5]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56AAAAAA"
    )
        port map (
      I0 => i(4),
      I1 => \^i_reg[5]_i_2_0\(1),
      I2 => \^i_reg[5]_i_2_0\(0),
      I3 => \^i_reg[5]_i_2_0\(2),
      I4 => \^i_reg[5]_i_2_0\(3),
      O => \i_reg[5]_i_16_n_0\
    );
\i_reg[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FB5FFBFBAAFAAA"
    )
        port map (
      I0 => i(4),
      I1 => \i0_inferred__0/i__carry__1_1\(0),
      I2 => \^i_reg[5]_i_2_0\(1),
      I3 => \^i_reg[5]_i_2_0\(2),
      I4 => \^i_reg[5]_i_2_0\(0),
      I5 => \^i_reg[5]_i_2_0\(3),
      O => \i_reg[5]_i_18_n_0\
    );
\i_reg[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFF3FF2F2CBC8"
    )
        port map (
      I0 => \i_reg[5]_i_8_0\,
      I1 => \^i_reg[5]_i_2_0\(0),
      I2 => \^i_reg[5]_i_2_0\(2),
      I3 => \i0_inferred__0/i__carry__1_1\(2),
      I4 => \^i_reg[5]_i_2_0\(1),
      I5 => \^i_reg[5]_i_2_0\(3),
      O => \i_reg[5]_i_19_n_0\
    );
\i_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => flag_boton_reg_i_1_n_0,
      I2 => \i_reg[5]_i_4_n_0\,
      I3 => \i0_inferred__0/i__carry__1_n_0\,
      O => \i_reg[5]_i_2_n_0\
    );
\i_reg[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA95959555"
    )
        port map (
      I0 => i(5),
      I1 => \^i_reg[5]_i_2_0\(3),
      I2 => \^i_reg[5]_i_2_0\(2),
      I3 => \^i_reg[5]_i_2_0\(0),
      I4 => \^i_reg[5]_i_2_0\(1),
      I5 => i(4),
      O => \i_reg[5]_i_21_n_0\
    );
\i_reg[5]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(2),
      I1 => \^i_reg[5]_i_2_0\(3),
      O => \i_reg[5]_i_23_n_0\
    );
\i_reg[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7141414141417D41"
    )
        port map (
      I0 => \i_reg[5]_i_10_0\,
      I1 => \^i_reg[5]_i_2_0\(3),
      I2 => \^i_reg[5]_i_2_0\(2),
      I3 => \i0_inferred__0/i__carry__1_1\(0),
      I4 => \^i_reg[5]_i_2_0\(1),
      I5 => \^i_reg[5]_i_2_0\(0),
      O => \i_reg[5]_i_25_n_0\
    );
\i_reg[5]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"556A"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(3),
      I1 => \^i_reg[5]_i_2_0\(1),
      I2 => \^i_reg[5]_i_2_0\(0),
      I3 => \^i_reg[5]_i_2_0\(2),
      O => \i_reg[2]_0\
    );
\i_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => error_prev_reg_1,
      I1 => \i_reg[5]_i_7_n_0\,
      I2 => \i_reg[5]_i_8_n_0\,
      I3 => error_prev_reg_2,
      I4 => \i_reg[5]_i_10_n_0\,
      I5 => error_prev_reg_3,
      O => \i_reg[5]_i_3_n_0\
    );
\i_reg[5]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(2),
      I1 => \^i_reg[5]_i_2_0\(0),
      I2 => \^i_reg[5]_i_2_0\(1),
      O => \i_reg[1]_0\
    );
\i_reg[5]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(1),
      I1 => \^i_reg[5]_i_2_0\(0),
      O => \i_reg[0]_0\
    );
\i_reg[5]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(3),
      I1 => \^i_reg[5]_i_2_0\(1),
      I2 => \^i_reg[5]_i_2_0\(0),
      I3 => \^i_reg[5]_i_2_0\(2),
      O => \i_reg[2]_1\
    );
\i_reg[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => \i_reg[5]_i_7_n_0\,
      I1 => \i_reg[5]_i_8_n_0\,
      I2 => \i_reg[5]_i_10_n_0\,
      I3 => Q(0),
      I4 => Q(1),
      O => \i_reg[5]_i_4_n_0\
    );
\i_reg[5]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(2),
      I1 => \^i_reg[5]_i_2_0\(0),
      I2 => \^i_reg[5]_i_2_0\(1),
      O => \i_reg[1]_1\
    );
\i_reg[5]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^i_reg[5]_i_2_0\(1),
      I1 => \^i_reg[5]_i_2_0\(0),
      O => \i_reg[0]_1\
    );
\i_reg[5]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_2_n_0\,
      CO(3 downto 0) => \NLW_i_reg[5]_i_5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_i_reg[5]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => i0(5),
      S(3 downto 1) => B"000",
      S(0) => i(5)
    );
\i_reg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF5F5CF0C0505C0"
    )
        port map (
      I0 => \i_reg[5]_i_4_2\,
      I1 => \i_reg[5]_i_13_n_0\,
      I2 => i(5),
      I3 => \i_reg[5]_i_14_n_0\,
      I4 => i(4),
      I5 => \i_reg[5]_i_4_3\,
      O => \i_reg[5]_i_7_n_0\
    );
\i_reg[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00008F888F88"
    )
        port map (
      I0 => \i_reg[5]_i_16_n_0\,
      I1 => \i_reg[5]_i_4_4\,
      I2 => \i_reg[5]_i_18_n_0\,
      I3 => \i_reg[5]_i_19_n_0\,
      I4 => \i_reg[5]_i_4_5\,
      I5 => \i_reg[5]_i_21_n_0\,
      O => \i_reg[5]_i_8_n_0\
    );
\sec_actual_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(14),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(11)
    );
\sec_actual_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(13),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(10)
    );
\sec_actual_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(12),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(13)
    );
\sec_actual_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(11),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(14)
    );
\sec_actual_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(10),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(9)
    );
\sec_actual_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(9),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(19)
    );
\sec_actual_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(20),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(1)
    );
\sec_actual_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(8),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(8)
    );
\sec_actual_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(7),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(7)
    );
\sec_actual_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(6),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(6)
    );
\sec_actual_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(5),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(5)
    );
\sec_actual_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(4),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(4)
    );
\sec_actual_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(3),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(3)
    );
\sec_actual_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(19),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(2)
    );
\sec_actual_reg[32]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(2),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(2)
    );
\sec_actual_reg[34]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(1),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(1)
    );
\sec_actual_reg[41]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(0),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(0)
    );
\sec_actual_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(18),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(13)
    );
\sec_actual_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(17),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => \^sec_generada_s_reg[4]\(12)
    );
\sec_actual_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(16),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(6)
    );
\sec_actual_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i0_inferred__0/i__carry__1_1\(15),
      G => \i0_inferred__0/i__carry__1_n_0\,
      GE => '1',
      Q => sec_actual(8)
    );
\sec_generada_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => accion_listo,
      I1 => \i_reg[5]_i_4_n_0\,
      I2 => \sec_generada_s[1]_i_3_n_0\,
      O => E(0)
    );
\sec_generada_s[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => \i_reg[5]_i_3_n_0\,
      I1 => \sec_generada_s_reg[41]\,
      I2 => \sec_generada_s_reg[41]_0\,
      I3 => \sec_generada_s_reg[41]_1\,
      I4 => \sec_generada_s_reg[41]_2\,
      I5 => flag_boton,
      O => \sec_generada_s[1]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Controlador_de_Sec is
  port (
    \cur_state_reg[0]_0\ : out STD_LOGIC;
    pedir_tiempo_reg_P_0 : out STD_LOGIC;
    \indice_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \indice_reg[1]_0\ : out STD_LOGIC;
    \indice_reg[2]_0\ : out STD_LOGIC;
    \indice_reg[2]_1\ : out STD_LOGIC;
    \indice_reg[2]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sec_lista : in STD_LOGIC;
    fin_tiempo : in STD_LOGIC;
    \led_s_reg[1]\ : in STD_LOGIC;
    fin_detectado_reg_i_5_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    fin_detectado_reg_i_4_0 : in STD_LOGIC;
    \led_s_reg[1]_0\ : in STD_LOGIC;
    \led_s_reg[1]_1\ : in STD_LOGIC;
    fin_detectado_reg_i_3_0 : in STD_LOGIC;
    fin_detectado_reg_i_5_1 : in STD_LOGIC;
    fin_detectado_reg_i_5_2 : in STD_LOGIC;
    fin_detectado_reg_i_5_3 : in STD_LOGIC;
    fin_detectado_reg_i_4_1 : in STD_LOGIC;
    fin_detectado_reg_i_4_2 : in STD_LOGIC;
    fin_detectado_reg_i_5_4 : in STD_LOGIC;
    fin_detectado_reg_i_5_5 : in STD_LOGIC;
    clk_BUFG : in STD_LOGIC
  );
end Controlador_de_Sec;

architecture STRUCTURE of Controlador_de_Sec is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cur_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_1_n_0\ : STD_LOGIC;
  signal fin_detectado : STD_LOGIC;
  signal fin_detectado_reg_i_10_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_11_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_12_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_14_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_15_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_16_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_17_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_1_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_2_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_3_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_4_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_5_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_7_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_8_n_0 : STD_LOGIC;
  signal \indice[0]_i_1_n_0\ : STD_LOGIC;
  signal \indice[0]_i_3_n_0\ : STD_LOGIC;
  signal \indice[0]_i_4_n_0\ : STD_LOGIC;
  signal \indice[0]_i_5_n_0\ : STD_LOGIC;
  signal indice_reg : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \indice_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \^indice_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \indice_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \indice_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \indice_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \nxt_state[0]_C_n_0\ : STD_LOGIC;
  signal \nxt_state[0]_LDC_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_LDC_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_P_n_0\ : STD_LOGIC;
  signal pedir_tiempo_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal pedir_tiempo_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal \NLW_indice_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_indice_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of fin_detectado_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of fin_detectado_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fin_detectado_reg_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of fin_detectado_reg_i_12 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of fin_detectado_reg_i_16 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of fin_detectado_reg_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \led_s[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \led_s[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \led_s[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \led_s[4]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \nxt_state[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \nxt_state[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \nxt_state[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \nxt_state[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of pedir_tiempo_reg_LDC : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of pedir_tiempo_reg_LDC : label is "VCC:GE";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \indice_reg[3]_0\(3 downto 0) <= \^indice_reg[3]_0\(3 downto 0);
\cur_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \nxt_state[0]_LDC_n_0\,
      I1 => \nxt_state[0]_C_n_0\,
      O => \cur_state[0]_i_1_n_0\
    );
\cur_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \nxt_state[1]_LDC_n_0\,
      I1 => \nxt_state[1]_P_n_0\,
      O => \cur_state[1]_i_1_n_0\
    );
\cur_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \cur_state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\cur_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \cur_state[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
fin_detectado_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fin_detectado_reg_i_1_n_0,
      G => fin_detectado_reg_i_2_n_0,
      GE => '1',
      Q => fin_detectado
    );
fin_detectado_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => fin_detectado_reg_i_4_n_0,
      I4 => fin_detectado_reg_i_5_n_0,
      O => fin_detectado_reg_i_1_n_0
    );
fin_detectado_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF56AAA9550000"
    )
        port map (
      I0 => \^indice_reg[3]_0\(3),
      I1 => \^indice_reg[3]_0\(1),
      I2 => \^indice_reg[3]_0\(0),
      I3 => \^indice_reg[3]_0\(2),
      I4 => fin_detectado_reg_i_4_1,
      I5 => fin_detectado_reg_i_4_2,
      O => fin_detectado_reg_i_10_n_0
    );
fin_detectado_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEC33B3B02000808"
    )
        port map (
      I0 => fin_detectado_reg_i_5_0(0),
      I1 => \^indice_reg[3]_0\(3),
      I2 => \^indice_reg[3]_0\(1),
      I3 => \^indice_reg[3]_0\(0),
      I4 => \^indice_reg[3]_0\(2),
      I5 => fin_detectado_reg_i_4_0,
      O => fin_detectado_reg_i_11_n_0
    );
fin_detectado_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \^indice_reg[3]_0\(3),
      I1 => \^indice_reg[3]_0\(2),
      I2 => \^indice_reg[3]_0\(0),
      I3 => \^indice_reg[3]_0\(1),
      O => fin_detectado_reg_i_12_n_0
    );
fin_detectado_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF556AAA950000"
    )
        port map (
      I0 => \^indice_reg[3]_0\(3),
      I1 => \^indice_reg[3]_0\(1),
      I2 => \^indice_reg[3]_0\(0),
      I3 => \^indice_reg[3]_0\(2),
      I4 => fin_detectado_reg_i_5_4,
      I5 => fin_detectado_reg_i_5_5,
      O => fin_detectado_reg_i_14_n_0
    );
fin_detectado_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECE33320202000"
    )
        port map (
      I0 => fin_detectado_reg_i_5_0(0),
      I1 => \^indice_reg[3]_0\(3),
      I2 => \^indice_reg[3]_0\(1),
      I3 => \^indice_reg[3]_0\(0),
      I4 => \^indice_reg[3]_0\(2),
      I5 => fin_detectado_reg_i_5_3,
      O => fin_detectado_reg_i_15_n_0
    );
fin_detectado_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \^indice_reg[3]_0\(3),
      I1 => \^indice_reg[3]_0\(1),
      I2 => \^indice_reg[3]_0\(0),
      I3 => \^indice_reg[3]_0\(2),
      O => fin_detectado_reg_i_16_n_0
    );
fin_detectado_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2222BBB22222888"
    )
        port map (
      I0 => fin_detectado_reg_i_5_1,
      I1 => \^indice_reg[3]_0\(3),
      I2 => \^indice_reg[3]_0\(1),
      I3 => \^indice_reg[3]_0\(0),
      I4 => \^indice_reg[3]_0\(2),
      I5 => fin_detectado_reg_i_5_2,
      O => fin_detectado_reg_i_17_n_0
    );
fin_detectado_reg_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^indice_reg[3]_0\(2),
      I1 => \^indice_reg[3]_0\(3),
      O => \indice_reg[2]_2\
    );
fin_detectado_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03030307"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => fin_detectado_reg_i_5_n_0,
      I4 => fin_detectado_reg_i_4_n_0,
      O => fin_detectado_reg_i_2_n_0
    );
fin_detectado_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFAFACF0C0A0AC0"
    )
        port map (
      I0 => \led_s_reg[1]_0\,
      I1 => fin_detectado_reg_i_7_n_0,
      I2 => indice_reg(5),
      I3 => fin_detectado_reg_i_8_n_0,
      I4 => indice_reg(4),
      I5 => \led_s_reg[1]_1\,
      O => fin_detectado_reg_i_3_n_0
    );
fin_detectado_reg_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^indice_reg[3]_0\(1),
      I1 => \^indice_reg[3]_0\(0),
      O => \indice_reg[1]_0\
    );
fin_detectado_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFAFACF0C0A0AC0"
    )
        port map (
      I0 => fin_detectado_reg_i_10_n_0,
      I1 => fin_detectado_reg_i_11_n_0,
      I2 => indice_reg(5),
      I3 => fin_detectado_reg_i_12_n_0,
      I4 => indice_reg(4),
      I5 => \led_s_reg[1]\,
      O => fin_detectado_reg_i_4_n_0
    );
fin_detectado_reg_i_41: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \^indice_reg[3]_0\(2),
      I1 => \^indice_reg[3]_0\(0),
      I2 => \^indice_reg[3]_0\(1),
      O => \indice_reg[2]_1\
    );
fin_detectado_reg_i_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^indice_reg[3]_0\(2),
      I1 => \^indice_reg[3]_0\(0),
      I2 => \^indice_reg[3]_0\(1),
      O => \indice_reg[2]_0\
    );
fin_detectado_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFAFACF0C0A0AC0"
    )
        port map (
      I0 => fin_detectado_reg_i_14_n_0,
      I1 => fin_detectado_reg_i_15_n_0,
      I2 => indice_reg(5),
      I3 => fin_detectado_reg_i_16_n_0,
      I4 => indice_reg(4),
      I5 => fin_detectado_reg_i_17_n_0,
      O => fin_detectado_reg_i_5_n_0
    );
fin_detectado_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E8282828282BE82"
    )
        port map (
      I0 => fin_detectado_reg_i_3_0,
      I1 => \^indice_reg[3]_0\(2),
      I2 => \^indice_reg[3]_0\(3),
      I3 => fin_detectado_reg_i_5_0(0),
      I4 => \^indice_reg[3]_0\(1),
      I5 => \^indice_reg[3]_0\(0),
      O => fin_detectado_reg_i_7_n_0
    );
fin_detectado_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^indice_reg[3]_0\(2),
      I1 => \^indice_reg[3]_0\(3),
      O => fin_detectado_reg_i_8_n_0
    );
\indice[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => fin_detectado_reg_i_4_n_0,
      I2 => fin_detectado_reg_i_5_n_0,
      O => \indice[0]_i_1_n_0\
    );
\indice[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \indice[0]_i_3_n_0\
    );
\indice[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^indice_reg[3]_0\(1),
      O => \indice[0]_i_4_n_0\
    );
\indice[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^indice_reg[3]_0\(0),
      O => \indice[0]_i_5_n_0\
    );
\indice_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fin_tiempo,
      CE => \indice[0]_i_1_n_0\,
      CLR => \indice[0]_i_3_n_0\,
      D => \indice_reg[0]_i_2_n_7\,
      Q => \^indice_reg[3]_0\(0)
    );
\indice_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \indice_reg[0]_i_2_n_0\,
      CO(2) => \indice_reg[0]_i_2_n_1\,
      CO(1) => \indice_reg[0]_i_2_n_2\,
      CO(0) => \indice_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \indice_reg[0]_i_2_n_4\,
      O(2) => \indice_reg[0]_i_2_n_5\,
      O(1) => \indice_reg[0]_i_2_n_6\,
      O(0) => \indice_reg[0]_i_2_n_7\,
      S(3 downto 2) => \^indice_reg[3]_0\(3 downto 2),
      S(1) => \indice[0]_i_4_n_0\,
      S(0) => \indice[0]_i_5_n_0\
    );
\indice_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fin_tiempo,
      CE => \indice[0]_i_1_n_0\,
      CLR => \indice[0]_i_3_n_0\,
      D => \indice_reg[0]_i_2_n_6\,
      Q => \^indice_reg[3]_0\(1)
    );
\indice_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fin_tiempo,
      CE => \indice[0]_i_1_n_0\,
      CLR => \indice[0]_i_3_n_0\,
      D => \indice_reg[0]_i_2_n_5\,
      Q => \^indice_reg[3]_0\(2)
    );
\indice_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fin_tiempo,
      CE => \indice[0]_i_1_n_0\,
      CLR => \indice[0]_i_3_n_0\,
      D => \indice_reg[0]_i_2_n_4\,
      Q => \^indice_reg[3]_0\(3)
    );
\indice_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fin_tiempo,
      CE => \indice[0]_i_1_n_0\,
      CLR => \indice[0]_i_3_n_0\,
      D => \indice_reg[4]_i_1_n_7\,
      Q => indice_reg(4)
    );
\indice_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indice_reg[0]_i_2_n_0\,
      CO(3 downto 1) => \NLW_indice_reg[4]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \indice_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_indice_reg[4]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \indice_reg[4]_i_1_n_6\,
      O(0) => \indice_reg[4]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => indice_reg(5 downto 4)
    );
\indice_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => fin_tiempo,
      CE => \indice[0]_i_1_n_0\,
      CLR => \indice[0]_i_3_n_0\,
      D => \indice_reg[4]_i_1_n_6\,
      Q => indice_reg(5)
    );
\led_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => fin_detectado_reg_i_5_n_0,
      I4 => fin_detectado_reg_i_4_n_0,
      O => D(0)
    );
\led_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => fin_detectado_reg_i_4_n_0,
      I4 => fin_detectado_reg_i_5_n_0,
      O => D(1)
    );
\led_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => fin_detectado_reg_i_5_n_0,
      I4 => fin_detectado_reg_i_4_n_0,
      O => D(2)
    );
\led_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => fin_detectado_reg_i_4_n_0,
      I4 => fin_detectado_reg_i_5_n_0,
      O => D(3)
    );
\nxt_state[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sec_lista,
      CE => '1',
      CLR => \nxt_state[1]_LDC_i_1_n_0\,
      D => '1',
      Q => \nxt_state[0]_C_n_0\
    );
\nxt_state[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \nxt_state[1]_LDC_i_1_n_0\,
      D => '1',
      G => \nxt_state[1]_LDC_i_2_n_0\,
      GE => '1',
      Q => \nxt_state[0]_LDC_n_0\
    );
\nxt_state[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \nxt_state[1]_LDC_i_2_n_0\,
      D => '1',
      G => \nxt_state[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \nxt_state[1]_LDC_n_0\
    );
\nxt_state[1]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => fin_detectado,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \nxt_state[1]_LDC_i_1_n_0\
    );
\nxt_state[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \nxt_state[1]_LDC_i_2_n_0\
    );
\nxt_state[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sec_lista,
      CE => '1',
      D => '0',
      PRE => \nxt_state[1]_LDC_i_1_n_0\,
      Q => \nxt_state[1]_P_n_0\
    );
pedir_tiempo_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => pedir_tiempo_reg_LDC_i_2_n_0,
      D => '1',
      G => pedir_tiempo_reg_LDC_i_1_n_0,
      GE => '1',
      Q => \cur_state_reg[0]_0\
    );
pedir_tiempo_reg_LDC_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => fin_detectado_reg_i_5_n_0,
      I1 => fin_detectado_reg_i_4_n_0,
      I2 => fin_detectado_reg_i_3_n_0,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => pedir_tiempo_reg_LDC_i_1_n_0
    );
pedir_tiempo_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => pedir_tiempo_reg_LDC_i_2_n_0
    );
pedir_tiempo_reg_P: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => fin_tiempo,
      CE => '1',
      D => '0',
      PRE => pedir_tiempo_reg_LDC_i_1_n_0,
      Q => pedir_tiempo_reg_P_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decod_Leds_Sec is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Decod_Leds_Sec;

architecture STRUCTURE of Decod_Leds_Sec is
begin
\led_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\led_s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\led_s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\led_s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DivisorReloj is
  port (
    \^clk\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC
  );
end DivisorReloj;

architecture STRUCTURE of DivisorReloj is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_1\ : STD_LOGIC;
  signal clk_temp_i_1_n_0 : STD_LOGIC;
  signal clk_temp_n_0 : STD_LOGIC;
  signal contador : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \contador[0]_i_1_n_0\ : STD_LOGIC;
  signal contador_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \contador[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \contador[3]_i_1\ : label is "soft_lutpair13";
begin
  AR(0) <= \^ar\(0);
  \^clk\ <= \^clk_1\;
clk_temp: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador(1),
      I1 => contador(2),
      O => clk_temp_n_0
    );
clk_temp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => contador(5),
      I1 => contador(0),
      I2 => contador(4),
      I3 => clk_temp_n_0,
      I4 => contador(3),
      I5 => \^clk_1\,
      O => clk_temp_i_1_n_0
    );
clk_temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => clk_temp_i_1_n_0,
      Q => \^clk_1\
    );
\contador[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador(0),
      O => \contador[0]_i_1_n_0\
    );
\contador[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A855AA55AA55AA"
    )
        port map (
      I0 => contador(0),
      I1 => contador(3),
      I2 => contador(2),
      I3 => contador(1),
      I4 => contador(4),
      I5 => contador(5),
      O => contador_0(1)
    );
\contador[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => contador(0),
      I1 => contador(2),
      I2 => contador(1),
      O => contador_0(2)
    );
\contador[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => contador(0),
      I1 => contador(3),
      I2 => contador(2),
      I3 => contador(1),
      O => contador_0(3)
    );
\contador[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFD80007FFF8000"
    )
        port map (
      I0 => contador(0),
      I1 => contador(3),
      I2 => contador(2),
      I3 => contador(1),
      I4 => contador(4),
      I5 => contador(5),
      O => contador_0(4)
    );
\contador[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFFFF80000000"
    )
        port map (
      I0 => contador(0),
      I1 => contador(3),
      I2 => contador(2),
      I3 => contador(1),
      I4 => contador(4),
      I5 => contador(5),
      O => contador_0(5)
    );
\contador[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET_IBUF,
      O => \^ar\(0)
    );
\contador_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \contador[0]_i_1_n_0\,
      Q => contador(0)
    );
\contador_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => contador_0(1),
      Q => contador(1)
    );
\contador_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => contador_0(2),
      Q => contador(2)
    );
\contador_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => contador_0(3),
      Q => contador(3)
    );
\contador_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => contador_0(4),
      Q => contador(4)
    );
\contador_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => contador_0(5),
      Q => contador(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GenSecuencia is
  port (
    sec_lista : out STD_LOGIC;
    \sec_generada_s_reg[41]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[23]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[32]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \sec_generada_s_reg[41]_1\ : out STD_LOGIC;
    \sec_generada_s_reg[41]_2\ : out STD_LOGIC;
    \sec_generada_s_reg[34]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[41]_3\ : out STD_LOGIC;
    \sec_generada_s_reg[21]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[4]_0\ : out STD_LOGIC;
    \indice_reg[3]\ : out STD_LOGIC;
    \indice_reg[2]\ : out STD_LOGIC;
    \indice_reg[2]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[34]_1\ : out STD_LOGIC;
    \sec_generada_s_reg[1]_0\ : out STD_LOGIC;
    \indice_reg[2]_1\ : out STD_LOGIC;
    \sec_generada_s_reg[41]_4\ : out STD_LOGIC;
    \sec_generada_s_reg[34]_2\ : out STD_LOGIC;
    \indice_reg[2]_2\ : out STD_LOGIC;
    \indice_reg[2]_3\ : out STD_LOGIC;
    \indice_reg[2]_4\ : out STD_LOGIC;
    \indice_reg[2]_5\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[21]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[4]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_BUFG : in STD_LOGIC;
    \i_reg[5]_i_7\ : in STD_LOGIC;
    \i_reg[5]_i_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i_reg[5]_i_7_0\ : in STD_LOGIC;
    \i_reg[5]_i_7_1\ : in STD_LOGIC;
    \i_reg[5]_i_8\ : in STD_LOGIC;
    \i_reg[5]_i_8_0\ : in STD_LOGIC;
    \i_reg[5]_i_8_1\ : in STD_LOGIC;
    fin_detectado_reg_i_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fin_detectado_reg_i_4 : in STD_LOGIC;
    fin_detectado_reg_i_10 : in STD_LOGIC;
    fin_detectado_reg_i_14 : in STD_LOGIC;
    fin_detectado_reg_i_3_0 : in STD_LOGIC;
    \i0_inferred__0/i__carry__1\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    D : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
end GenSecuencia;

architecture STRUCTURE of GenSecuencia is
  signal \^q\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal fin_detectado_reg_i_19_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_20_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_22_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_23_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_24_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_28_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_29_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_31_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_37_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_38_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_39_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_40_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_42_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_43_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_44_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_45_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_47_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_48_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_49_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_50_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_51_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_52_n_0 : STD_LOGIC;
  signal \i_reg[5]_i_26_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_27_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_29_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_31_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_33_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_34_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_36_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_37_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_38_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_40_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_42_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_44_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_45_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_47_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_48_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_49_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_50_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_51_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_52_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_53_n_0\ : STD_LOGIC;
  signal \i_reg[5]_i_54_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fin_detectado_reg_i_24 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of fin_detectado_reg_i_28 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_reg[5]_i_27\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_reg[5]_i_31\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_reg[5]_i_34\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i_reg[5]_i_37\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_reg[5]_i_42\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_reg[5]_i_44\ : label is "soft_lutpair16";
begin
  Q(20 downto 0) <= \^q\(20 downto 0);
fin_detectado_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0CC0AFA00CC0A0"
    )
        port map (
      I0 => fin_detectado_reg_i_28_n_0,
      I1 => fin_detectado_reg_i_29_n_0,
      I2 => fin_detectado_reg_i_3(3),
      I3 => fin_detectado_reg_i_4,
      I4 => fin_detectado_reg_i_3(2),
      I5 => fin_detectado_reg_i_31_n_0,
      O => \indice_reg[3]\
    );
fin_detectado_reg_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_37_n_0,
      I1 => fin_detectado_reg_i_38_n_0,
      O => fin_detectado_reg_i_19_n_0,
      S => fin_detectado_reg_i_3(2)
    );
fin_detectado_reg_i_20: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_39_n_0,
      I1 => fin_detectado_reg_i_40_n_0,
      O => fin_detectado_reg_i_20_n_0,
      S => fin_detectado_reg_i_3(2)
    );
fin_detectado_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000A0A0000FC0C"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => fin_detectado_reg_i_3(2),
      I3 => \^q\(2),
      I4 => fin_detectado_reg_i_3(1),
      I5 => fin_detectado_reg_i_3(0),
      O => \sec_generada_s_reg[34]_2\
    );
fin_detectado_reg_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(8),
      I2 => fin_detectado_reg_i_3(1),
      I3 => \^q\(19),
      I4 => fin_detectado_reg_i_3(0),
      I5 => \^q\(20),
      O => fin_detectado_reg_i_22_n_0
    );
fin_detectado_reg_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(0),
      I2 => fin_detectado_reg_i_3(1),
      I3 => \^q\(16),
      I4 => fin_detectado_reg_i_3(0),
      I5 => \^q\(17),
      O => fin_detectado_reg_i_23_n_0
    );
fin_detectado_reg_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(13),
      I1 => fin_detectado_reg_i_3(1),
      I2 => \^q\(14),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(0),
      O => fin_detectado_reg_i_24_n_0
    );
fin_detectado_reg_i_25: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_42_n_0,
      I1 => fin_detectado_reg_i_43_n_0,
      O => \indice_reg[2]\,
      S => fin_detectado_reg_i_10
    );
fin_detectado_reg_i_26: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_44_n_0,
      I1 => fin_detectado_reg_i_45_n_0,
      O => \indice_reg[2]_0\,
      S => fin_detectado_reg_i_10
    );
fin_detectado_reg_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000AFC0F000A0C00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => fin_detectado_reg_i_3(2),
      I3 => fin_detectado_reg_i_3(0),
      I4 => fin_detectado_reg_i_3(1),
      I5 => \^q\(2),
      O => \sec_generada_s_reg[34]_1\
    );
fin_detectado_reg_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \^q\(13),
      I1 => fin_detectado_reg_i_3(1),
      I2 => fin_detectado_reg_i_3(0),
      I3 => \^q\(0),
      I4 => \^q\(14),
      O => fin_detectado_reg_i_28_n_0
    );
fin_detectado_reg_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(15),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(17),
      I5 => \^q\(16),
      O => fin_detectado_reg_i_29_n_0
    );
fin_detectado_reg_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(18),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(20),
      I5 => \^q\(19),
      O => fin_detectado_reg_i_31_n_0
    );
fin_detectado_reg_i_32: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_47_n_0,
      I1 => fin_detectado_reg_i_48_n_0,
      O => \indice_reg[2]_2\,
      S => fin_detectado_reg_i_14
    );
fin_detectado_reg_i_33: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_49_n_0,
      I1 => fin_detectado_reg_i_50_n_0,
      O => \indice_reg[2]_4\,
      S => fin_detectado_reg_i_14
    );
fin_detectado_reg_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00F000F00000CC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => fin_detectado_reg_i_3(1),
      I4 => fin_detectado_reg_i_3(0),
      I5 => fin_detectado_reg_i_3(2),
      O => \sec_generada_s_reg[41]_4\
    );
fin_detectado_reg_i_35: unisim.vcomponents.MUXF7
     port map (
      I0 => fin_detectado_reg_i_51_n_0,
      I1 => fin_detectado_reg_i_52_n_0,
      O => \indice_reg[2]_1\,
      S => fin_detectado_reg_i_14
    );
fin_detectado_reg_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(19),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(8),
      I5 => \^q\(18),
      O => \sec_generada_s_reg[1]_0\
    );
fin_detectado_reg_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^q\(3),
      I1 => fin_detectado_reg_i_3(1),
      I2 => \^q\(4),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(0),
      O => fin_detectado_reg_i_37_n_0
    );
fin_detectado_reg_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(5),
      I2 => fin_detectado_reg_i_3(1),
      I3 => \^q\(6),
      I4 => fin_detectado_reg_i_3(0),
      I5 => \^q\(7),
      O => fin_detectado_reg_i_38_n_0
    );
fin_detectado_reg_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => fin_detectado_reg_i_3(1),
      I3 => \^q\(10),
      I4 => fin_detectado_reg_i_3(0),
      O => fin_detectado_reg_i_39_n_0
    );
fin_detectado_reg_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => fin_detectado_reg_i_3(1),
      I3 => \^q\(11),
      I4 => fin_detectado_reg_i_3(0),
      I5 => \^q\(12),
      O => fin_detectado_reg_i_40_n_0
    );
fin_detectado_reg_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(12),
      I5 => \^q\(11),
      O => fin_detectado_reg_i_42_n_0
    );
fin_detectado_reg_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(10),
      O => fin_detectado_reg_i_43_n_0
    );
fin_detectado_reg_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(7),
      I5 => \^q\(6),
      O => fin_detectado_reg_i_44_n_0
    );
fin_detectado_reg_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => \^q\(3),
      I1 => fin_detectado_reg_i_3(1),
      I2 => fin_detectado_reg_i_3(0),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => fin_detectado_reg_i_45_n_0
    );
fin_detectado_reg_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => \^q\(10),
      I1 => fin_detectado_reg_i_3(1),
      I2 => fin_detectado_reg_i_3(0),
      I3 => \^q\(9),
      I4 => \^q\(8),
      O => fin_detectado_reg_i_47_n_0
    );
fin_detectado_reg_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(11),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => fin_detectado_reg_i_48_n_0
    );
fin_detectado_reg_i_49: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0FCA00C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(3),
      O => fin_detectado_reg_i_49_n_0
    );
fin_detectado_reg_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(5),
      I5 => \^q\(1),
      O => fin_detectado_reg_i_50_n_0
    );
fin_detectado_reg_i_51: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF0CA00C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(14),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(13),
      O => fin_detectado_reg_i_51_n_0
    );
fin_detectado_reg_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      I2 => fin_detectado_reg_i_3(1),
      I3 => fin_detectado_reg_i_3(0),
      I4 => \^q\(0),
      I5 => \^q\(15),
      O => fin_detectado_reg_i_52_n_0
    );
fin_detectado_reg_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => fin_detectado_reg_i_19_n_0,
      I1 => fin_detectado_reg_i_20_n_0,
      O => \indice_reg[2]_3\,
      S => fin_detectado_reg_i_3_0
    );
fin_detectado_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E320E02"
    )
        port map (
      I0 => fin_detectado_reg_i_22_n_0,
      I1 => fin_detectado_reg_i_3(2),
      I2 => fin_detectado_reg_i_3(3),
      I3 => fin_detectado_reg_i_23_n_0,
      I4 => fin_detectado_reg_i_24_n_0,
      O => \indice_reg[2]_5\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \i0_inferred__0/i__carry__1\(7),
      I2 => \^q\(6),
      I3 => \i0_inferred__0/i__carry__1\(6),
      I4 => \i0_inferred__0/i__carry__1\(9),
      I5 => \^q\(10),
      O => \sec_generada_s_reg[21]_1\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \i0_inferred__0/i__carry__1\(7),
      I2 => \^q\(6),
      I3 => \i0_inferred__0/i__carry__1\(6),
      I4 => \i0_inferred__0/i__carry__1\(5),
      I5 => \^q\(5),
      O => \sec_generada_s_reg[21]_1\(0)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(18),
      I1 => \i0_inferred__0/i__carry__1\(13),
      I2 => \^q\(8),
      I3 => \i0_inferred__0/i__carry__1\(8),
      I4 => \i0_inferred__0/i__carry__1\(12),
      I5 => \^q\(17),
      O => \sec_generada_s_reg[4]_1\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(14),
      I1 => \i0_inferred__0/i__carry__1\(11),
      I2 => \^q\(0),
      I3 => \i0_inferred__0/i__carry__1\(0),
      I4 => \i0_inferred__0/i__carry__1\(10),
      I5 => \^q\(13),
      O => \sec_generada_s_reg[4]_1\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \i0_inferred__0/i__carry__1\(1),
      I2 => \^q\(0),
      I3 => \i0_inferred__0/i__carry__1\(0),
      I4 => \i0_inferred__0/i__carry__1\(4),
      I5 => \^q\(4),
      O => S(1)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \i0_inferred__0/i__carry__1\(2),
      I2 => \i0_inferred__0/i__carry__1\(3),
      I3 => \^q\(3),
      O => S(0)
    );
\i_reg[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_reg[5]_i_26_n_0\,
      I1 => \i_reg[5]_i_27_n_0\,
      I2 => \i_reg[5]_i_7_0\,
      I3 => \i_reg[5]_i_29_n_0\,
      I4 => \i_reg[5]_i_7_1\,
      I5 => \i_reg[5]_i_31_n_0\,
      O => \sec_generada_s_reg[23]_0\
    );
\i_reg[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF3FFF33550355F"
    )
        port map (
      I0 => \i_reg[5]_i_33_n_0\,
      I1 => \i_reg[5]_i_34_n_0\,
      I2 => \i_reg[5]_i_7\,
      I3 => \i_reg[5]_i_10\(2),
      I4 => \i_reg[5]_i_36_n_0\,
      I5 => \i_reg[5]_i_10\(3),
      O => \sec_generada_s_reg[41]_0\
    );
\i_reg[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \i_reg[5]_i_37_n_0\,
      I1 => \i_reg[5]_i_38_n_0\,
      I2 => \i_reg[5]_i_8\,
      I3 => \i_reg[5]_i_40_n_0\,
      I4 => \i_reg[5]_i_8_0\,
      I5 => \i_reg[5]_i_42_n_0\,
      O => \sec_generada_s_reg[41]_1\
    );
\i_reg[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0CC0AFA00CC0A0"
    )
        port map (
      I0 => \i_reg[5]_i_44_n_0\,
      I1 => \i_reg[5]_i_45_n_0\,
      I2 => \i_reg[5]_i_10\(3),
      I3 => \i_reg[5]_i_8_1\,
      I4 => \i_reg[5]_i_10\(2),
      I5 => \i_reg[5]_i_47_n_0\,
      O => \sec_generada_s_reg[41]_2\
    );
\i_reg[5]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E320E02"
    )
        port map (
      I0 => \i_reg[5]_i_48_n_0\,
      I1 => \i_reg[5]_i_10\(2),
      I2 => \i_reg[5]_i_10\(3),
      I3 => \i_reg[5]_i_49_n_0\,
      I4 => \i_reg[5]_i_50_n_0\,
      O => \sec_generada_s_reg[4]_0\
    );
\i_reg[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAF0CA0FCA00C"
    )
        port map (
      I0 => \i_reg[5]_i_51_n_0\,
      I1 => \i_reg[5]_i_52_n_0\,
      I2 => \i_reg[5]_i_10\(2),
      I3 => \i_reg[5]_i_10\(3),
      I4 => \i_reg[5]_i_53_n_0\,
      I5 => \i_reg[5]_i_54_n_0\,
      O => \sec_generada_s_reg[21]_0\
    );
\i_reg[5]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(7),
      I5 => \^q\(6),
      O => \i_reg[5]_i_26_n_0\
    );
\i_reg[5]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CB0BC808"
    )
        port map (
      I0 => \^q\(3),
      I1 => \i_reg[5]_i_10\(1),
      I2 => \i_reg[5]_i_10\(0),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => \i_reg[5]_i_27_n_0\
    );
\i_reg[5]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(12),
      I5 => \^q\(11),
      O => \i_reg[5]_i_29_n_0\
    );
\i_reg[5]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(10),
      O => \i_reg[5]_i_31_n_0\
    );
\i_reg[5]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17FC17FFD7FCD7FF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \i_reg[5]_i_10\(2),
      I2 => \i_reg[5]_i_10\(0),
      I3 => \i_reg[5]_i_10\(1),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \sec_generada_s_reg[32]_0\
    );
\i_reg[5]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(15),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(17),
      I5 => \^q\(16),
      O => \i_reg[5]_i_33_n_0\
    );
\i_reg[5]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E323E020"
    )
        port map (
      I0 => \^q\(13),
      I1 => \i_reg[5]_i_10\(1),
      I2 => \i_reg[5]_i_10\(0),
      I3 => \^q\(0),
      I4 => \^q\(14),
      O => \i_reg[5]_i_34_n_0\
    );
\i_reg[5]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(18),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(20),
      I5 => \^q\(19),
      O => \i_reg[5]_i_36_n_0\
    );
\i_reg[5]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACF0AC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(3),
      O => \i_reg[5]_i_37_n_0\
    );
\i_reg[5]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(5),
      I5 => \^q\(1),
      O => \i_reg[5]_i_38_n_0\
    );
\i_reg[5]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(11),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \i_reg[5]_i_40_n_0\
    );
\i_reg[5]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E323E020"
    )
        port map (
      I0 => \^q\(10),
      I1 => \i_reg[5]_i_10\(1),
      I2 => \i_reg[5]_i_10\(0),
      I3 => \^q\(9),
      I4 => \^q\(8),
      O => \i_reg[5]_i_42_n_0\
    );
\i_reg[5]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \i_reg[5]_i_10\(0),
      I2 => \^q\(1),
      O => \sec_generada_s_reg[41]_3\
    );
\i_reg[5]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(14),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(13),
      O => \i_reg[5]_i_44_n_0\
    );
\i_reg[5]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(0),
      I5 => \^q\(15),
      O => \i_reg[5]_i_45_n_0\
    );
\i_reg[5]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(19),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(8),
      I5 => \^q\(18),
      O => \i_reg[5]_i_47_n_0\
    );
\i_reg[5]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(8),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \^q\(19),
      I4 => \i_reg[5]_i_10\(0),
      I5 => \^q\(20),
      O => \i_reg[5]_i_48_n_0\
    );
\i_reg[5]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(0),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \^q\(16),
      I4 => \i_reg[5]_i_10\(0),
      I5 => \^q\(17),
      O => \i_reg[5]_i_49_n_0\
    );
\i_reg[5]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(13),
      I1 => \i_reg[5]_i_10\(1),
      I2 => \^q\(14),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(0),
      O => \i_reg[5]_i_50_n_0\
    );
\i_reg[5]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \^q\(11),
      I4 => \i_reg[5]_i_10\(0),
      I5 => \^q\(12),
      O => \i_reg[5]_i_51_n_0\
    );
\i_reg[5]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \^q\(10),
      I4 => \i_reg[5]_i_10\(0),
      O => \i_reg[5]_i_52_n_0\
    );
\i_reg[5]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(5),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \^q\(6),
      I4 => \i_reg[5]_i_10\(0),
      I5 => \^q\(7),
      O => \i_reg[5]_i_53_n_0\
    );
\i_reg[5]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^q\(3),
      I1 => \i_reg[5]_i_10\(1),
      I2 => \^q\(4),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(0),
      O => \i_reg[5]_i_54_n_0\
    );
\i_reg[5]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0FFFFF5F3F5F3"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \i_reg[5]_i_10\(1),
      I3 => \i_reg[5]_i_10\(0),
      I4 => \^q\(2),
      I5 => \i_reg[5]_i_10\(2),
      O => \sec_generada_s_reg[34]_0\
    );
\sec_generada_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(14),
      Q => \^q\(14),
      R => '0'
    );
\sec_generada_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(13),
      Q => \^q\(13),
      R => '0'
    );
\sec_generada_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(12),
      Q => \^q\(12),
      R => '0'
    );
\sec_generada_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(11),
      Q => \^q\(11),
      R => '0'
    );
\sec_generada_s_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(10),
      Q => \^q\(10),
      R => '0'
    );
\sec_generada_s_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(9),
      Q => \^q\(9),
      R => '0'
    );
\sec_generada_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(20),
      Q => \^q\(20),
      R => '0'
    );
\sec_generada_s_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(8),
      Q => \^q\(8),
      R => '0'
    );
\sec_generada_s_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => '0'
    );
\sec_generada_s_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => '0'
    );
\sec_generada_s_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => '0'
    );
\sec_generada_s_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => '0'
    );
\sec_generada_s_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\sec_generada_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(19),
      Q => \^q\(19),
      R => '0'
    );
\sec_generada_s_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\sec_generada_s_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\sec_generada_s_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\sec_generada_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(18),
      Q => \^q\(18),
      R => '0'
    );
\sec_generada_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(17),
      Q => \^q\(17),
      R => '0'
    );
\sec_generada_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(16),
      Q => \^q\(16),
      R => '0'
    );
\sec_generada_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => E(0),
      D => D(15),
      Q => \^q\(15),
      R => '0'
    );
sec_lista_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => E(0),
      Q => sec_lista,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controlador_nivel is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_0_in__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \estado_actual_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    exito_prev_reg_0 : in STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    error_prev_reg_0 : in STD_LOGIC;
    \estado_actual_reg[1]_0\ : in STD_LOGIC;
    \estado_actual_reg[1]_1\ : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end controlador_nivel;

architecture STRUCTURE of controlador_nivel is
  signal estado_actual : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal estado_siguiente : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \display_s[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \display_s[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \estado_actual[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \estado_actual[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \estado_actual[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sec_generada_s[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sec_generada_s[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sec_generada_s[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sec_generada_s[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sec_generada_s[17]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sec_generada_s[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sec_generada_s[1]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sec_generada_s[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sec_generada_s[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sec_generada_s[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sec_generada_s[23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sec_generada_s[26]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sec_generada_s[28]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sec_generada_s[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sec_generada_s[32]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sec_generada_s[34]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sec_generada_s[41]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sec_generada_s[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sec_generada_s[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sec_generada_s[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sec_generada_s[8]_i_1\ : label is "soft_lutpair28";
begin
\display_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => \estado_actual_reg[2]_0\(0)
    );
\display_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"58"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => estado_actual(1),
      O => \estado_actual_reg[2]_0\(1)
    );
error_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => error_prev_reg_0,
      Q => \p_0_in__0\(0),
      R => '0'
    );
\estado_actual[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1011300F"
    )
        port map (
      I0 => estado_actual(1),
      I1 => \estado_actual_reg[1]_1\,
      I2 => estado_actual(0),
      I3 => \estado_actual_reg[1]_0\,
      I4 => estado_actual(2),
      O => estado_siguiente(0)
    );
\estado_actual[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01104510"
    )
        port map (
      I0 => estado_actual(2),
      I1 => \estado_actual_reg[1]_0\,
      I2 => estado_actual(0),
      I3 => estado_actual(1),
      I4 => \estado_actual_reg[1]_1\,
      O => estado_siguiente(1)
    );
\estado_actual[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03005050"
    )
        port map (
      I0 => \estado_actual_reg[1]_1\,
      I1 => \estado_actual_reg[1]_0\,
      I2 => estado_actual(2),
      I3 => estado_actual(0),
      I4 => estado_actual(1),
      O => estado_siguiente(2)
    );
\estado_actual_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => estado_siguiente(0),
      Q => estado_actual(0)
    );
\estado_actual_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => estado_siguiente(1),
      Q => estado_actual(1)
    );
\estado_actual_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      CLR => AR(0),
      D => estado_siguiente(2),
      Q => estado_actual(2)
    );
exito_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => exito_prev_reg_0,
      Q => p_0_in(0),
      R => '0'
    );
\sec_generada_s[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => estado_actual(1),
      O => D(14)
    );
\sec_generada_s[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(13)
    );
\sec_generada_s[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(12)
    );
\sec_generada_s[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(11)
    );
\sec_generada_s[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      O => D(10)
    );
\sec_generada_s[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      O => D(9)
    );
\sec_generada_s[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(20)
    );
\sec_generada_s[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(8)
    );
\sec_generada_s[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(7)
    );
\sec_generada_s[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(6)
    );
\sec_generada_s[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => D(5)
    );
\sec_generada_s[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => estado_actual(1),
      O => D(4)
    );
\sec_generada_s[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => estado_actual(1),
      O => D(3)
    );
\sec_generada_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => D(19)
    );
\sec_generada_s[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      O => D(2)
    );
\sec_generada_s[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(1)
    );
\sec_generada_s[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(0),
      I2 => estado_actual(2),
      O => D(0)
    );
\sec_generada_s[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A7"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(0),
      I2 => estado_actual(2),
      O => D(18)
    );
\sec_generada_s[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DB"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(17)
    );
\sec_generada_s[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(16)
    );
\sec_generada_s[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AD"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decod_display is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_BUFG : in STD_LOGIC
  );
end decod_display;

architecture STRUCTURE of decod_display is
begin
\display_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\display_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\display_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\display_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\display_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\display_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\display_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sync is
  port (
    SYNC_OUT_reg_0 : out STD_LOGIC;
    SYNC_OUT_reg_1 : out STD_LOGIC;
    SYNC_OUT_reg_2 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    \i_reg[5]_i_3\ : in STD_LOGIC;
    \i_reg[5]_i_3_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sync;

architecture STRUCTURE of sync is
  signal \^sync_out_reg_0\ : STD_LOGIC;
  signal sreg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_reg[5]_i_11\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_reg[5]_i_6\ : label is "soft_lutpair31";
begin
  SYNC_OUT_reg_0 <= \^sync_out_reg_0\;
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => sreg(1),
      Q => \^sync_out_reg_0\,
      R => '0'
    );
\i_reg[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^sync_out_reg_0\,
      I1 => \i_reg[5]_i_3\,
      I2 => \i_reg[5]_i_3_0\,
      O => SYNC_OUT_reg_1
    );
\i_reg[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^sync_out_reg_0\,
      I1 => \i_reg[5]_i_3_0\,
      I2 => \i_reg[5]_i_3\,
      O => SYNC_OUT_reg_2
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(0),
      Q => sreg(0),
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => sreg(0),
      Q => sreg(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sync_0 is
  port (
    SYNC_OUT_reg_0 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_0 : entity is "sync";
end sync_0;

architecture STRUCTURE of sync_0 is
  signal \sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sreg_reg_n_0_[1]\ : STD_LOGIC;
begin
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[1]\,
      Q => SYNC_OUT_reg_0,
      R => '0'
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(0),
      Q => \sreg_reg_n_0_[0]\,
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[0]\,
      Q => \sreg_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sync_1 is
  port (
    SYNC_OUT_reg_0 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_1 : entity is "sync";
end sync_1;

architecture STRUCTURE of sync_1 is
  signal \sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sreg_reg_n_0_[1]\ : STD_LOGIC;
begin
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[1]\,
      Q => SYNC_OUT_reg_0,
      R => '0'
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(0),
      Q => \sreg_reg_n_0_[0]\,
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[0]\,
      Q => \sreg_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sync_2 is
  port (
    SYNC_OUT_reg_0 : out STD_LOGIC;
    SYNC_OUT_reg_1 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    \i_reg[5]_i_3\ : in STD_LOGIC;
    \i_reg[5]_i_3_0\ : in STD_LOGIC;
    \i_reg[5]_i_3_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_2 : entity is "sync";
end sync_2;

architecture STRUCTURE of sync_2 is
  signal \^sync_out_reg_0\ : STD_LOGIC;
  signal \sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sreg_reg_n_0_[1]\ : STD_LOGIC;
begin
  SYNC_OUT_reg_0 <= \^sync_out_reg_0\;
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[1]\,
      Q => \^sync_out_reg_0\,
      R => '0'
    );
\i_reg[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^sync_out_reg_0\,
      I1 => \i_reg[5]_i_3\,
      I2 => \i_reg[5]_i_3_0\,
      I3 => \i_reg[5]_i_3_1\,
      O => SYNC_OUT_reg_1
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(0),
      Q => \sreg_reg_n_0_[0]\,
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[0]\,
      Q => \sreg_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sync_3 is
  port (
    accion_listo : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_3 : entity is "sync";
end sync_3;

architecture STRUCTURE of sync_3 is
  signal \sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sreg_reg_n_0_[1]\ : STD_LOGIC;
begin
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[1]\,
      Q => accion_listo,
      R => '0'
    );
\sreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => D(0),
      Q => \sreg_reg_n_0_[0]\,
      R => '0'
    );
\sreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[0]\,
      Q => \sreg_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity temporizador is
  port (
    fin_tiempo : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    activo_reg_0 : in STD_LOGIC;
    activo_reg_1 : in STD_LOGIC
  );
end temporizador;

architecture STRUCTURE of temporizador is
  signal activo : STD_LOGIC;
  signal activo1 : STD_LOGIC;
  signal \activo1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \activo1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \activo1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \activo1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \activo1_carry__0_n_0\ : STD_LOGIC;
  signal \activo1_carry__0_n_1\ : STD_LOGIC;
  signal \activo1_carry__0_n_2\ : STD_LOGIC;
  signal \activo1_carry__0_n_3\ : STD_LOGIC;
  signal \activo1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \activo1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \activo1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \activo1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \activo1_carry__1_n_0\ : STD_LOGIC;
  signal \activo1_carry__1_n_1\ : STD_LOGIC;
  signal \activo1_carry__1_n_2\ : STD_LOGIC;
  signal \activo1_carry__1_n_3\ : STD_LOGIC;
  signal \activo1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \activo1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \activo1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \activo1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \activo1_carry__2_n_1\ : STD_LOGIC;
  signal \activo1_carry__2_n_2\ : STD_LOGIC;
  signal \activo1_carry__2_n_3\ : STD_LOGIC;
  signal activo1_carry_i_1_n_0 : STD_LOGIC;
  signal activo1_carry_i_2_n_0 : STD_LOGIC;
  signal activo1_carry_i_3_n_0 : STD_LOGIC;
  signal activo1_carry_i_4_n_0 : STD_LOGIC;
  signal activo1_carry_i_5_n_0 : STD_LOGIC;
  signal activo1_carry_n_0 : STD_LOGIC;
  signal activo1_carry_n_1 : STD_LOGIC;
  signal activo1_carry_n_2 : STD_LOGIC;
  signal activo1_carry_n_3 : STD_LOGIC;
  signal activo_i_1_n_0 : STD_LOGIC;
  signal \contador_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s[0]_i_3_n_0\ : STD_LOGIC;
  signal contador_s_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \contador_s_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \contador_s_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \contador_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^fin_tiempo\ : STD_LOGIC;
  signal fin_tiempo_i_1_n_0 : STD_LOGIC;
  signal NLW_activo1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_activo1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_activo1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_activo1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_contador_s_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of activo1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \activo1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \activo1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \activo1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of activo_i_1 : label is "soft_lutpair32";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \contador_s_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of fin_tiempo_i_1 : label is "soft_lutpair32";
begin
  fin_tiempo <= \^fin_tiempo\;
activo1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => activo1_carry_n_0,
      CO(2) => activo1_carry_n_1,
      CO(1) => activo1_carry_n_2,
      CO(0) => activo1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => activo1_carry_i_1_n_0,
      O(3 downto 0) => NLW_activo1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => activo1_carry_i_2_n_0,
      S(2) => activo1_carry_i_3_n_0,
      S(1) => activo1_carry_i_4_n_0,
      S(0) => activo1_carry_i_5_n_0
    );
\activo1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => activo1_carry_n_0,
      CO(3) => \activo1_carry__0_n_0\,
      CO(2) => \activo1_carry__0_n_1\,
      CO(1) => \activo1_carry__0_n_2\,
      CO(0) => \activo1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_activo1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \activo1_carry__0_i_1_n_0\,
      S(2) => \activo1_carry__0_i_2_n_0\,
      S(1) => \activo1_carry__0_i_3_n_0\,
      S(0) => \activo1_carry__0_i_4_n_0\
    );
\activo1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(14),
      I1 => contador_s_reg(15),
      O => \activo1_carry__0_i_1_n_0\
    );
\activo1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(12),
      I1 => contador_s_reg(13),
      O => \activo1_carry__0_i_2_n_0\
    );
\activo1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(10),
      I1 => contador_s_reg(11),
      O => \activo1_carry__0_i_3_n_0\
    );
\activo1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(8),
      I1 => contador_s_reg(9),
      O => \activo1_carry__0_i_4_n_0\
    );
\activo1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \activo1_carry__0_n_0\,
      CO(3) => \activo1_carry__1_n_0\,
      CO(2) => \activo1_carry__1_n_1\,
      CO(1) => \activo1_carry__1_n_2\,
      CO(0) => \activo1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_activo1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \activo1_carry__1_i_1_n_0\,
      S(2) => \activo1_carry__1_i_2_n_0\,
      S(1) => \activo1_carry__1_i_3_n_0\,
      S(0) => \activo1_carry__1_i_4_n_0\
    );
\activo1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(22),
      I1 => contador_s_reg(23),
      O => \activo1_carry__1_i_1_n_0\
    );
\activo1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(20),
      I1 => contador_s_reg(21),
      O => \activo1_carry__1_i_2_n_0\
    );
\activo1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(18),
      I1 => contador_s_reg(19),
      O => \activo1_carry__1_i_3_n_0\
    );
\activo1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(16),
      I1 => contador_s_reg(17),
      O => \activo1_carry__1_i_4_n_0\
    );
\activo1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \activo1_carry__1_n_0\,
      CO(3) => activo1,
      CO(2) => \activo1_carry__2_n_1\,
      CO(1) => \activo1_carry__2_n_2\,
      CO(0) => \activo1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => contador_s_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_activo1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \activo1_carry__2_i_1_n_0\,
      S(2) => \activo1_carry__2_i_2_n_0\,
      S(1) => \activo1_carry__2_i_3_n_0\,
      S(0) => \activo1_carry__2_i_4_n_0\
    );
\activo1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(30),
      I1 => contador_s_reg(31),
      O => \activo1_carry__2_i_1_n_0\
    );
\activo1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(28),
      I1 => contador_s_reg(29),
      O => \activo1_carry__2_i_2_n_0\
    );
\activo1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(26),
      I1 => contador_s_reg(27),
      O => \activo1_carry__2_i_3_n_0\
    );
\activo1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(24),
      I1 => contador_s_reg(25),
      O => \activo1_carry__2_i_4_n_0\
    );
activo1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => contador_s_reg(0),
      I1 => contador_s_reg(1),
      O => activo1_carry_i_1_n_0
    );
activo1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(6),
      I1 => contador_s_reg(7),
      O => activo1_carry_i_2_n_0
    );
activo1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(4),
      I1 => contador_s_reg(5),
      O => activo1_carry_i_3_n_0
    );
activo1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(2),
      I1 => contador_s_reg(3),
      O => activo1_carry_i_4_n_0
    );
activo1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => contador_s_reg(0),
      I1 => contador_s_reg(1),
      O => activo1_carry_i_5_n_0
    );
activo_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => activo1,
      I1 => activo,
      I2 => activo_reg_0,
      I3 => activo_reg_1,
      O => activo_i_1_n_0
    );
activo_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => activo_i_1_n_0,
      Q => activo,
      R => '0'
    );
\contador_s[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => activo,
      I1 => activo1,
      O => \contador_s[0]_i_1_n_0\
    );
\contador_s[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_s_reg(0),
      O => \contador_s[0]_i_3_n_0\
    );
\contador_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[0]_i_2_n_7\,
      Q => contador_s_reg(0),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \contador_s_reg[0]_i_2_n_0\,
      CO(2) => \contador_s_reg[0]_i_2_n_1\,
      CO(1) => \contador_s_reg[0]_i_2_n_2\,
      CO(0) => \contador_s_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \contador_s_reg[0]_i_2_n_4\,
      O(2) => \contador_s_reg[0]_i_2_n_5\,
      O(1) => \contador_s_reg[0]_i_2_n_6\,
      O(0) => \contador_s_reg[0]_i_2_n_7\,
      S(3 downto 1) => contador_s_reg(3 downto 1),
      S(0) => \contador_s[0]_i_3_n_0\
    );
\contador_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[8]_i_1_n_5\,
      Q => contador_s_reg(10),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[8]_i_1_n_4\,
      Q => contador_s_reg(11),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[12]_i_1_n_7\,
      Q => contador_s_reg(12),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[8]_i_1_n_0\,
      CO(3) => \contador_s_reg[12]_i_1_n_0\,
      CO(2) => \contador_s_reg[12]_i_1_n_1\,
      CO(1) => \contador_s_reg[12]_i_1_n_2\,
      CO(0) => \contador_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[12]_i_1_n_4\,
      O(2) => \contador_s_reg[12]_i_1_n_5\,
      O(1) => \contador_s_reg[12]_i_1_n_6\,
      O(0) => \contador_s_reg[12]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(15 downto 12)
    );
\contador_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[12]_i_1_n_6\,
      Q => contador_s_reg(13),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[12]_i_1_n_5\,
      Q => contador_s_reg(14),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[12]_i_1_n_4\,
      Q => contador_s_reg(15),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[16]_i_1_n_7\,
      Q => contador_s_reg(16),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[12]_i_1_n_0\,
      CO(3) => \contador_s_reg[16]_i_1_n_0\,
      CO(2) => \contador_s_reg[16]_i_1_n_1\,
      CO(1) => \contador_s_reg[16]_i_1_n_2\,
      CO(0) => \contador_s_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[16]_i_1_n_4\,
      O(2) => \contador_s_reg[16]_i_1_n_5\,
      O(1) => \contador_s_reg[16]_i_1_n_6\,
      O(0) => \contador_s_reg[16]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(19 downto 16)
    );
\contador_s_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[16]_i_1_n_6\,
      Q => contador_s_reg(17),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[16]_i_1_n_5\,
      Q => contador_s_reg(18),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[16]_i_1_n_4\,
      Q => contador_s_reg(19),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[0]_i_2_n_6\,
      Q => contador_s_reg(1),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[20]_i_1_n_7\,
      Q => contador_s_reg(20),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[16]_i_1_n_0\,
      CO(3) => \contador_s_reg[20]_i_1_n_0\,
      CO(2) => \contador_s_reg[20]_i_1_n_1\,
      CO(1) => \contador_s_reg[20]_i_1_n_2\,
      CO(0) => \contador_s_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[20]_i_1_n_4\,
      O(2) => \contador_s_reg[20]_i_1_n_5\,
      O(1) => \contador_s_reg[20]_i_1_n_6\,
      O(0) => \contador_s_reg[20]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(23 downto 20)
    );
\contador_s_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[20]_i_1_n_6\,
      Q => contador_s_reg(21),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[20]_i_1_n_5\,
      Q => contador_s_reg(22),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[20]_i_1_n_4\,
      Q => contador_s_reg(23),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[24]_i_1_n_7\,
      Q => contador_s_reg(24),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[20]_i_1_n_0\,
      CO(3) => \contador_s_reg[24]_i_1_n_0\,
      CO(2) => \contador_s_reg[24]_i_1_n_1\,
      CO(1) => \contador_s_reg[24]_i_1_n_2\,
      CO(0) => \contador_s_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[24]_i_1_n_4\,
      O(2) => \contador_s_reg[24]_i_1_n_5\,
      O(1) => \contador_s_reg[24]_i_1_n_6\,
      O(0) => \contador_s_reg[24]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(27 downto 24)
    );
\contador_s_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[24]_i_1_n_6\,
      Q => contador_s_reg(25),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[24]_i_1_n_5\,
      Q => contador_s_reg(26),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[24]_i_1_n_4\,
      Q => contador_s_reg(27),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[28]_i_1_n_7\,
      Q => contador_s_reg(28),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[24]_i_1_n_0\,
      CO(3) => \NLW_contador_s_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \contador_s_reg[28]_i_1_n_1\,
      CO(1) => \contador_s_reg[28]_i_1_n_2\,
      CO(0) => \contador_s_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[28]_i_1_n_4\,
      O(2) => \contador_s_reg[28]_i_1_n_5\,
      O(1) => \contador_s_reg[28]_i_1_n_6\,
      O(0) => \contador_s_reg[28]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(31 downto 28)
    );
\contador_s_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[28]_i_1_n_6\,
      Q => contador_s_reg(29),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[0]_i_2_n_5\,
      Q => contador_s_reg(2),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[28]_i_1_n_5\,
      Q => contador_s_reg(30),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[28]_i_1_n_4\,
      Q => contador_s_reg(31),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[0]_i_2_n_4\,
      Q => contador_s_reg(3),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[4]_i_1_n_7\,
      Q => contador_s_reg(4),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[0]_i_2_n_0\,
      CO(3) => \contador_s_reg[4]_i_1_n_0\,
      CO(2) => \contador_s_reg[4]_i_1_n_1\,
      CO(1) => \contador_s_reg[4]_i_1_n_2\,
      CO(0) => \contador_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[4]_i_1_n_4\,
      O(2) => \contador_s_reg[4]_i_1_n_5\,
      O(1) => \contador_s_reg[4]_i_1_n_6\,
      O(0) => \contador_s_reg[4]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(7 downto 4)
    );
\contador_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[4]_i_1_n_6\,
      Q => contador_s_reg(5),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[4]_i_1_n_5\,
      Q => contador_s_reg(6),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[4]_i_1_n_4\,
      Q => contador_s_reg(7),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[8]_i_1_n_7\,
      Q => contador_s_reg(8),
      R => \contador_s[0]_i_1_n_0\
    );
\contador_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_s_reg[4]_i_1_n_0\,
      CO(3) => \contador_s_reg[8]_i_1_n_0\,
      CO(2) => \contador_s_reg[8]_i_1_n_1\,
      CO(1) => \contador_s_reg[8]_i_1_n_2\,
      CO(0) => \contador_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_s_reg[8]_i_1_n_4\,
      O(2) => \contador_s_reg[8]_i_1_n_5\,
      O(1) => \contador_s_reg[8]_i_1_n_6\,
      O(0) => \contador_s_reg[8]_i_1_n_7\,
      S(3 downto 0) => contador_s_reg(11 downto 8)
    );
\contador_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => activo,
      D => \contador_s_reg[8]_i_1_n_6\,
      Q => contador_s_reg(9),
      R => \contador_s[0]_i_1_n_0\
    );
fin_tiempo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^fin_tiempo\,
      I1 => activo1,
      I2 => activo,
      O => fin_tiempo_i_1_n_0
    );
fin_tiempo_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => fin_tiempo_i_1_n_0,
      Q => \^fin_tiempo\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP is
  port (
    RESET : in STD_LOGIC;
    boton : in STD_LOGIC_VECTOR ( 4 downto 1 );
    accion : in STD_LOGIC;
    CLK : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 4 downto 1 );
    display : out STD_LOGIC_VECTOR ( 6 downto 0 );
    enable_display : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TOP : entity is true;
end TOP;

architecture STRUCTURE of TOP is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal accion_IBUF : STD_LOGIC;
  signal accion_listo : STD_LOGIC;
  signal boton_IBUF : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^clk\ : STD_LOGIC;
  signal clk_BUFG : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal display_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal fin_tiempo : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal indice_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_CompSecuencia_n_0 : STD_LOGIC;
  signal inst_CompSecuencia_n_1 : STD_LOGIC;
  signal inst_CompSecuencia_n_10 : STD_LOGIC;
  signal inst_CompSecuencia_n_11 : STD_LOGIC;
  signal inst_CompSecuencia_n_26 : STD_LOGIC;
  signal inst_CompSecuencia_n_27 : STD_LOGIC;
  signal inst_CompSecuencia_n_28 : STD_LOGIC;
  signal inst_CompSecuencia_n_6 : STD_LOGIC;
  signal inst_CompSecuencia_n_7 : STD_LOGIC;
  signal inst_CompSecuencia_n_8 : STD_LOGIC;
  signal inst_CompSecuencia_n_9 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_0 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_1 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_10 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_11 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_12 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_13 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_14 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_15 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_8 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_9 : STD_LOGIC;
  signal inst_DivisorReloj_n_1 : STD_LOGIC;
  signal inst_GenSecuencia_n_1 : STD_LOGIC;
  signal inst_GenSecuencia_n_2 : STD_LOGIC;
  signal inst_GenSecuencia_n_25 : STD_LOGIC;
  signal inst_GenSecuencia_n_26 : STD_LOGIC;
  signal inst_GenSecuencia_n_27 : STD_LOGIC;
  signal inst_GenSecuencia_n_28 : STD_LOGIC;
  signal inst_GenSecuencia_n_29 : STD_LOGIC;
  signal inst_GenSecuencia_n_3 : STD_LOGIC;
  signal inst_GenSecuencia_n_30 : STD_LOGIC;
  signal inst_GenSecuencia_n_31 : STD_LOGIC;
  signal inst_GenSecuencia_n_32 : STD_LOGIC;
  signal inst_GenSecuencia_n_33 : STD_LOGIC;
  signal inst_GenSecuencia_n_34 : STD_LOGIC;
  signal inst_GenSecuencia_n_35 : STD_LOGIC;
  signal inst_GenSecuencia_n_36 : STD_LOGIC;
  signal inst_GenSecuencia_n_37 : STD_LOGIC;
  signal inst_GenSecuencia_n_38 : STD_LOGIC;
  signal inst_GenSecuencia_n_39 : STD_LOGIC;
  signal inst_GenSecuencia_n_40 : STD_LOGIC;
  signal inst_GenSecuencia_n_41 : STD_LOGIC;
  signal inst_GenSecuencia_n_42 : STD_LOGIC;
  signal inst_GenSecuencia_n_43 : STD_LOGIC;
  signal inst_GenSecuencia_n_44 : STD_LOGIC;
  signal inst_GenSecuencia_n_45 : STD_LOGIC;
  signal inst_GenSecuencia_n_46 : STD_LOGIC;
  signal inst_GenSecuencia_n_47 : STD_LOGIC;
  signal inst_GenSecuencia_n_48 : STD_LOGIC;
  signal inst_controlador_nivel_n_10 : STD_LOGIC;
  signal inst_controlador_nivel_n_11 : STD_LOGIC;
  signal inst_controlador_nivel_n_12 : STD_LOGIC;
  signal inst_controlador_nivel_n_13 : STD_LOGIC;
  signal inst_controlador_nivel_n_14 : STD_LOGIC;
  signal inst_controlador_nivel_n_15 : STD_LOGIC;
  signal inst_controlador_nivel_n_16 : STD_LOGIC;
  signal inst_controlador_nivel_n_17 : STD_LOGIC;
  signal inst_controlador_nivel_n_18 : STD_LOGIC;
  signal inst_controlador_nivel_n_19 : STD_LOGIC;
  signal inst_controlador_nivel_n_2 : STD_LOGIC;
  signal inst_controlador_nivel_n_20 : STD_LOGIC;
  signal inst_controlador_nivel_n_21 : STD_LOGIC;
  signal inst_controlador_nivel_n_22 : STD_LOGIC;
  signal inst_controlador_nivel_n_23 : STD_LOGIC;
  signal inst_controlador_nivel_n_24 : STD_LOGIC;
  signal inst_controlador_nivel_n_3 : STD_LOGIC;
  signal inst_controlador_nivel_n_4 : STD_LOGIC;
  signal inst_controlador_nivel_n_5 : STD_LOGIC;
  signal inst_controlador_nivel_n_6 : STD_LOGIC;
  signal inst_controlador_nivel_n_7 : STD_LOGIC;
  signal inst_controlador_nivel_n_8 : STD_LOGIC;
  signal inst_controlador_nivel_n_9 : STD_LOGIC;
  signal \inst_sync[1].botones_sync_n_0\ : STD_LOGIC;
  signal \inst_sync[1].botones_sync_n_1\ : STD_LOGIC;
  signal \inst_sync[1].botones_sync_n_2\ : STD_LOGIC;
  signal \inst_sync[2].botones_sync_n_0\ : STD_LOGIC;
  signal \inst_sync[3].botones_sync_n_0\ : STD_LOGIC;
  signal \inst_sync[4].botones_sync_n_0\ : STD_LOGIC;
  signal \inst_sync[4].botones_sync_n_1\ : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sec_actual : STD_LOGIC_VECTOR ( 4 to 41 );
  signal sec_generada_s : STD_LOGIC_VECTOR ( 1 to 41 );
  signal sec_lista : STD_LOGIC;
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
RESET_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESET,
      O => RESET_IBUF
    );
accion_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => accion,
      O => accion_IBUF
    );
\boton_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => boton(1),
      O => boton_IBUF(1)
    );
\boton_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => boton(2),
      O => boton_IBUF(2)
    );
\boton_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => boton(3),
      O => boton_IBUF(3)
    );
\boton_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => boton(4),
      O => boton_IBUF(4)
    );
clk_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => \^clk\,
      O => clk_BUFG
    );
\display_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(0),
      O => display(0)
    );
\display_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(1),
      O => display(1)
    );
\display_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(2),
      O => display(2)
    );
\display_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(3),
      O => display(3)
    );
\display_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(4),
      O => display(4)
    );
\display_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(5),
      O => display(5)
    );
\display_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => display_OBUF(6),
      O => display(6)
    );
enable_display_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => enable_display
    );
inst_CompSecuencia: entity work.CompSecuencia
     port map (
      E(0) => inst_CompSecuencia_n_0,
      Q(1 downto 0) => cur_state(1 downto 0),
      RESET_IBUF => RESET_IBUF,
      S(1) => inst_GenSecuencia_n_43,
      S(0) => inst_GenSecuencia_n_44,
      accion_listo => accion_listo,
      error_prev_reg => inst_CompSecuencia_n_1,
      error_prev_reg_0 => inst_CompSecuencia_n_27,
      error_prev_reg_1 => \inst_sync[1].botones_sync_n_2\,
      error_prev_reg_2 => \inst_sync[4].botones_sync_n_1\,
      error_prev_reg_3 => \inst_sync[1].botones_sync_n_1\,
      exito_prev_reg => inst_CompSecuencia_n_26,
      exito_prev_reg_0 => inst_CompSecuencia_n_28,
      \i0_inferred__0/i__carry__1_0\(1) => inst_GenSecuencia_n_45,
      \i0_inferred__0/i__carry__1_0\(0) => inst_GenSecuencia_n_46,
      \i0_inferred__0/i__carry__1_1\(20) => sec_generada_s(1),
      \i0_inferred__0/i__carry__1_1\(19) => sec_generada_s(2),
      \i0_inferred__0/i__carry__1_1\(18) => sec_generada_s(4),
      \i0_inferred__0/i__carry__1_1\(17) => sec_generada_s(5),
      \i0_inferred__0/i__carry__1_1\(16) => sec_generada_s(6),
      \i0_inferred__0/i__carry__1_1\(15) => sec_generada_s(8),
      \i0_inferred__0/i__carry__1_1\(14) => sec_generada_s(10),
      \i0_inferred__0/i__carry__1_1\(13) => sec_generada_s(11),
      \i0_inferred__0/i__carry__1_1\(12) => sec_generada_s(13),
      \i0_inferred__0/i__carry__1_1\(11) => sec_generada_s(14),
      \i0_inferred__0/i__carry__1_1\(10) => sec_generada_s(17),
      \i0_inferred__0/i__carry__1_1\(9) => sec_generada_s(19),
      \i0_inferred__0/i__carry__1_1\(8) => sec_generada_s(20),
      \i0_inferred__0/i__carry__1_1\(7) => sec_generada_s(21),
      \i0_inferred__0/i__carry__1_1\(6) => sec_generada_s(22),
      \i0_inferred__0/i__carry__1_1\(5) => sec_generada_s(23),
      \i0_inferred__0/i__carry__1_1\(4) => sec_generada_s(26),
      \i0_inferred__0/i__carry__1_1\(3) => sec_generada_s(28),
      \i0_inferred__0/i__carry__1_1\(2) => sec_generada_s(32),
      \i0_inferred__0/i__carry__1_1\(1) => sec_generada_s(34),
      \i0_inferred__0/i__carry__1_1\(0) => sec_generada_s(41),
      \i_reg[0]_0\ => inst_CompSecuencia_n_8,
      \i_reg[0]_1\ => inst_CompSecuencia_n_11,
      \i_reg[1]_0\ => inst_CompSecuencia_n_6,
      \i_reg[1]_1\ => inst_CompSecuencia_n_9,
      \i_reg[2]_0\ => inst_CompSecuencia_n_7,
      \i_reg[2]_1\ => inst_CompSecuencia_n_10,
      \i_reg[5]_i_10_0\ => inst_GenSecuencia_n_27,
      \i_reg[5]_i_2_0\(3 downto 0) => i(3 downto 0),
      \i_reg[5]_i_4_0\ => inst_GenSecuencia_n_30,
      \i_reg[5]_i_4_1\ => inst_GenSecuencia_n_29,
      \i_reg[5]_i_4_2\ => inst_GenSecuencia_n_2,
      \i_reg[5]_i_4_3\ => inst_GenSecuencia_n_1,
      \i_reg[5]_i_4_4\ => inst_GenSecuencia_n_25,
      \i_reg[5]_i_4_5\ => inst_GenSecuencia_n_26,
      \i_reg[5]_i_7_0\ => inst_GenSecuencia_n_3,
      \i_reg[5]_i_8_0\ => inst_GenSecuencia_n_28,
      p_0_in(0) => p_0_in(0),
      \p_0_in__0\(0) => \p_0_in__0\(0),
      \sec_actual_reg[41]_0\(1) => inst_GenSecuencia_n_47,
      \sec_actual_reg[41]_0\(0) => inst_GenSecuencia_n_48,
      \sec_generada_s_reg[41]\ => \inst_sync[4].botones_sync_n_0\,
      \sec_generada_s_reg[41]_0\ => \inst_sync[2].botones_sync_n_0\,
      \sec_generada_s_reg[41]_1\ => \inst_sync[3].botones_sync_n_0\,
      \sec_generada_s_reg[41]_2\ => \inst_sync[1].botones_sync_n_0\,
      \sec_generada_s_reg[4]\(13) => sec_actual(4),
      \sec_generada_s_reg[4]\(12) => sec_actual(5),
      \sec_generada_s_reg[4]\(11) => sec_actual(10),
      \sec_generada_s_reg[4]\(10) => sec_actual(11),
      \sec_generada_s_reg[4]\(9) => sec_actual(17),
      \sec_generada_s_reg[4]\(8) => sec_actual(20),
      \sec_generada_s_reg[4]\(7) => sec_actual(21),
      \sec_generada_s_reg[4]\(6) => sec_actual(22),
      \sec_generada_s_reg[4]\(5) => sec_actual(23),
      \sec_generada_s_reg[4]\(4) => sec_actual(26),
      \sec_generada_s_reg[4]\(3) => sec_actual(28),
      \sec_generada_s_reg[4]\(2) => sec_actual(32),
      \sec_generada_s_reg[4]\(1) => sec_actual(34),
      \sec_generada_s_reg[4]\(0) => sec_actual(41)
    );
inst_Controlador_de_Sec: entity work.Controlador_de_Sec
     port map (
      D(3) => inst_Controlador_de_Sec_n_12,
      D(2) => inst_Controlador_de_Sec_n_13,
      D(1) => inst_Controlador_de_Sec_n_14,
      D(0) => inst_Controlador_de_Sec_n_15,
      Q(1 downto 0) => cur_state(1 downto 0),
      clk_BUFG => clk_BUFG,
      \cur_state_reg[0]_0\ => inst_Controlador_de_Sec_n_0,
      fin_detectado_reg_i_3_0 => inst_GenSecuencia_n_38,
      fin_detectado_reg_i_4_0 => inst_GenSecuencia_n_34,
      fin_detectado_reg_i_4_1 => inst_GenSecuencia_n_32,
      fin_detectado_reg_i_4_2 => inst_GenSecuencia_n_33,
      fin_detectado_reg_i_5_0(0) => sec_generada_s(41),
      fin_detectado_reg_i_5_1 => inst_GenSecuencia_n_36,
      fin_detectado_reg_i_5_2 => inst_GenSecuencia_n_35,
      fin_detectado_reg_i_5_3 => inst_GenSecuencia_n_37,
      fin_detectado_reg_i_5_4 => inst_GenSecuencia_n_39,
      fin_detectado_reg_i_5_5 => inst_GenSecuencia_n_41,
      fin_tiempo => fin_tiempo,
      \indice_reg[1]_0\ => inst_Controlador_de_Sec_n_8,
      \indice_reg[2]_0\ => inst_Controlador_de_Sec_n_9,
      \indice_reg[2]_1\ => inst_Controlador_de_Sec_n_10,
      \indice_reg[2]_2\ => inst_Controlador_de_Sec_n_11,
      \indice_reg[3]_0\(3 downto 0) => indice_reg(3 downto 0),
      \led_s_reg[1]\ => inst_GenSecuencia_n_31,
      \led_s_reg[1]_0\ => inst_GenSecuencia_n_40,
      \led_s_reg[1]_1\ => inst_GenSecuencia_n_42,
      pedir_tiempo_reg_P_0 => inst_Controlador_de_Sec_n_1,
      sec_lista => sec_lista
    );
inst_Decod_Leds_Sec: entity work.Decod_Leds_Sec
     port map (
      AR(0) => inst_DivisorReloj_n_1,
      D(3) => inst_Controlador_de_Sec_n_12,
      D(2) => inst_Controlador_de_Sec_n_13,
      D(1) => inst_Controlador_de_Sec_n_14,
      D(0) => inst_Controlador_de_Sec_n_15,
      Q(3 downto 0) => led_OBUF(4 downto 1),
      clk_BUFG => clk_BUFG
    );
inst_DivisorReloj: entity work.DivisorReloj
     port map (
      AR(0) => inst_DivisorReloj_n_1,
      CLK => CLK_IBUF_BUFG,
      RESET_IBUF => RESET_IBUF,
      \^clk\ => \^clk\
    );
inst_GenSecuencia: entity work.GenSecuencia
     port map (
      D(20) => inst_controlador_nivel_n_2,
      D(19) => inst_controlador_nivel_n_3,
      D(18) => inst_controlador_nivel_n_4,
      D(17) => inst_controlador_nivel_n_5,
      D(16) => inst_controlador_nivel_n_6,
      D(15) => inst_controlador_nivel_n_7,
      D(14) => inst_controlador_nivel_n_8,
      D(13) => inst_controlador_nivel_n_9,
      D(12) => inst_controlador_nivel_n_10,
      D(11) => inst_controlador_nivel_n_11,
      D(10) => inst_controlador_nivel_n_12,
      D(9) => inst_controlador_nivel_n_13,
      D(8) => inst_controlador_nivel_n_14,
      D(7) => inst_controlador_nivel_n_15,
      D(6) => inst_controlador_nivel_n_16,
      D(5) => inst_controlador_nivel_n_17,
      D(4) => inst_controlador_nivel_n_18,
      D(3) => inst_controlador_nivel_n_19,
      D(2) => inst_controlador_nivel_n_20,
      D(1) => inst_controlador_nivel_n_21,
      D(0) => inst_controlador_nivel_n_22,
      E(0) => inst_CompSecuencia_n_0,
      Q(20) => sec_generada_s(1),
      Q(19) => sec_generada_s(2),
      Q(18) => sec_generada_s(4),
      Q(17) => sec_generada_s(5),
      Q(16) => sec_generada_s(6),
      Q(15) => sec_generada_s(8),
      Q(14) => sec_generada_s(10),
      Q(13) => sec_generada_s(11),
      Q(12) => sec_generada_s(13),
      Q(11) => sec_generada_s(14),
      Q(10) => sec_generada_s(17),
      Q(9) => sec_generada_s(19),
      Q(8) => sec_generada_s(20),
      Q(7) => sec_generada_s(21),
      Q(6) => sec_generada_s(22),
      Q(5) => sec_generada_s(23),
      Q(4) => sec_generada_s(26),
      Q(3) => sec_generada_s(28),
      Q(2) => sec_generada_s(32),
      Q(1) => sec_generada_s(34),
      Q(0) => sec_generada_s(41),
      S(1) => inst_GenSecuencia_n_43,
      S(0) => inst_GenSecuencia_n_44,
      clk_BUFG => clk_BUFG,
      fin_detectado_reg_i_10 => inst_Controlador_de_Sec_n_10,
      fin_detectado_reg_i_14 => inst_Controlador_de_Sec_n_9,
      fin_detectado_reg_i_3(3 downto 0) => indice_reg(3 downto 0),
      fin_detectado_reg_i_3_0 => inst_Controlador_de_Sec_n_11,
      fin_detectado_reg_i_4 => inst_Controlador_de_Sec_n_8,
      \i0_inferred__0/i__carry__1\(13) => sec_actual(4),
      \i0_inferred__0/i__carry__1\(12) => sec_actual(5),
      \i0_inferred__0/i__carry__1\(11) => sec_actual(10),
      \i0_inferred__0/i__carry__1\(10) => sec_actual(11),
      \i0_inferred__0/i__carry__1\(9) => sec_actual(17),
      \i0_inferred__0/i__carry__1\(8) => sec_actual(20),
      \i0_inferred__0/i__carry__1\(7) => sec_actual(21),
      \i0_inferred__0/i__carry__1\(6) => sec_actual(22),
      \i0_inferred__0/i__carry__1\(5) => sec_actual(23),
      \i0_inferred__0/i__carry__1\(4) => sec_actual(26),
      \i0_inferred__0/i__carry__1\(3) => sec_actual(28),
      \i0_inferred__0/i__carry__1\(2) => sec_actual(32),
      \i0_inferred__0/i__carry__1\(1) => sec_actual(34),
      \i0_inferred__0/i__carry__1\(0) => sec_actual(41),
      \i_reg[5]_i_10\(3 downto 0) => i(3 downto 0),
      \i_reg[5]_i_7\ => inst_CompSecuencia_n_8,
      \i_reg[5]_i_7_0\ => inst_CompSecuencia_n_7,
      \i_reg[5]_i_7_1\ => inst_CompSecuencia_n_6,
      \i_reg[5]_i_8\ => inst_CompSecuencia_n_10,
      \i_reg[5]_i_8_0\ => inst_CompSecuencia_n_9,
      \i_reg[5]_i_8_1\ => inst_CompSecuencia_n_11,
      \indice_reg[2]\ => inst_GenSecuencia_n_32,
      \indice_reg[2]_0\ => inst_GenSecuencia_n_33,
      \indice_reg[2]_1\ => inst_GenSecuencia_n_36,
      \indice_reg[2]_2\ => inst_GenSecuencia_n_39,
      \indice_reg[2]_3\ => inst_GenSecuencia_n_40,
      \indice_reg[2]_4\ => inst_GenSecuencia_n_41,
      \indice_reg[2]_5\ => inst_GenSecuencia_n_42,
      \indice_reg[3]\ => inst_GenSecuencia_n_31,
      \sec_generada_s_reg[1]_0\ => inst_GenSecuencia_n_35,
      \sec_generada_s_reg[21]_0\ => inst_GenSecuencia_n_29,
      \sec_generada_s_reg[21]_1\(1) => inst_GenSecuencia_n_45,
      \sec_generada_s_reg[21]_1\(0) => inst_GenSecuencia_n_46,
      \sec_generada_s_reg[23]_0\ => inst_GenSecuencia_n_2,
      \sec_generada_s_reg[32]_0\ => inst_GenSecuencia_n_3,
      \sec_generada_s_reg[34]_0\ => inst_GenSecuencia_n_27,
      \sec_generada_s_reg[34]_1\ => inst_GenSecuencia_n_34,
      \sec_generada_s_reg[34]_2\ => inst_GenSecuencia_n_38,
      \sec_generada_s_reg[41]_0\ => inst_GenSecuencia_n_1,
      \sec_generada_s_reg[41]_1\ => inst_GenSecuencia_n_25,
      \sec_generada_s_reg[41]_2\ => inst_GenSecuencia_n_26,
      \sec_generada_s_reg[41]_3\ => inst_GenSecuencia_n_28,
      \sec_generada_s_reg[41]_4\ => inst_GenSecuencia_n_37,
      \sec_generada_s_reg[4]_0\ => inst_GenSecuencia_n_30,
      \sec_generada_s_reg[4]_1\(1) => inst_GenSecuencia_n_47,
      \sec_generada_s_reg[4]_1\(0) => inst_GenSecuencia_n_48,
      sec_lista => sec_lista
    );
inst_controlador_nivel: entity work.controlador_nivel
     port map (
      AR(0) => inst_DivisorReloj_n_1,
      D(20) => inst_controlador_nivel_n_2,
      D(19) => inst_controlador_nivel_n_3,
      D(18) => inst_controlador_nivel_n_4,
      D(17) => inst_controlador_nivel_n_5,
      D(16) => inst_controlador_nivel_n_6,
      D(15) => inst_controlador_nivel_n_7,
      D(14) => inst_controlador_nivel_n_8,
      D(13) => inst_controlador_nivel_n_9,
      D(12) => inst_controlador_nivel_n_10,
      D(11) => inst_controlador_nivel_n_11,
      D(10) => inst_controlador_nivel_n_12,
      D(9) => inst_controlador_nivel_n_13,
      D(8) => inst_controlador_nivel_n_14,
      D(7) => inst_controlador_nivel_n_15,
      D(6) => inst_controlador_nivel_n_16,
      D(5) => inst_controlador_nivel_n_17,
      D(4) => inst_controlador_nivel_n_18,
      D(3) => inst_controlador_nivel_n_19,
      D(2) => inst_controlador_nivel_n_20,
      D(1) => inst_controlador_nivel_n_21,
      D(0) => inst_controlador_nivel_n_22,
      clk_BUFG => clk_BUFG,
      error_prev_reg_0 => inst_CompSecuencia_n_27,
      \estado_actual_reg[1]_0\ => inst_CompSecuencia_n_28,
      \estado_actual_reg[1]_1\ => inst_CompSecuencia_n_1,
      \estado_actual_reg[2]_0\(1) => inst_controlador_nivel_n_23,
      \estado_actual_reg[2]_0\(0) => inst_controlador_nivel_n_24,
      exito_prev_reg_0 => inst_CompSecuencia_n_26,
      p_0_in(0) => p_0_in(0),
      \p_0_in__0\(0) => \p_0_in__0\(0)
    );
inst_decod_display: entity work.decod_display
     port map (
      D(6) => inst_controlador_nivel_n_13,
      D(5) => inst_controlador_nivel_n_20,
      D(4) => inst_controlador_nivel_n_17,
      D(3) => inst_controlador_nivel_n_23,
      D(2) => inst_controlador_nivel_n_24,
      D(1) => inst_controlador_nivel_n_10,
      D(0) => inst_controlador_nivel_n_2,
      Q(6 downto 0) => display_OBUF(6 downto 0),
      clk_BUFG => clk_BUFG
    );
\inst_sync[1].botones_sync\: entity work.sync
     port map (
      D(0) => boton_IBUF(1),
      SYNC_OUT_reg_0 => \inst_sync[1].botones_sync_n_0\,
      SYNC_OUT_reg_1 => \inst_sync[1].botones_sync_n_1\,
      SYNC_OUT_reg_2 => \inst_sync[1].botones_sync_n_2\,
      clk_BUFG => clk_BUFG,
      \i_reg[5]_i_3\ => \inst_sync[3].botones_sync_n_0\,
      \i_reg[5]_i_3_0\ => \inst_sync[2].botones_sync_n_0\
    );
\inst_sync[2].botones_sync\: entity work.sync_0
     port map (
      D(0) => boton_IBUF(2),
      SYNC_OUT_reg_0 => \inst_sync[2].botones_sync_n_0\,
      clk_BUFG => clk_BUFG
    );
\inst_sync[3].botones_sync\: entity work.sync_1
     port map (
      D(0) => boton_IBUF(3),
      SYNC_OUT_reg_0 => \inst_sync[3].botones_sync_n_0\,
      clk_BUFG => clk_BUFG
    );
\inst_sync[4].botones_sync\: entity work.sync_2
     port map (
      D(0) => boton_IBUF(4),
      SYNC_OUT_reg_0 => \inst_sync[4].botones_sync_n_0\,
      SYNC_OUT_reg_1 => \inst_sync[4].botones_sync_n_1\,
      clk_BUFG => clk_BUFG,
      \i_reg[5]_i_3\ => \inst_sync[2].botones_sync_n_0\,
      \i_reg[5]_i_3_0\ => \inst_sync[3].botones_sync_n_0\,
      \i_reg[5]_i_3_1\ => \inst_sync[1].botones_sync_n_0\
    );
inst_sync_accion: entity work.sync_3
     port map (
      D(0) => accion_IBUF,
      accion_listo => accion_listo,
      clk_BUFG => clk_BUFG
    );
inst_temporizador: entity work.temporizador
     port map (
      activo_reg_0 => inst_Controlador_de_Sec_n_0,
      activo_reg_1 => inst_Controlador_de_Sec_n_1,
      clk_BUFG => clk_BUFG,
      fin_tiempo => fin_tiempo
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
\led_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(4),
      O => led(4)
    );
end STRUCTURE;
