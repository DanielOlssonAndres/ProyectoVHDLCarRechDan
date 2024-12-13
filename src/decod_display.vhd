library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidad del decodificador
entity decod_display is
    Port (
        nivel_actual    : in std_logic_vector(0 to 2); -- Nivel actual (3 bits)
        CLK             : in STD_LOGIC; -- Señal de reloj
        display         : out STD_LOGIC_VECTOR(6 downto 0); -- Salida para el display de 7 segmentos
        enable_display  : out STD_LOGIC -- Habilita la cifra del display
    );
end decod_display;

architecture behavioral of decod_display is
    
    signal display_s : STD_LOGIC_VECTOR(6 downto 0) := "0000001";
    
begin
    enable_display <= '0'; -- Habilitar la cifra del display
    process (CLK)
    begin
        if rising_edge(CLK) then
            case nivel_actual is
                -- Mapear el nivel actual al patrón del display_s
                when "000" => -- Nivel 0
                    display_s <= "0000001"; -- Número 0
                when "001" => -- Nivel 1
                    display_s <= "0000110"; -- Número 1
                when "010" => -- Nivel 2
                    display_s <= "1011011"; -- Número 2
                when "011" => -- Nivel 3
                    display_s <= "1001111"; -- Número 3
                when "100" => -- Nivel 4
                    display_s <= "1100110"; -- Número 4
                when "101" => -- Nivel 5
                    display_s <= "1101101"; -- Número 5
                when others =>
                    display_s <= "0000001"; -- Default: Número 0
            end case;
        end if;
    end process;
    
    display <= display_s;
    
end behavioral;