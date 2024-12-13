-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Dec 13 13:02:23 2024
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
    flag_boton : out STD_LOGIC;
    \sec_generada_s_reg[6][1]\ : out STD_LOGIC;
    \sec_generada_s_reg[9][1]\ : out STD_LOGIC;
    \sec_generada_s_reg[8][2]\ : out STD_LOGIC;
    \sec_generada_s_reg[9][0]\ : out STD_LOGIC;
    \sec_generada_s_reg[1][2]\ : out STD_LOGIC;
    \sec_generada_s_reg[2][1]\ : out STD_LOGIC;
    error_prev_reg : out STD_LOGIC;
    \i_reg[3]_i_9_0\ : out STD_LOGIC;
    SYNC_OUT_reg : out STD_LOGIC;
    \i_reg[3]_i_2_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sec_generada_s_reg[2][1]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[9][0]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[5][1]\ : out STD_LOGIC;
    error_prev_reg_0 : out STD_LOGIC;
    \sec_generada_s_reg[1][1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[2][2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[3][1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[4][1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[0][1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    flag_boton_reg_i_1 : in STD_LOGIC;
    \sec_generada[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[8]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sec_generada[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \p_0_in__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    flag_boton_reg_0 : in STD_LOGIC;
    boton_listo_3 : in STD_LOGIC;
    boton_listo_2 : in STD_LOGIC;
    boton_listo_1 : in STD_LOGIC;
    boton_listo_0 : in STD_LOGIC;
    \estado_actual[2]_i_2_0\ : in STD_LOGIC;
    exito_prev_reg : in STD_LOGIC;
    \estado_actual[2]_i_2_1\ : in STD_LOGIC;
    \estado_actual[2]_i_2_2\ : in STD_LOGIC;
    \i_reg[3]_i_5_0\ : in STD_LOGIC;
    \i_reg[3]_i_5_1\ : in STD_LOGIC;
    \i_reg[3]_i_5_2\ : in STD_LOGIC;
    \i_reg[3]_i_5_3\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_1\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[1][1]_i_12\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[1][1]_i_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end CompSecuencia;

architecture STRUCTURE of CompSecuencia is
  signal error_prev_i_2_n_0 : STD_LOGIC;
  signal \^flag_boton\ : STD_LOGIC;
  signal flag_boton5_out : STD_LOGIC;
  signal i0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \i_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \^i_reg[3]_i_2_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \i_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \i_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \^i_reg[3]_i_9_0\ : STD_LOGIC;
  signal \i_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_10_n_0\ : STD_LOGIC;
  signal \sec_actual_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \sec_actual_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \sec_actual_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \sec_actual_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \sec_actual_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \^sec_generada_s_reg[9][0]\ : STD_LOGIC;
  signal \NLW_i_reg[3]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[3]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of flag_boton_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of flag_boton_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \i_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \i_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \i_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \i_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \i_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \i_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_reg[3]_i_16\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_reg[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_reg[3]_i_20\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[6][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[6][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[7][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[7][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[8][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[8][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[8][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[8][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[9][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[9][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sec_actual_reg[9][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sec_actual_reg[9][1]\ : label is "VCC:GE GND:CLR";
begin
  flag_boton <= \^flag_boton\;
  \i_reg[3]_i_2_0\(3 downto 0) <= \^i_reg[3]_i_2_0\(3 downto 0);
  \i_reg[3]_i_9_0\ <= \^i_reg[3]_i_9_0\;
  \sec_generada_s_reg[9][0]\ <= \^sec_generada_s_reg[9][0]\;
error_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => error_prev_i_2_n_0,
      I1 => RESET_IBUF,
      I2 => \p_0_in__0\(0),
      O => error_prev_reg_0
    );
error_prev_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^i_reg[3]_i_9_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \i_reg[3]_i_4_n_0\,
      I4 => \i_reg[3]_i_5_n_0\,
      O => error_prev_i_2_n_0
    );
\estado_actual[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \p_0_in__0\(0),
      I1 => \i_reg[3]_i_5_n_0\,
      I2 => \i_reg[3]_i_4_n_0\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^i_reg[3]_i_9_0\,
      O => error_prev_reg
    );
exito_prev_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => exito_prev_reg,
      I1 => \i_reg[3]_i_11_n_0\,
      I2 => \i_reg[3]_i_9_n_0\,
      O => \^i_reg[3]_i_9_0\
    );
flag_boton_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => flag_boton_reg_i_1,
      G => flag_boton5_out,
      GE => '1',
      Q => \^flag_boton\
    );
flag_boton_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => \^flag_boton\,
      I1 => boton_listo_3,
      I2 => boton_listo_2,
      I3 => boton_listo_1,
      I4 => boton_listo_0,
      I5 => flag_boton_reg_0,
      O => flag_boton5_out
    );
\i_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[0]_i_1_n_0\,
      G => \i_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[3]_i_2_0\(0)
    );
\i_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^i_reg[3]_i_2_0\(0),
      I1 => \i_reg[3]_i_4_n_0\,
      I2 => \i_reg[3]_i_5_n_0\,
      I3 => flag_boton_reg_0,
      O => \i_reg[0]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[1]_i_1_n_0\,
      G => \i_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[3]_i_2_0\(1)
    );
\i_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => i0(1),
      I1 => \i_reg[3]_i_4_n_0\,
      I2 => \i_reg[3]_i_5_n_0\,
      I3 => flag_boton_reg_0,
      O => \i_reg[1]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[2]_i_1_n_0\,
      G => \i_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[3]_i_2_0\(2)
    );
\i_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => i0(2),
      I1 => \i_reg[3]_i_4_n_0\,
      I2 => \i_reg[3]_i_5_n_0\,
      I3 => flag_boton_reg_0,
      O => \i_reg[2]_i_1_n_0\
    );
\i_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \i_reg[3]_i_1_n_0\,
      G => \i_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^i_reg[3]_i_2_0\(3)
    );
\i_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => i0(3),
      I1 => \i_reg[3]_i_4_n_0\,
      I2 => \i_reg[3]_i_5_n_0\,
      I3 => flag_boton_reg_0,
      O => \i_reg[3]_i_1_n_0\
    );
\i_reg[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \i_reg[3]_i_21_n_0\,
      I1 => \^i_reg[3]_i_2_0\(3),
      I2 => \i_reg[3]_i_5_0\,
      I3 => \^i_reg[3]_i_2_0\(2),
      I4 => \i_reg[3]_i_5_1\,
      O => \i_reg[3]_i_11_n_0\
    );
\i_reg[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^i_reg[3]_i_2_0\(3),
      I1 => \sec_generada[2]\(1),
      I2 => \^i_reg[3]_i_2_0\(2),
      I3 => \^i_reg[3]_i_2_0\(1),
      O => \sec_generada_s_reg[2][1]_0\
    );
\i_reg[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404444000000400"
    )
        port map (
      I0 => \^i_reg[3]_i_2_0\(2),
      I1 => \^i_reg[3]_i_2_0\(3),
      I2 => \^i_reg[3]_i_2_0\(1),
      I3 => \sec_generada[8]\(0),
      I4 => \^i_reg[3]_i_2_0\(0),
      I5 => \sec_generada[9]\(0),
      O => \i_reg[3]_i_19_n_0\
    );
\i_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => E(0),
      I1 => \i_reg[3]_i_4_n_0\,
      I2 => \i_reg[3]_i_5_n_0\,
      I3 => flag_boton_reg_0,
      O => \i_reg[3]_i_2_n_0\
    );
\i_reg[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^i_reg[3]_i_2_0\(1),
      I1 => \^i_reg[3]_i_2_0\(2),
      I2 => \sec_generada[2]\(1),
      I3 => \^i_reg[3]_i_2_0\(3),
      I4 => \^i_reg[3]_i_2_0\(0),
      O => \i_reg[3]_i_20_n_0\
    );
\i_reg[3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFBFFFB"
    )
        port map (
      I0 => \^i_reg[3]_i_2_0\(2),
      I1 => \sec_generada[8]\(1),
      I2 => \^i_reg[3]_i_2_0\(0),
      I3 => \^i_reg[3]_i_2_0\(1),
      I4 => \sec_generada[2]\(1),
      O => \i_reg[3]_i_21_n_0\
    );
\i_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_i_reg[3]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[3]_i_3_n_2\,
      CO(0) => \i_reg[3]_i_3_n_3\,
      CYINIT => \^i_reg[3]_i_2_0\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg[3]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => i0(3 downto 1),
      S(3) => '0',
      S(2 downto 0) => \^i_reg[3]_i_2_0\(3 downto 1)
    );
\i_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \^flag_boton\,
      I1 => boton_listo_0,
      I2 => boton_listo_1,
      I3 => boton_listo_2,
      I4 => boton_listo_3,
      O => \i_reg[3]_i_4_n_0\
    );
\i_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000660"
    )
        port map (
      I0 => \estado_actual[2]_i_2_0\,
      I1 => exito_prev_reg,
      I2 => \i_reg[3]_i_9_n_0\,
      I3 => \estado_actual[2]_i_2_1\,
      I4 => \i_reg[3]_i_11_n_0\,
      I5 => \estado_actual[2]_i_2_2\,
      O => \i_reg[3]_i_5_n_0\
    );
\i_reg[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF47"
    )
        port map (
      I0 => \i_reg[3]_i_5_2\,
      I1 => \^i_reg[3]_i_2_0\(2),
      I2 => \i_reg[3]_i_5_3\,
      I3 => \^i_reg[3]_i_2_0\(3),
      I4 => \i_reg[3]_i_19_n_0\,
      I5 => \i_reg[3]_i_20_n_0\,
      O => \i_reg[3]_i_9_n_0\
    );
\sec_actual_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_actual_reg[1][1]_i_5\(0),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[0][1]\(0)
    );
\sec_actual_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_actual_reg[1][1]_i_5\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[0][1]\(1)
    );
\sec_actual_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[1]\(0),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[1][1]\(0)
    );
\sec_actual_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[1]\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[1][1]\(1)
    );
\sec_actual_reg[1][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sec_actual_reg_n_0_[5][1]\,
      I1 => \sec_generada[5]\(1),
      I2 => \sec_actual_reg_n_0_[5][2]\,
      I3 => \sec_generada[5]\(2),
      I4 => \sec_actual_reg_n_0_[5][0]\,
      I5 => \sec_generada[5]\(0),
      O => \sec_actual_reg[1][1]_i_10_n_0\
    );
\sec_actual_reg[1][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sec_actual_reg_n_0_[5][1]\,
      I1 => \sec_generada[5]\(1),
      I2 => \sec_actual_reg_n_0_[5][2]\,
      I3 => \sec_generada[5]\(2),
      I4 => \sec_actual_reg_n_0_[7][0]\,
      I5 => \sec_generada[7]\(0),
      O => \sec_generada_s_reg[5][1]\
    );
\sec_actual_reg[1][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFFF6FFFFFFFFF"
    )
        port map (
      I0 => \^sec_generada_s_reg[9][0]\,
      I1 => \sec_generada[9]\(0),
      I2 => \sec_actual_reg[1][1]_i_1\,
      I3 => \sec_actual_reg_n_0_[8][0]\,
      I4 => \sec_generada[8]\(0),
      I5 => \sec_actual_reg[1][1]_i_10_n_0\,
      O => \sec_generada_s_reg[9][0]_0\
    );
\sec_actual_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[1]\(2),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[1][2]\
    );
\sec_actual_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[2]\(0),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[2][2]\(0)
    );
\sec_actual_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[2]\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[2][1]\
    );
\sec_actual_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[2]\(2),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[2][2]\(1)
    );
\sec_actual_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_actual_reg[1][1]_i_2\(0),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[3][1]\(0)
    );
\sec_actual_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_actual_reg[1][1]_i_2\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[3][1]\(1)
    );
\sec_actual_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_actual_reg[1][1]_i_12\(0),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[4][1]\(0)
    );
\sec_actual_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_actual_reg[1][1]_i_12\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[4][1]\(1)
    );
\sec_actual_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[5]\(0),
      G => E(0),
      GE => '1',
      Q => \sec_actual_reg_n_0_[5][0]\
    );
\sec_actual_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[5]\(1),
      G => E(0),
      GE => '1',
      Q => \sec_actual_reg_n_0_[5][1]\
    );
\sec_actual_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[5]\(2),
      G => E(0),
      GE => '1',
      Q => \sec_actual_reg_n_0_[5][2]\
    );
\sec_actual_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[6]\(0),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[6][1]\
    );
\sec_actual_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[7]\(0),
      G => E(0),
      GE => '1',
      Q => \sec_actual_reg_n_0_[7][0]\
    );
\sec_actual_reg[8][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[8]\(0),
      G => E(0),
      GE => '1',
      Q => \sec_actual_reg_n_0_[8][0]\
    );
\sec_actual_reg[8][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[8]\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[8][2]\
    );
\sec_actual_reg[9][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[9]\(0),
      G => E(0),
      GE => '1',
      Q => \^sec_generada_s_reg[9][0]\
    );
\sec_actual_reg[9][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \sec_generada[9]\(1),
      G => E(0),
      GE => '1',
      Q => \sec_generada_s_reg[9][1]\
    );
\sec_generada_s[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => boton_listo_3,
      I1 => boton_listo_2,
      I2 => boton_listo_1,
      I3 => boton_listo_0,
      I4 => \^flag_boton\,
      I5 => \i_reg[3]_i_5_n_0\,
      O => SYNC_OUT_reg
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
    indice_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    exito_prev_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cur_state_reg[0]_1\ : out STD_LOGIC;
    \cur_state_reg[0]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sec_lista : in STD_LOGIC;
    fin_tiempo : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    exito_prev_reg_0 : in STD_LOGIC;
    \led_s_reg[1]\ : in STD_LOGIC;
    \led_s_reg[1]_0\ : in STD_LOGIC;
    \sec_generada[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \led_s_reg[1]_1\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    pedir_tiempo_reg_P_1 : in STD_LOGIC;
    clk_BUFG : in STD_LOGIC
  );
end Controlador_de_Sec;

architecture STRUCTURE of Controlador_de_Sec is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cur_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_1_n_0\ : STD_LOGIC;
  signal fin_detectado : STD_LOGIC;
  signal fin_detectado_reg_i_11_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_1_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_2_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_3_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_5_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_7_n_0 : STD_LOGIC;
  signal \indice[0]_i_1_n_0\ : STD_LOGIC;
  signal \indice[0]_i_3_n_0\ : STD_LOGIC;
  signal \indice[0]_i_4_n_0\ : STD_LOGIC;
  signal \^indice_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \indice_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \indice_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \nxt_state[0]_C_n_0\ : STD_LOGIC;
  signal \nxt_state[0]_LDC_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_LDC_n_0\ : STD_LOGIC;
  signal \nxt_state[1]_P_n_0\ : STD_LOGIC;
  signal pedir_tiempo_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal pedir_tiempo_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal \NLW_indice_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \estado_actual[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of exito_prev_i_1 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of fin_detectado_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of fin_detectado_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of fin_detectado_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of fin_detectado_reg_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_s[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_s[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_s[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_s[4]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \nxt_state[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \nxt_state[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \nxt_state[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \nxt_state[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of pedir_tiempo_reg_LDC : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of pedir_tiempo_reg_LDC : label is "VCC:GE";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  indice_reg(3 downto 0) <= \^indice_reg\(3 downto 0);
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
\estado_actual[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => exito_prev_reg_0,
      O => exito_prev_reg
    );
exito_prev_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => exito_prev_reg_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => RESET_IBUF,
      I4 => p_0_in(0),
      O => \cur_state_reg[0]_2\
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
      INIT => X"00001000"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => pedir_tiempo_reg_P_1,
      I4 => fin_detectado_reg_i_5_n_0,
      O => fin_detectado_reg_i_1_n_0
    );
fin_detectado_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7530643031302030"
    )
        port map (
      I0 => \^indice_reg\(2),
      I1 => \^indice_reg\(1),
      I2 => \sec_generada[2]\(0),
      I3 => \^indice_reg\(0),
      I4 => \sec_generada[9]\(0),
      I5 => \sec_generada[8]\(0),
      O => fin_detectado_reg_i_11_n_0
    );
fin_detectado_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03031303"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => pedir_tiempo_reg_P_1,
      I4 => fin_detectado_reg_i_5_n_0,
      O => fin_detectado_reg_i_2_n_0
    );
fin_detectado_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => \led_s_reg[1]_1\,
      I1 => fin_detectado_reg_i_7_n_0,
      O => fin_detectado_reg_i_3_n_0,
      S => \^indice_reg\(3)
    );
fin_detectado_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => fin_detectado_reg_i_11_n_0,
      I1 => \^indice_reg\(3),
      I2 => \led_s_reg[1]\,
      I3 => \^indice_reg\(2),
      I4 => \led_s_reg[1]_0\,
      O => fin_detectado_reg_i_5_n_0
    );
fin_detectado_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50040004"
    )
        port map (
      I0 => \^indice_reg\(2),
      I1 => \sec_generada[8]\(0),
      I2 => \^indice_reg\(0),
      I3 => \^indice_reg\(1),
      I4 => \sec_generada[2]\(0),
      O => fin_detectado_reg_i_7_n_0
    );
\i_reg[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => exito_prev_reg_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \cur_state_reg[0]_1\
    );
\indice[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => pedir_tiempo_reg_P_1,
      I1 => fin_detectado_reg_i_5_n_0,
      I2 => fin_detectado_reg_i_3_n_0,
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
      I0 => \^indice_reg\(0),
      O => \indice[0]_i_4_n_0\
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
      Q => \^indice_reg\(0)
    );
\indice_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_indice_reg[0]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \indice_reg[0]_i_2_n_1\,
      CO(1) => \indice_reg[0]_i_2_n_2\,
      CO(0) => \indice_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \indice_reg[0]_i_2_n_4\,
      O(2) => \indice_reg[0]_i_2_n_5\,
      O(1) => \indice_reg[0]_i_2_n_6\,
      O(0) => \indice_reg[0]_i_2_n_7\,
      S(3 downto 1) => \^indice_reg\(3 downto 1),
      S(0) => \indice[0]_i_4_n_0\
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
      Q => \^indice_reg\(1)
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
      Q => \^indice_reg\(2)
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
      Q => \^indice_reg\(3)
    );
\led_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => fin_detectado_reg_i_5_n_0,
      I4 => pedir_tiempo_reg_P_1,
      O => D(0)
    );
\led_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => pedir_tiempo_reg_P_1,
      I4 => fin_detectado_reg_i_5_n_0,
      O => D(1)
    );
\led_s[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => fin_detectado_reg_i_3_n_0,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => fin_detectado_reg_i_5_n_0,
      I4 => pedir_tiempo_reg_P_1,
      O => D(2)
    );
\led_s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => pedir_tiempo_reg_P_1,
      I1 => fin_detectado_reg_i_5_n_0,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => fin_detectado_reg_i_3_n_0,
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
      INIT => X"20"
    )
        port map (
      I0 => fin_detectado,
      I1 => \^q\(1),
      I2 => \^q\(0),
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
      INIT => X"02020200"
    )
        port map (
      I0 => pedir_tiempo_reg_P_1,
      I1 => fin_detectado_reg_i_5_n_0,
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
  attribute SOFT_HLUTNM of \contador[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \contador[3]_i_1\ : label is "soft_lutpair7";
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
    \sec_generada[5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sec_generada[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada[8]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada[9]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sec_lista : out STD_LOGIC;
    \sec_generada[1]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sec_generada[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sec_generada_s_reg[1][2]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[5][1]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[5][2]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[7][0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[3][0]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[3][1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[0][1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[5][2]_1\ : out STD_LOGIC;
    \sec_generada_s_reg[3][1]_1\ : out STD_LOGIC;
    indice_reg_3_sp_1 : out STD_LOGIC;
    \sec_generada_s_reg[5][1]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada_s_reg[2][1]_0\ : out STD_LOGIC;
    \sec_generada_s_reg[8][0]_0\ : in STD_LOGIC;
    \sec_generada_s_reg[5][0]_0\ : in STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \sec_generada_s_reg[8][0]_1\ : in STD_LOGIC;
    \sec_generada_s_reg[9][1]_0\ : in STD_LOGIC;
    \sec_generada_s_reg[8][2]_0\ : in STD_LOGIC;
    \sec_generada_s_reg[5][1]_2\ : in STD_LOGIC;
    \sec_generada_s_reg[5][2]_2\ : in STD_LOGIC;
    \sec_generada_s_reg[1][2]_1\ : in STD_LOGIC;
    \sec_generada_s_reg[2][1]_1\ : in STD_LOGIC;
    exito_prev_i_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    exito_prev_i_2_0 : in STD_LOGIC;
    indice_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i_reg[3]_i_2\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[1][1]_i_4_1\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[1][1]_i_1_1\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_1_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[1][1]_i_1_3\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_1_4\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_1_5\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_6\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_1_6\ : in STD_LOGIC;
    \sec_actual_reg[1][1]_i_7_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_actual_reg[1][1]_i_1_7\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[0][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_generada_s_reg[1][1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[2][2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[3][1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sec_generada_s_reg[4][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end GenSecuencia;

architecture STRUCTURE of GenSecuencia is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fin_detectado_reg_i_10_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_14_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_8_n_0 : STD_LOGIC;
  signal fin_detectado_reg_i_9_n_0 : STD_LOGIC;
  signal \i_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal indice_reg_3_sn_1 : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_12_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_7_n_0\ : STD_LOGIC;
  signal \sec_actual_reg[1][1]_i_8_n_0\ : STD_LOGIC;
  signal \^sec_generada[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sec_generada[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sec_generada[5]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sec_generada[6]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sec_generada[7]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sec_generada[8]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sec_generada[9]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sec_generada_s_reg[0][1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sec_generada_s_reg[3][1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  indice_reg_3_sp_1 <= indice_reg_3_sn_1;
  \sec_generada[1]\(2 downto 0) <= \^sec_generada[1]\(2 downto 0);
  \sec_generada[2]\(2 downto 0) <= \^sec_generada[2]\(2 downto 0);
  \sec_generada[5]\(2 downto 0) <= \^sec_generada[5]\(2 downto 0);
  \sec_generada[6]\(0) <= \^sec_generada[6]\(0);
  \sec_generada[7]\(0) <= \^sec_generada[7]\(0);
  \sec_generada[8]\(1 downto 0) <= \^sec_generada[8]\(1 downto 0);
  \sec_generada[9]\(1 downto 0) <= \^sec_generada[9]\(1 downto 0);
  \sec_generada_s_reg[0][1]_0\(1 downto 0) <= \^sec_generada_s_reg[0][1]_0\(1 downto 0);
  \sec_generada_s_reg[3][1]_0\(1 downto 0) <= \^sec_generada_s_reg[3][1]_0\(1 downto 0);
fin_detectado_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada[7]\(0),
      I1 => \^sec_generada[1]\(2),
      I2 => indice_reg(1),
      I3 => \^sec_generada[5]\(0),
      I4 => indice_reg(0),
      I5 => \^q\(0),
      O => fin_detectado_reg_i_10_n_0
    );
fin_detectado_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada[5]\(2),
      I1 => \^sec_generada[6]\(0),
      I2 => indice_reg(1),
      I3 => \^sec_generada[5]\(1),
      I4 => indice_reg(0),
      I5 => \^q\(1),
      O => \sec_generada_s_reg[5][2]_1\
    );
fin_detectado_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada_s_reg[3][1]_0\(1),
      I1 => \^sec_generada[2]\(1),
      I2 => indice_reg(1),
      I3 => \^sec_generada[1]\(1),
      I4 => indice_reg(0),
      I5 => \^sec_generada_s_reg[0][1]_0\(1),
      O => \sec_generada_s_reg[3][1]_1\
    );
fin_detectado_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \^sec_generada[2]\(1),
      I1 => \^sec_generada[2]\(2),
      I2 => indice_reg(1),
      I3 => \^sec_generada[1]\(2),
      I4 => indice_reg(0),
      O => fin_detectado_reg_i_14_n_0
    );
fin_detectado_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BBB8B"
    )
        port map (
      I0 => fin_detectado_reg_i_8_n_0,
      I1 => indice_reg(3),
      I2 => fin_detectado_reg_i_9_n_0,
      I3 => indice_reg(2),
      I4 => fin_detectado_reg_i_10_n_0,
      O => indice_reg_3_sn_1
    );
fin_detectado_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \^sec_generada[5]\(1),
      I1 => indice_reg(1),
      I2 => \^sec_generada[5]\(2),
      I3 => indice_reg(0),
      I4 => indice_reg(2),
      I5 => fin_detectado_reg_i_14_n_0,
      O => \sec_generada_s_reg[5][1]_1\
    );
fin_detectado_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF5F50FFF5353"
    )
        port map (
      I0 => \^sec_generada[9]\(0),
      I1 => \^sec_generada[8]\(0),
      I2 => indice_reg(0),
      I3 => \^sec_generada[2]\(1),
      I4 => indice_reg(2),
      I5 => indice_reg(1),
      O => fin_detectado_reg_i_8_n_0
    );
fin_detectado_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada_s_reg[3][1]_0\(0),
      I1 => \^sec_generada[2]\(0),
      I2 => indice_reg(1),
      I3 => \^sec_generada[1]\(0),
      I4 => indice_reg(0),
      I5 => \^sec_generada_s_reg[0][1]_0\(0),
      O => fin_detectado_reg_i_9_n_0
    );
\i_reg[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada[5]\(2),
      I1 => \^sec_generada[6]\(0),
      I2 => exito_prev_i_2(1),
      I3 => \^sec_generada[5]\(1),
      I4 => exito_prev_i_2(0),
      I5 => \^q\(1),
      O => \i_reg[3]_i_13_n_0\
    );
\i_reg[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada_s_reg[3][1]_0\(1),
      I1 => \^sec_generada[2]\(1),
      I2 => exito_prev_i_2(1),
      I3 => \^sec_generada[1]\(1),
      I4 => exito_prev_i_2(0),
      I5 => \^sec_generada_s_reg[0][1]_0\(1),
      O => \i_reg[3]_i_14_n_0\
    );
\i_reg[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^sec_generada[8]\(1),
      I1 => exito_prev_i_2(1),
      I2 => \^sec_generada[9]\(1),
      I3 => exito_prev_i_2(0),
      I4 => \^sec_generada[2]\(1),
      O => \i_reg[3]_i_15_n_0\
    );
\i_reg[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada[7]\(0),
      I1 => \^sec_generada[1]\(2),
      I2 => exito_prev_i_2(1),
      I3 => \^sec_generada[5]\(0),
      I4 => exito_prev_i_2(0),
      I5 => \^q\(0),
      O => \sec_generada_s_reg[7][0]_0\
    );
\i_reg[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^sec_generada_s_reg[3][1]_0\(0),
      I1 => \^sec_generada[2]\(0),
      I2 => exito_prev_i_2(1),
      I3 => \^sec_generada[1]\(0),
      I4 => exito_prev_i_2(0),
      I5 => \^sec_generada_s_reg[0][1]_0\(0),
      O => \sec_generada_s_reg[3][0]_0\
    );
\i_reg[3]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \^sec_generada[5]\(1),
      I1 => exito_prev_i_2(1),
      I2 => exito_prev_i_2(0),
      I3 => \^sec_generada[5]\(2),
      O => \sec_generada_s_reg[5][1]_0\
    );
\i_reg[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D331DFF"
    )
        port map (
      I0 => \^sec_generada[1]\(2),
      I1 => exito_prev_i_2(1),
      I2 => \^sec_generada[2]\(1),
      I3 => exito_prev_i_2(0),
      I4 => \^sec_generada[2]\(2),
      O => \sec_generada_s_reg[1][2]_0\
    );
\i_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F053FF53"
    )
        port map (
      I0 => \i_reg[3]_i_13_n_0\,
      I1 => \i_reg[3]_i_14_n_0\,
      I2 => exito_prev_i_2(2),
      I3 => exito_prev_i_2(3),
      I4 => \i_reg[3]_i_15_n_0\,
      I5 => exito_prev_i_2_0,
      O => \sec_generada_s_reg[5][2]_0\
    );
\sec_actual_reg[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \sec_actual_reg[1][1]_i_2_n_0\,
      I1 => \sec_actual_reg[1][1]_i_3_n_0\,
      I2 => \sec_actual_reg[1][1]_i_4_n_0\,
      I3 => \sec_actual_reg[1][1]_i_5_n_0\,
      I4 => \i_reg[3]_i_2\,
      I5 => \sec_actual_reg[1][1]_i_7_n_0\,
      O => E(0)
    );
\sec_actual_reg[1][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \sec_actual_reg[1][1]_i_7_0\(0),
      I2 => \^q\(1),
      I3 => \sec_actual_reg[1][1]_i_7_0\(1),
      I4 => \^sec_generada[2]\(1),
      I5 => \sec_actual_reg[1][1]_i_1_1\,
      O => \sec_actual_reg[1][1]_i_12_n_0\
    );
\sec_actual_reg[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^sec_generada_s_reg[3][1]_0\(1),
      I1 => \sec_actual_reg[1][1]_i_1_2\(1),
      I2 => \sec_actual_reg[1][1]_i_1_1\,
      I3 => \^sec_generada[2]\(1),
      I4 => \sec_actual_reg[1][1]_i_1_2\(0),
      I5 => \^sec_generada_s_reg[3][1]_0\(0),
      O => \sec_actual_reg[1][1]_i_2_n_0\
    );
\sec_actual_reg[1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^sec_generada[2]\(2),
      I1 => \sec_actual_reg[1][1]_i_1_0\(1),
      I2 => \sec_actual_reg[1][1]_i_1_1\,
      I3 => \^sec_generada[2]\(1),
      I4 => \sec_actual_reg[1][1]_i_1_0\(0),
      I5 => \^sec_generada[2]\(0),
      O => \sec_actual_reg[1][1]_i_3_n_0\
    );
\sec_actual_reg[1][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DFFFF7D"
    )
        port map (
      I0 => \sec_actual_reg[1][1]_i_8_n_0\,
      I1 => \^sec_generada[6]\(0),
      I2 => \sec_actual_reg[1][1]_i_1_6\,
      I3 => \sec_actual_reg[1][1]_i_4_1\,
      I4 => \^sec_generada[1]\(2),
      O => \sec_actual_reg[1][1]_i_4_n_0\
    );
\sec_actual_reg[1][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^sec_generada[2]\(1),
      I1 => \sec_actual_reg[1][1]_i_1_1\,
      I2 => \^sec_generada_s_reg[0][1]_0\(0),
      I3 => \sec_actual_reg[1][1]_i_1_7\(0),
      I4 => \^sec_generada_s_reg[0][1]_0\(1),
      I5 => \sec_actual_reg[1][1]_i_1_7\(1),
      O => \sec_actual_reg[1][1]_i_5_n_0\
    );
\sec_actual_reg[1][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6FF6FFFF"
    )
        port map (
      I0 => \^sec_generada[9]\(0),
      I1 => \sec_actual_reg[1][1]_i_1_3\,
      I2 => \sec_actual_reg[1][1]_i_1_4\,
      I3 => \^sec_generada[9]\(1),
      I4 => \sec_actual_reg[1][1]_i_1_5\,
      I5 => \sec_actual_reg[1][1]_i_12_n_0\,
      O => \sec_actual_reg[1][1]_i_7_n_0\
    );
\sec_actual_reg[1][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^sec_generada[1]\(1),
      I1 => \sec_actual_reg[1][1]_i_4_0\(1),
      I2 => \^sec_generada[1]\(0),
      I3 => \sec_actual_reg[1][1]_i_4_0\(0),
      I4 => \^sec_generada[1]\(2),
      I5 => \sec_actual_reg[1][1]_i_4_1\,
      O => \sec_actual_reg[1][1]_i_8_n_0\
    );
\sec_actual_reg[1][1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^sec_generada[2]\(1),
      I1 => \sec_actual_reg[1][1]_i_1_1\,
      I2 => \^sec_generada[8]\(1),
      I3 => \sec_actual_reg[1][1]_i_6\,
      O => \sec_generada_s_reg[2][1]_0\
    );
\sec_generada_s_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[0][0]_0\(0),
      Q => \^sec_generada_s_reg[0][1]_0\(0),
      R => '0'
    );
\sec_generada_s_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => D(0),
      Q => \^sec_generada_s_reg[0][1]_0\(1),
      R => '0'
    );
\sec_generada_s_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[1][1]_0\(0),
      Q => \^sec_generada[1]\(0),
      R => '0'
    );
\sec_generada_s_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[1][1]_0\(1),
      Q => \^sec_generada[1]\(1),
      R => '0'
    );
\sec_generada_s_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[1][2]_1\,
      Q => \^sec_generada[1]\(2),
      R => '0'
    );
\sec_generada_s_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[2][2]_0\(0),
      Q => \^sec_generada[2]\(0),
      R => '0'
    );
\sec_generada_s_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[2][1]_1\,
      Q => \^sec_generada[2]\(1),
      R => '0'
    );
\sec_generada_s_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[2][2]_0\(1),
      Q => \^sec_generada[2]\(2),
      R => '0'
    );
\sec_generada_s_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[3][1]_2\(0),
      Q => \^sec_generada_s_reg[3][1]_0\(0),
      R => '0'
    );
\sec_generada_s_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[3][1]_2\(1),
      Q => \^sec_generada_s_reg[3][1]_0\(1),
      R => '0'
    );
\sec_generada_s_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[4][0]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\sec_generada_s_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\sec_generada_s_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[5][0]_0\,
      Q => \^sec_generada[5]\(0),
      R => '0'
    );
\sec_generada_s_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[5][1]_2\,
      Q => \^sec_generada[5]\(1),
      R => '0'
    );
\sec_generada_s_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[5][2]_2\,
      Q => \^sec_generada[5]\(2),
      R => '0'
    );
\sec_generada_s_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => D(4),
      Q => \^sec_generada[6]\(0),
      R => '0'
    );
\sec_generada_s_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => D(2),
      Q => \^sec_generada[7]\(0),
      R => '0'
    );
\sec_generada_s_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[8][0]_1\,
      Q => \^sec_generada[8]\(0),
      R => '0'
    );
\sec_generada_s_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[8][2]_0\,
      Q => \^sec_generada[8]\(1),
      R => '0'
    );
\sec_generada_s_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => D(3),
      Q => \^sec_generada[9]\(0),
      R => '0'
    );
\sec_generada_s_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => \sec_generada_s_reg[8][0]_0\,
      D => \sec_generada_s_reg[9][1]_0\,
      Q => \^sec_generada[9]\(1),
      R => '0'
    );
sec_lista_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sec_generada_s_reg[8][0]_0\,
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
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \estado_actual_reg[1]_0\ : out STD_LOGIC;
    \estado_actual_reg[1]_1\ : out STD_LOGIC;
    \estado_actual_reg[2]_0\ : out STD_LOGIC;
    \estado_actual_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \estado_actual_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \estado_actual_reg[2]_2\ : out STD_LOGIC;
    \estado_actual_reg[0]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \estado_actual_reg[1]_2\ : out STD_LOGIC;
    \estado_actual_reg[0]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \estado_actual_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \estado_actual_reg[0]_4\ : out STD_LOGIC;
    \estado_actual_reg[1]_3\ : out STD_LOGIC;
    \estado_actual_reg[2]_3\ : out STD_LOGIC;
    exito_prev_reg_0 : in STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    error_prev_reg_0 : in STD_LOGIC;
    \estado_actual_reg[0]_5\ : in STD_LOGIC;
    \estado_actual_reg[0]_6\ : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end controlador_nivel;

architecture STRUCTURE of controlador_nivel is
  signal estado_actual : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal estado_siguiente : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \display_s[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \display_s[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \display_s[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \estado_actual[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \estado_actual[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \estado_actual[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sec_generada_s[0][0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sec_generada_s[0][1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sec_generada_s[1][0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec_generada_s[1][1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sec_generada_s[1][2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec_generada_s[2][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sec_generada_s[2][1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sec_generada_s[2][2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sec_generada_s[3][0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sec_generada_s[3][1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sec_generada_s[4][0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sec_generada_s[4][1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sec_generada_s[5][0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sec_generada_s[5][1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sec_generada_s[5][2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sec_generada_s[6][1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sec_generada_s[7][0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sec_generada_s[8][0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sec_generada_s[8][2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sec_generada_s[9][1]_i_1\ : label is "soft_lutpair11";
begin
\display_s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => D(2)
    );
\display_s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(3)
    );
\display_s[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      O => D(5)
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
      I1 => \estado_actual_reg[0]_5\,
      I2 => estado_actual(0),
      I3 => \estado_actual_reg[0]_6\,
      I4 => estado_actual(2),
      O => estado_siguiente(0)
    );
\estado_actual[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01510404"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(0),
      I2 => \estado_actual_reg[0]_6\,
      I3 => \estado_actual_reg[0]_5\,
      I4 => estado_actual(1),
      O => estado_siguiente(1)
    );
\estado_actual[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00304444"
    )
        port map (
      I0 => \estado_actual_reg[0]_5\,
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      I3 => \estado_actual_reg[0]_6\,
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
\sec_generada_s[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => \estado_actual_reg[2]_1\(0)
    );
\sec_generada_s[0][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"ED"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      O => D(0)
    );
\sec_generada_s[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      O => \estado_actual_reg[0]_1\(0)
    );
\sec_generada_s[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      O => \estado_actual_reg[0]_1\(1)
    );
\sec_generada_s[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => \estado_actual_reg[2]_2\
    );
\sec_generada_s[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CB"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => \estado_actual_reg[0]_2\(0)
    );
\sec_generada_s[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => \estado_actual_reg[1]_3\
    );
\sec_generada_s[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      I2 => estado_actual(2),
      O => \estado_actual_reg[0]_2\(1)
    );
\sec_generada_s[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => \estado_actual_reg[0]_0\(0)
    );
\sec_generada_s[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => \estado_actual_reg[0]_0\(1)
    );
\sec_generada_s[4][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => \estado_actual_reg[0]_3\(0)
    );
\sec_generada_s[4][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(2),
      I2 => estado_actual(1),
      O => D(1)
    );
\sec_generada_s[5][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => estado_actual(0),
      I1 => estado_actual(1),
      O => \estado_actual_reg[0]_4\
    );
\sec_generada_s[5][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => \estado_actual_reg[1]_1\
    );
\sec_generada_s[5][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => \estado_actual_reg[1]_0\
    );
\sec_generada_s[6][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      O => D(6)
    );
\sec_generada_s[7][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => D(4)
    );
\sec_generada_s[8][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => \estado_actual_reg[2]_3\
    );
\sec_generada_s[8][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => estado_actual(1),
      I1 => estado_actual(2),
      I2 => estado_actual(0),
      O => \estado_actual_reg[1]_2\
    );
\sec_generada_s[9][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => estado_actual(2),
      I1 => estado_actual(1),
      I2 => estado_actual(0),
      O => \estado_actual_reg[2]_0\
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
    boton_listo_0 : out STD_LOGIC;
    SYNC_OUT_reg_0 : out STD_LOGIC;
    SYNC_OUT_reg_1 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    boton_listo_3 : in STD_LOGIC;
    boton_listo_2 : in STD_LOGIC;
    boton_listo_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sync;

architecture STRUCTURE of sync is
  signal \^boton_listo_0\ : STD_LOGIC;
  signal sreg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_reg[3]_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i_reg[3]_i_12\ : label is "soft_lutpair21";
begin
  boton_listo_0 <= \^boton_listo_0\;
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => sreg(1),
      Q => \^boton_listo_0\,
      R => '0'
    );
\i_reg[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^boton_listo_0\,
      I1 => boton_listo_1,
      I2 => boton_listo_2,
      O => SYNC_OUT_reg_1
    );
\i_reg[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \^boton_listo_0\,
      I1 => boton_listo_3,
      I2 => boton_listo_2,
      I3 => boton_listo_1,
      O => SYNC_OUT_reg_0
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
    boton_listo_1 : out STD_LOGIC;
    SYNC_OUT_reg_0 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    boton_listo_2 : in STD_LOGIC;
    boton_listo_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_0 : entity is "sync";
end sync_0;

architecture STRUCTURE of sync_0 is
  signal \^boton_listo_1\ : STD_LOGIC;
  signal \sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sreg_reg_n_0_[1]\ : STD_LOGIC;
begin
  boton_listo_1 <= \^boton_listo_1\;
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[1]\,
      Q => \^boton_listo_1\,
      R => '0'
    );
\i_reg[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^boton_listo_1\,
      I1 => boton_listo_2,
      I2 => boton_listo_0,
      O => SYNC_OUT_reg_0
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
    boton_listo_2 : out STD_LOGIC;
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
      Q => boton_listo_2,
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
    boton_listo_3 : out STD_LOGIC;
    SYNC_OUT_reg_0 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    boton_listo_2 : in STD_LOGIC;
    boton_listo_1 : in STD_LOGIC;
    boton_listo_0 : in STD_LOGIC;
    flag_boton : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_2 : entity is "sync";
end sync_2;

architecture STRUCTURE of sync_2 is
  signal \^boton_listo_3\ : STD_LOGIC;
  signal \sreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sreg_reg_n_0_[1]\ : STD_LOGIC;
begin
  boton_listo_3 <= \^boton_listo_3\;
SYNC_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_BUFG,
      CE => '1',
      D => \sreg_reg_n_0_[1]\,
      Q => \^boton_listo_3\,
      R => '0'
    );
flag_boton_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \^boton_listo_3\,
      I1 => boton_listo_2,
      I2 => boton_listo_1,
      I3 => boton_listo_0,
      I4 => flag_boton,
      O => SYNC_OUT_reg_0
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
    SYNC_OUT_reg_0 : out STD_LOGIC;
    clk_BUFG : in STD_LOGIC;
    \sec_generada_s_reg[8][0]\ : in STD_LOGIC;
    \sec_generada_s_reg[8][0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sync_3 : entity is "sync";
end sync_3;

architecture STRUCTURE of sync_3 is
  signal accion_listo : STD_LOGIC;
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
\sec_generada_s[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => accion_listo,
      I1 => \sec_generada_s_reg[8][0]\,
      I2 => \sec_generada_s_reg[8][0]_0\,
      O => SYNC_OUT_reg_0
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
  attribute SOFT_HLUTNM of activo_i_1 : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \contador_s_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_s_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of fin_tiempo_i_1 : label is "soft_lutpair22";
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
  attribute NUM_BOTONES : integer;
  attribute NUM_BOTONES of TOP : entity is 4;
  attribute NUM_LEDS : integer;
  attribute NUM_LEDS of TOP : entity is 4;
  attribute SEG_DISPLAY : integer;
  attribute SEG_DISPLAY of TOP : entity is 7;
end TOP;

architecture STRUCTURE of TOP is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal accion_IBUF : STD_LOGIC;
  signal boton_IBUF : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal boton_listo_0 : STD_LOGIC;
  signal boton_listo_1 : STD_LOGIC;
  signal boton_listo_2 : STD_LOGIC;
  signal boton_listo_3 : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal clk_BUFG : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal display_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal fin_tiempo : STD_LOGIC;
  signal flag_boton : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal indice_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_CompSecuencia_n_1 : STD_LOGIC;
  signal inst_CompSecuencia_n_14 : STD_LOGIC;
  signal inst_CompSecuencia_n_15 : STD_LOGIC;
  signal inst_CompSecuencia_n_16 : STD_LOGIC;
  signal inst_CompSecuencia_n_17 : STD_LOGIC;
  signal inst_CompSecuencia_n_18 : STD_LOGIC;
  signal inst_CompSecuencia_n_19 : STD_LOGIC;
  signal inst_CompSecuencia_n_2 : STD_LOGIC;
  signal inst_CompSecuencia_n_20 : STD_LOGIC;
  signal inst_CompSecuencia_n_21 : STD_LOGIC;
  signal inst_CompSecuencia_n_22 : STD_LOGIC;
  signal inst_CompSecuencia_n_23 : STD_LOGIC;
  signal inst_CompSecuencia_n_24 : STD_LOGIC;
  signal inst_CompSecuencia_n_25 : STD_LOGIC;
  signal inst_CompSecuencia_n_26 : STD_LOGIC;
  signal inst_CompSecuencia_n_27 : STD_LOGIC;
  signal inst_CompSecuencia_n_3 : STD_LOGIC;
  signal inst_CompSecuencia_n_4 : STD_LOGIC;
  signal inst_CompSecuencia_n_5 : STD_LOGIC;
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
  signal inst_Controlador_de_Sec_n_6 : STD_LOGIC;
  signal inst_Controlador_de_Sec_n_9 : STD_LOGIC;
  signal inst_DivisorReloj_n_1 : STD_LOGIC;
  signal inst_GenSecuencia_n_16 : STD_LOGIC;
  signal inst_GenSecuencia_n_17 : STD_LOGIC;
  signal inst_GenSecuencia_n_18 : STD_LOGIC;
  signal inst_GenSecuencia_n_19 : STD_LOGIC;
  signal inst_GenSecuencia_n_22 : STD_LOGIC;
  signal inst_GenSecuencia_n_27 : STD_LOGIC;
  signal inst_GenSecuencia_n_28 : STD_LOGIC;
  signal inst_GenSecuencia_n_29 : STD_LOGIC;
  signal inst_GenSecuencia_n_30 : STD_LOGIC;
  signal inst_GenSecuencia_n_31 : STD_LOGIC;
  signal inst_GenSecuencia_n_32 : STD_LOGIC;
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
  signal \inst_sync[1].botones_sync_n_1\ : STD_LOGIC;
  signal \inst_sync[1].botones_sync_n_2\ : STD_LOGIC;
  signal \inst_sync[2].botones_sync_n_1\ : STD_LOGIC;
  signal \inst_sync[4].botones_sync_n_1\ : STD_LOGIC;
  signal inst_sync_accion_n_0 : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sec_generada[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sec_generada[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sec_generada[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sec_generada[3]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sec_generada[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sec_generada[5]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sec_generada[6]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \sec_generada[7]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sec_generada[8]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sec_generada[9]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
      E(0) => inst_GenSecuencia_n_31,
      Q(1 downto 0) => cur_state(1 downto 0),
      RESET_IBUF => RESET_IBUF,
      SYNC_OUT_reg => inst_CompSecuencia_n_9,
      boton_listo_0 => boton_listo_0,
      boton_listo_1 => boton_listo_1,
      boton_listo_2 => boton_listo_2,
      boton_listo_3 => boton_listo_3,
      error_prev_reg => inst_CompSecuencia_n_7,
      error_prev_reg_0 => inst_CompSecuencia_n_17,
      \estado_actual[2]_i_2_0\ => \inst_sync[2].botones_sync_n_1\,
      \estado_actual[2]_i_2_1\ => \inst_sync[1].botones_sync_n_2\,
      \estado_actual[2]_i_2_2\ => \inst_sync[1].botones_sync_n_1\,
      exito_prev_reg => inst_GenSecuencia_n_18,
      flag_boton => flag_boton,
      flag_boton_reg_0 => inst_Controlador_de_Sec_n_9,
      flag_boton_reg_i_1 => \inst_sync[4].botones_sync_n_1\,
      \i_reg[3]_i_2_0\(3 downto 0) => i(3 downto 0),
      \i_reg[3]_i_5_0\ => inst_GenSecuencia_n_17,
      \i_reg[3]_i_5_1\ => inst_GenSecuencia_n_16,
      \i_reg[3]_i_5_2\ => inst_GenSecuencia_n_19,
      \i_reg[3]_i_5_3\ => inst_GenSecuencia_n_22,
      \i_reg[3]_i_9_0\ => inst_CompSecuencia_n_8,
      \p_0_in__0\(0) => \p_0_in__0\(0),
      \sec_actual_reg[1][1]_i_1\ => inst_GenSecuencia_n_32,
      \sec_actual_reg[1][1]_i_12\(1 downto 0) => \sec_generada[4]\(1 downto 0),
      \sec_actual_reg[1][1]_i_2\(1 downto 0) => \sec_generada[3]\(1 downto 0),
      \sec_actual_reg[1][1]_i_5\(1 downto 0) => \sec_generada[0]\(1 downto 0),
      \sec_generada[1]\(2 downto 0) => \sec_generada[1]\(2 downto 0),
      \sec_generada[2]\(2 downto 0) => \sec_generada[2]\(2 downto 0),
      \sec_generada[5]\(2 downto 0) => \sec_generada[5]\(2 downto 0),
      \sec_generada[6]\(0) => \sec_generada[6]\(1),
      \sec_generada[7]\(0) => \sec_generada[7]\(0),
      \sec_generada[8]\(1) => \sec_generada[8]\(2),
      \sec_generada[8]\(0) => \sec_generada[8]\(0),
      \sec_generada[9]\(1 downto 0) => \sec_generada[9]\(1 downto 0),
      \sec_generada_s_reg[0][1]\(1) => inst_CompSecuencia_n_26,
      \sec_generada_s_reg[0][1]\(0) => inst_CompSecuencia_n_27,
      \sec_generada_s_reg[1][1]\(1) => inst_CompSecuencia_n_18,
      \sec_generada_s_reg[1][1]\(0) => inst_CompSecuencia_n_19,
      \sec_generada_s_reg[1][2]\ => inst_CompSecuencia_n_5,
      \sec_generada_s_reg[2][1]\ => inst_CompSecuencia_n_6,
      \sec_generada_s_reg[2][1]_0\ => inst_CompSecuencia_n_14,
      \sec_generada_s_reg[2][2]\(1) => inst_CompSecuencia_n_20,
      \sec_generada_s_reg[2][2]\(0) => inst_CompSecuencia_n_21,
      \sec_generada_s_reg[3][1]\(1) => inst_CompSecuencia_n_22,
      \sec_generada_s_reg[3][1]\(0) => inst_CompSecuencia_n_23,
      \sec_generada_s_reg[4][1]\(1) => inst_CompSecuencia_n_24,
      \sec_generada_s_reg[4][1]\(0) => inst_CompSecuencia_n_25,
      \sec_generada_s_reg[5][1]\ => inst_CompSecuencia_n_16,
      \sec_generada_s_reg[6][1]\ => inst_CompSecuencia_n_1,
      \sec_generada_s_reg[8][2]\ => inst_CompSecuencia_n_3,
      \sec_generada_s_reg[9][0]\ => inst_CompSecuencia_n_4,
      \sec_generada_s_reg[9][0]_0\ => inst_CompSecuencia_n_15,
      \sec_generada_s_reg[9][1]\ => inst_CompSecuencia_n_2
    );
inst_Controlador_de_Sec: entity work.Controlador_de_Sec
     port map (
      D(3) => inst_Controlador_de_Sec_n_11,
      D(2) => inst_Controlador_de_Sec_n_12,
      D(1) => inst_Controlador_de_Sec_n_13,
      D(0) => inst_Controlador_de_Sec_n_14,
      Q(1 downto 0) => cur_state(1 downto 0),
      RESET_IBUF => RESET_IBUF,
      clk_BUFG => clk_BUFG,
      \cur_state_reg[0]_0\ => inst_Controlador_de_Sec_n_0,
      \cur_state_reg[0]_1\ => inst_Controlador_de_Sec_n_9,
      \cur_state_reg[0]_2\ => inst_Controlador_de_Sec_n_10,
      exito_prev_reg => inst_Controlador_de_Sec_n_6,
      exito_prev_reg_0 => inst_CompSecuencia_n_8,
      fin_tiempo => fin_tiempo,
      indice_reg(3 downto 0) => indice_reg(3 downto 0),
      \led_s_reg[1]\ => inst_GenSecuencia_n_27,
      \led_s_reg[1]_0\ => inst_GenSecuencia_n_28,
      \led_s_reg[1]_1\ => inst_GenSecuencia_n_30,
      p_0_in(0) => p_0_in(0),
      pedir_tiempo_reg_P_0 => inst_Controlador_de_Sec_n_1,
      pedir_tiempo_reg_P_1 => inst_GenSecuencia_n_29,
      \sec_generada[2]\(0) => \sec_generada[2]\(1),
      \sec_generada[8]\(0) => \sec_generada[8]\(2),
      \sec_generada[9]\(0) => \sec_generada[9]\(1),
      sec_lista => sec_lista
    );
inst_Decod_Leds_Sec: entity work.Decod_Leds_Sec
     port map (
      AR(0) => inst_DivisorReloj_n_1,
      D(3) => inst_Controlador_de_Sec_n_11,
      D(2) => inst_Controlador_de_Sec_n_12,
      D(1) => inst_Controlador_de_Sec_n_13,
      D(0) => inst_Controlador_de_Sec_n_14,
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
      D(4) => inst_controlador_nivel_n_2,
      D(3) => inst_controlador_nivel_n_3,
      D(2) => inst_controlador_nivel_n_4,
      D(1) => inst_controlador_nivel_n_7,
      D(0) => inst_controlador_nivel_n_8,
      E(0) => inst_GenSecuencia_n_31,
      Q(1 downto 0) => \sec_generada[4]\(1 downto 0),
      clk_BUFG => clk_BUFG,
      exito_prev_i_2(3 downto 0) => i(3 downto 0),
      exito_prev_i_2_0 => inst_CompSecuencia_n_14,
      \i_reg[3]_i_2\ => inst_CompSecuencia_n_15,
      indice_reg(3 downto 0) => indice_reg(3 downto 0),
      indice_reg_3_sp_1 => inst_GenSecuencia_n_29,
      \sec_actual_reg[1][1]_i_1_0\(1) => inst_CompSecuencia_n_20,
      \sec_actual_reg[1][1]_i_1_0\(0) => inst_CompSecuencia_n_21,
      \sec_actual_reg[1][1]_i_1_1\ => inst_CompSecuencia_n_6,
      \sec_actual_reg[1][1]_i_1_2\(1) => inst_CompSecuencia_n_22,
      \sec_actual_reg[1][1]_i_1_2\(0) => inst_CompSecuencia_n_23,
      \sec_actual_reg[1][1]_i_1_3\ => inst_CompSecuencia_n_4,
      \sec_actual_reg[1][1]_i_1_4\ => inst_CompSecuencia_n_2,
      \sec_actual_reg[1][1]_i_1_5\ => inst_CompSecuencia_n_16,
      \sec_actual_reg[1][1]_i_1_6\ => inst_CompSecuencia_n_1,
      \sec_actual_reg[1][1]_i_1_7\(1) => inst_CompSecuencia_n_26,
      \sec_actual_reg[1][1]_i_1_7\(0) => inst_CompSecuencia_n_27,
      \sec_actual_reg[1][1]_i_4_0\(1) => inst_CompSecuencia_n_18,
      \sec_actual_reg[1][1]_i_4_0\(0) => inst_CompSecuencia_n_19,
      \sec_actual_reg[1][1]_i_4_1\ => inst_CompSecuencia_n_5,
      \sec_actual_reg[1][1]_i_6\ => inst_CompSecuencia_n_3,
      \sec_actual_reg[1][1]_i_7_0\(1) => inst_CompSecuencia_n_24,
      \sec_actual_reg[1][1]_i_7_0\(0) => inst_CompSecuencia_n_25,
      \sec_generada[1]\(2 downto 0) => \sec_generada[1]\(2 downto 0),
      \sec_generada[2]\(2 downto 0) => \sec_generada[2]\(2 downto 0),
      \sec_generada[5]\(2 downto 0) => \sec_generada[5]\(2 downto 0),
      \sec_generada[6]\(0) => \sec_generada[6]\(1),
      \sec_generada[7]\(0) => \sec_generada[7]\(0),
      \sec_generada[8]\(1) => \sec_generada[8]\(2),
      \sec_generada[8]\(0) => \sec_generada[8]\(0),
      \sec_generada[9]\(1 downto 0) => \sec_generada[9]\(1 downto 0),
      \sec_generada_s_reg[0][0]_0\(0) => inst_controlador_nivel_n_14,
      \sec_generada_s_reg[0][1]_0\(1 downto 0) => \sec_generada[0]\(1 downto 0),
      \sec_generada_s_reg[1][1]_0\(1) => inst_controlador_nivel_n_16,
      \sec_generada_s_reg[1][1]_0\(0) => inst_controlador_nivel_n_17,
      \sec_generada_s_reg[1][2]_0\ => inst_GenSecuencia_n_16,
      \sec_generada_s_reg[1][2]_1\ => inst_controlador_nivel_n_15,
      \sec_generada_s_reg[2][1]_0\ => inst_GenSecuencia_n_32,
      \sec_generada_s_reg[2][1]_1\ => inst_controlador_nivel_n_23,
      \sec_generada_s_reg[2][2]_0\(1) => inst_controlador_nivel_n_19,
      \sec_generada_s_reg[2][2]_0\(0) => inst_controlador_nivel_n_20,
      \sec_generada_s_reg[3][0]_0\ => inst_GenSecuencia_n_22,
      \sec_generada_s_reg[3][1]_0\(1 downto 0) => \sec_generada[3]\(1 downto 0),
      \sec_generada_s_reg[3][1]_1\ => inst_GenSecuencia_n_28,
      \sec_generada_s_reg[3][1]_2\(1) => inst_controlador_nivel_n_12,
      \sec_generada_s_reg[3][1]_2\(0) => inst_controlador_nivel_n_13,
      \sec_generada_s_reg[4][0]_0\(0) => inst_controlador_nivel_n_21,
      \sec_generada_s_reg[5][0]_0\ => inst_controlador_nivel_n_22,
      \sec_generada_s_reg[5][1]_0\ => inst_GenSecuencia_n_17,
      \sec_generada_s_reg[5][1]_1\ => inst_GenSecuencia_n_30,
      \sec_generada_s_reg[5][1]_2\ => inst_controlador_nivel_n_10,
      \sec_generada_s_reg[5][2]_0\ => inst_GenSecuencia_n_18,
      \sec_generada_s_reg[5][2]_1\ => inst_GenSecuencia_n_27,
      \sec_generada_s_reg[5][2]_2\ => inst_controlador_nivel_n_9,
      \sec_generada_s_reg[7][0]_0\ => inst_GenSecuencia_n_19,
      \sec_generada_s_reg[8][0]_0\ => inst_sync_accion_n_0,
      \sec_generada_s_reg[8][0]_1\ => inst_controlador_nivel_n_24,
      \sec_generada_s_reg[8][2]_0\ => inst_controlador_nivel_n_18,
      \sec_generada_s_reg[9][1]_0\ => inst_controlador_nivel_n_11,
      sec_lista => sec_lista
    );
inst_controlador_nivel: entity work.controlador_nivel
     port map (
      AR(0) => inst_DivisorReloj_n_1,
      D(6) => inst_controlador_nivel_n_2,
      D(5) => inst_controlador_nivel_n_3,
      D(4) => inst_controlador_nivel_n_4,
      D(3) => inst_controlador_nivel_n_5,
      D(2) => inst_controlador_nivel_n_6,
      D(1) => inst_controlador_nivel_n_7,
      D(0) => inst_controlador_nivel_n_8,
      clk_BUFG => clk_BUFG,
      error_prev_reg_0 => inst_CompSecuencia_n_17,
      \estado_actual_reg[0]_0\(1) => inst_controlador_nivel_n_12,
      \estado_actual_reg[0]_0\(0) => inst_controlador_nivel_n_13,
      \estado_actual_reg[0]_1\(1) => inst_controlador_nivel_n_16,
      \estado_actual_reg[0]_1\(0) => inst_controlador_nivel_n_17,
      \estado_actual_reg[0]_2\(1) => inst_controlador_nivel_n_19,
      \estado_actual_reg[0]_2\(0) => inst_controlador_nivel_n_20,
      \estado_actual_reg[0]_3\(0) => inst_controlador_nivel_n_21,
      \estado_actual_reg[0]_4\ => inst_controlador_nivel_n_22,
      \estado_actual_reg[0]_5\ => inst_CompSecuencia_n_7,
      \estado_actual_reg[0]_6\ => inst_Controlador_de_Sec_n_6,
      \estado_actual_reg[1]_0\ => inst_controlador_nivel_n_9,
      \estado_actual_reg[1]_1\ => inst_controlador_nivel_n_10,
      \estado_actual_reg[1]_2\ => inst_controlador_nivel_n_18,
      \estado_actual_reg[1]_3\ => inst_controlador_nivel_n_23,
      \estado_actual_reg[2]_0\ => inst_controlador_nivel_n_11,
      \estado_actual_reg[2]_1\(0) => inst_controlador_nivel_n_14,
      \estado_actual_reg[2]_2\ => inst_controlador_nivel_n_15,
      \estado_actual_reg[2]_3\ => inst_controlador_nivel_n_24,
      exito_prev_reg_0 => inst_Controlador_de_Sec_n_10,
      p_0_in(0) => p_0_in(0),
      \p_0_in__0\(0) => \p_0_in__0\(0)
    );
inst_decod_display: entity work.decod_display
     port map (
      D(6) => inst_controlador_nivel_n_2,
      D(5) => inst_controlador_nivel_n_3,
      D(4) => inst_controlador_nivel_n_4,
      D(3) => inst_controlador_nivel_n_5,
      D(2) => inst_controlador_nivel_n_6,
      D(1) => inst_controlador_nivel_n_7,
      D(0) => inst_controlador_nivel_n_8,
      Q(6 downto 0) => display_OBUF(6 downto 0),
      clk_BUFG => clk_BUFG
    );
\inst_sync[1].botones_sync\: entity work.sync
     port map (
      D(0) => boton_IBUF(1),
      SYNC_OUT_reg_0 => \inst_sync[1].botones_sync_n_1\,
      SYNC_OUT_reg_1 => \inst_sync[1].botones_sync_n_2\,
      boton_listo_0 => boton_listo_0,
      boton_listo_1 => boton_listo_1,
      boton_listo_2 => boton_listo_2,
      boton_listo_3 => boton_listo_3,
      clk_BUFG => clk_BUFG
    );
\inst_sync[2].botones_sync\: entity work.sync_0
     port map (
      D(0) => boton_IBUF(2),
      SYNC_OUT_reg_0 => \inst_sync[2].botones_sync_n_1\,
      boton_listo_0 => boton_listo_0,
      boton_listo_1 => boton_listo_1,
      boton_listo_2 => boton_listo_2,
      clk_BUFG => clk_BUFG
    );
\inst_sync[3].botones_sync\: entity work.sync_1
     port map (
      D(0) => boton_IBUF(3),
      boton_listo_2 => boton_listo_2,
      clk_BUFG => clk_BUFG
    );
\inst_sync[4].botones_sync\: entity work.sync_2
     port map (
      D(0) => boton_IBUF(4),
      SYNC_OUT_reg_0 => \inst_sync[4].botones_sync_n_1\,
      boton_listo_0 => boton_listo_0,
      boton_listo_1 => boton_listo_1,
      boton_listo_2 => boton_listo_2,
      boton_listo_3 => boton_listo_3,
      clk_BUFG => clk_BUFG,
      flag_boton => flag_boton
    );
inst_sync_accion: entity work.sync_3
     port map (
      D(0) => accion_IBUF,
      SYNC_OUT_reg_0 => inst_sync_accion_n_0,
      clk_BUFG => clk_BUFG,
      \sec_generada_s_reg[8][0]\ => inst_Controlador_de_Sec_n_9,
      \sec_generada_s_reg[8][0]_0\ => inst_CompSecuencia_n_9
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
