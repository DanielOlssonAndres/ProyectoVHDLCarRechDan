----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2024 13:19:05
-- Design Name: 
-- Module Name: TOP_tb - Behavioral
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
--library work;
--use work.newtype_package.all;
--library xil_defaultlib;
--use xil_defaultlib.newtype_package.all;

entity TOP_tb is
end TOP_tb;


architecture Behavioral of TOP_tb is
    
    component TOP is
--        generic(
--            NUM_LEDS      : integer := 4;
--            NUM_BOTONES   : integer := 4;
--            SEG_DISPLAY   : integer := 7
--        );
        port(
            -- ENTRADAS
            RESET           : in std_logic; -- Botón de RESET asíncrono
            boton           : in std_logic_vector(4 downto 1); -- Botones/Pulsadores con los que se juega
            accion          : in std_logic; -- Botón de acción del juego, que inicia la generación de secuencias
            CLK             : in std_logic; -- Entrada del reloj de la FPGA
            -- SALIDAS      
            led             : out std_logic_vector(4 downto 1); -- Leds que producen la secuencia del juego
            display         : out std_logic_vector(6 downto 0); -- Segmentos del display a controlar
            enable_display  : out std_logic -- Habilita la cifra del display
    
        );
    end component;
    
    signal RESET           : std_logic := '1'; -- Botón de RESET asíncrono
    signal boton           : std_logic_vector(4 downto 1); -- Botones/Pulsadores con los que se juega
    signal accion          : std_logic := '0'; -- Botón de acción del juego, que inicia la generación de secuencias
    signal CLK             : std_logic := '0'; -- Entrada del reloj de la FPGA
    
    signal led             : std_logic_vector(4 downto 1); -- Leds que producen la secuencia del juego
    signal display         : std_logic_vector(7 - 1 downto 0); -- Segmentos del display a controlar
    signal enable_display  : std_logic; -- Habilita la cifra del display
    
    constant periodo_clk : time := 10 ns;
    
begin

    uut:TOP
        port map(
            -- ENTRADAS
            RESET => RESET,
            boton => boton,
            accion => accion,
            CLK => CLK,
            led => led,
            display => display,
            enable_display => enable_display
        );
    
    clk_gen: process
    begin
        CLK <= not CLK;
        wait for periodo_clk/2;
    end process;
    
    test: process
    begin
        
        boton <= "0000";
        
        wait for 100 ns;
        accion <= '1';
        wait for 1 us;
        accion <= '0';
        wait for 1 us;
        
        wait for 35 us;
        
        boton <= "0010";
        wait for 1 us;
        boton <= "0000";
        wait for 1 us;
        
        boton <= "0100";
        wait for 1 us;
        boton <= "0000";
        wait for 1 us;
        
        boton <= "0001";
        wait for 1 us;
        boton <= "0000";
        wait for 1 us;
        
        boton <= "0100";
        wait for 1 us;
        boton <= "0000";
        wait for 1 us;
        
        wait for 6 us;
        
        accion <= '1';
        wait for 1 us;
        accion <= '0';
        wait for 1 us;
        
        wait for 45 us;
        
        assert false
        report "Sim terminada"
        severity failure;
        
    end process;
    
end Behavioral;
