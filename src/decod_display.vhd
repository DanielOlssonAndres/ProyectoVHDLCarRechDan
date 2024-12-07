library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidad del decodificador
entity decodificador_display is
    Port (
        nivel_actual : in STD_LOGIC_VECTOR(2 downto 0); -- Nivel actual (3 bits)
        CLK : in STD_LOGIC;                            -- Señal de reloj
        display : out STD_LOGIC_VECTOR(6 downto 0)     -- Salida para el display de 7 segmentos
    );
end decodificador_display;

architecture behavioral of decodificador_display is
begin
    process (nivel_actual)
    begin
        case nivel_actual is
            -- Mapear el nivel actual al patrón del display
            when "001" => -- Nivel 1
                display <= "0000110"; -- Número 1
            when "010" => -- Nivel 2
                display <= "1011011"; -- Número 2
            when "011" => -- Nivel 3
                display <= "1001111"; -- Número 3
            when "100" => -- Nivel 4
                display <= "1100110"; -- Número 4
            when "101" => -- Nivel 5
                display <= "1101101"; -- Número 5
            when others =>
                display <= "0000001"; -- Default: Número 0
        end case;
    end process;
end behavioral;