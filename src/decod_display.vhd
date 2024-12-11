library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidad del decodificador
entity decod_display is
    Port (
        nivel_actual    : in integer; -- Nivel actual (3 bits)
        CLK             : in STD_LOGIC; -- Señal de reloj
        display         : out STD_LOGIC_VECTOR(6 downto 0); -- Salida para el display de 7 segmentos
        enable_display  : out STD_LOGIC -- Habilita la cifra del display
    );
end decod_display;

architecture behavioral of decod_display is
begin
    enable_display <= '0'; -- Habilitar la cifra del display
    process (CLK)
    begin
        if rising_edge(CLK) then
            case nivel_actual is
                -- Mapear el nivel actual al patrón del display
                when 0 => -- Nivel 0
                    display <= "0000001"; -- Número 0
                when 1 => -- Nivel 1
                    display <= "0000110"; -- Número 1
                when 2 => -- Nivel 2
                    display <= "1011011"; -- Número 2
                when 3 => -- Nivel 3
                    display <= "1001111"; -- Número 3
                when 4 => -- Nivel 4
                    display <= "1100110"; -- Número 4
                when 5 => -- Nivel 5
                    display <= "1101101"; -- Número 5
                when others =>
                    display <= "0000001"; -- Default: Número 0
            end case;
        end if;
    end process;
end behavioral;