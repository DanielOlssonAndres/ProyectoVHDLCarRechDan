----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2024 13:00:08
-- Design Name: 
-- Module Name: CodBotones_tb - Behavioral
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

entity CodBotones_tb is
end CodBotones_tb;

architecture Behavioral of CodBotones_tb is

    component CodBotones is
        port(
            -- Entradas
            boton1          : in std_logic; -- Boton 1
            boton2          : in std_logic; -- Boton 2
            boton3          : in std_logic; -- Boton 3
            boton4          : in std_logic; -- Boton 4
            -- Salidas
            boton_pulsado   : out std_logic_vector(0 to 2) -- El numero equivale al boton que se ha pulsado
        );
    end component;
    
    signal boton1          : std_logic;
    signal boton2          : std_logic;
    signal boton3          : std_logic;
    signal boton4          : std_logic;
    signal boton_pulsado   : std_logic_vector(0 to 2);
    
    -- Declaracion del periodo
    constant periodo_clk : time := 20 ns;

begin
    -- Instanciacion del componente
    uut: CodBotones
        port map(
            boton1 => boton1,
            boton2 => boton2,
            boton3 => boton3,
            boton4 => boton4,
            boton_pulsado => boton_pulsado
        );
    
    
    test: process
    begin
        -- Ningun boton pulsado
        boton1 <= '0'; boton2 <= '0'; boton3 <= '0'; boton4 <= '0';
        wait for periodo_clk;
        
        -- Boton 1 pulsado
        boton1 <= '1';
        wait for periodo_clk;
        boton1 <= '0';
        wait for periodo_clk;
        
        -- Boton 2 pulsado
        boton2 <= '1';
        wait for periodo_clk;
        boton2 <= '0';
        wait for periodo_clk;
        
        -- Boton 3 pulsado
        boton3 <= '1';
        wait for periodo_clk;
        boton3 <= '0';
        wait for periodo_clk;
        
        -- Boton 4 pulsado
        boton4 <= '1';
        wait for periodo_clk;
        boton4 <= '0';
        wait for periodo_clk;
        
        -- Probamos la prioridad
        boton1 <= '1'; boton2 <= '1'; boton3 <= '1'; boton4 <= '1';
        wait for periodo_clk;
        boton1 <= '0'; boton2 <= '0'; boton3 <= '0'; boton4 <= '0';
        wait for periodo_clk;
        
        assert false
            report "SIMULACION FINALIZADA CORRECTAMENTE"
            severity failure;
    end process;
end Behavioral;
