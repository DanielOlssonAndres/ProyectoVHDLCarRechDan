----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2024 23:41:22
-- Design Name: 
-- Module Name: ControladorNivel_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControladorNivel_tb is
--  Port ( );
end ControladorNivel_tb;

architecture Behavioral of ControladorNivel_tb is
    signal exito : STD_LOGIC := '0';
    signal error : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal CLK : STD_LOGIC := '0';
    signal nivel_actual : STD_LOGIC_VECTOR(2 downto 0);
    signal avance_nivel : STD_LOGIC;
    signal reinicio_nivel : STD_LOGIC;

    -- UUT
    component controlador_nivel is
        Port ( 
            exito : in STD_LOGIC;
            error : in STD_LOGIC;
            reset : in STD_LOGIC;
            CLK : in STD_LOGIC;
            nivel_actual : out STD_LOGIC_VECTOR (2 downto 0);
            avance_nivel : out STD_LOGIC;
            reinicio_nivel : out STD_LOGIC
        );
    end component;

begin
    -- UUT
    UUT: controlador_nivel
        port map (
            exito => exito,
            error => error,
            reset => reset,
            CLK => CLK,
            nivel_actual => nivel_actual,
            avance_nivel => avance_nivel,
            reinicio_nivel => reinicio_nivel
        );

    -- Reloj
    process
    begin
        while true loop
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Estimulación de señales
  stim_proc: process
begin
    -- Reset inicial
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    wait for 20 ns;

    -- Progresar niveles con éxito
    exito <= '1'; wait for 40 ns; exito <= '0'; wait for 40 ns; -- A ESTADO_2
    exito <= '1'; wait for 40 ns; exito <= '0'; wait for 40 ns; -- A ESTADO_3
    exito <= '1'; wait for 40 ns; exito <= '0'; wait for 40 ns; -- A ESTADO_4
    exito <= '1'; wait for 40 ns; exito <= '0'; wait for 40 ns; -- A ESTADO_5

    -- Error en el último nivel
    error <= '1';
    wait for 40 ns;
    error <= '0';
    wait for 40 ns;

    -- Reset después de un error
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    wait for 40 ns;

    -- Fin de la simulación
    wait;
end process;
end Behavioral;
