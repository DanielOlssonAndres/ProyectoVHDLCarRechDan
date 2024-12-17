library ieee;
use ieee.std_logic_1164.ALL;

entity DivisorReloj_tb is
end DivisorReloj_tb;

architecture Behavioral of DivisorReloj_tb is
    
    component DivisorReloj is
        generic (
            FREC_SALIDA : integer := 1_000_000 -- Frecuencia de salida en Hz
        );
        port (
            -- Entradas
            clk_in   : in  std_logic; -- Reloj de entrada de la placa: 100 MHz
            -- Salidas
            clk_out  : out std_logic  -- Reloj de salida: 1 MHz
        );
    end component;
    
    signal clk_in   : std_logic;
    signal clk_out  : std_logic;
    
    constant periodo_clk : time := 10 ns; -- Perido de 10ns = 100MHz
    
begin
    uut: DivisorReloj
        port map(
            clk_in => clk_in,
            clk_out => clk_out
        );
    
    -- Proceso para generar el reloj de entrada 
    clk_gen: process
    begin
        while true loop
            clk_in <= '0';
            wait for periodo_clk / 2;
            clk_in <= '1';
            wait for periodo_clk / 2;
        end loop;
    end process;
    
end Behavioral;
