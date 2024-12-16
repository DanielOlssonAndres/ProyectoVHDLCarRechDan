library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DivisorReloj is
    generic (
        FREC_SALIDA : integer := 1_000_000 -- Frecuencia de salida en Hz
    );
    port (
        -- Entradas
        clk_in   : in  std_logic; -- Reloj de entrada de la placa: 100 MHz
        -- Salidas
        clk_out  : out std_logic  -- Reloj de salida: 1 MHz
    );
end DivisorReloj;

architecture Behavioral of DivisorReloj is
    constant divisor    : integer := 100_000_000 / (2 * FREC_SALIDA); -- El divisor de la frecuencia de entrada entre la de salida
    signal contador     : integer range 0 to divisor := 0; -- El contador para dividir el reloj
    signal clk_temp     : std_logic := '0'; -- Registro de la salida
begin
    process(clk_in)
    begin

        if rising_edge(clk_in) then
            if contador = divisor - 1 then
                contador <= 0;
                clk_temp <= not clk_temp; -- Cambia el estado del reloj de salida
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;
    
    clk_out <= clk_temp;
    
end Behavioral;
