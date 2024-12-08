----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2024 19:58:13
-- Design Name: 
-- Module Name: DivisorReloj_tb - Behavioral
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

entity DivisorReloj_tb is
end DivisorReloj_tb;

architecture Behavioral of DivisorReloj_tb is
    
    component DivisorReloj is
        port (
            -- Entradas
            clk_in   : in  std_logic; -- Reloj de entrada de la placa: 100 MHz
            reset    : in  std_logic; -- Reset asincrono
            -- Salidas
            clk_out  : out std_logic  -- Reloj de salida: 1 MHz
        );
    end component;
    
    signal clk_in   : std_logic;
    signal reset    : std_logic;
    signal clk_out  : std_logic;
    
    constant periodo_clk : time := 10 ns; -- Perido de 10ns = 100MHz
    
begin
    uut: DivisorReloj
        port map(
            clk_in => clk_in,
            reset => reset,
            clk_out => clk_out
        );
    
    -- Proceso para generar el reloj de entrada 
    proceso_clk: process
    begin
        while true loop
            clk_in <= '0';
            wait for periodo_clk / 2;
            clk_in <= '1';
            wait for periodo_clk / 2;
        end loop;
    end process;
    
    -- Proceso para probar la entidad
    test: process
    begin
        -- Inicialización
        reset <= '0';  -- Reset activado
        wait for 20 ns;
        reset <= '1';  -- Desactivar reset

        -- Simulación durante un periodo suficiente para verificar clk_out
        wait for 2 ms;  -- Simular 2 ms para observar varias transiciones de clk_out
        
        wait; -- Fin de la simulacion
    end process;
end Behavioral;
