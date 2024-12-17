library ieee;
use ieee.std_logic_1164.ALL;

entity decod_display is
    Port (
        nivel_actual    : in std_logic_vector(0 to 2); -- Nivel actual (3 bits)
        display         : out std_logic_vector(6 downto 0); -- Salida para el display de 7 segmentos
        enable_display  : out std_logic_vector (7 downto 0) -- Habilita la cifra del display
    );
end decod_display;

architecture Dataflow of decod_display is
begin
    -- Habilitar siempre la cifra del display
    enable_display <= "11111110";

    -- Lógica combinacional para mapear el nivel actual al patrón del display
    display <= "0000001" when nivel_actual = "000" else -- Número 0
               "1001111" when nivel_actual = "001" else -- Número 1
               "0010010" when nivel_actual = "010" else -- Número 2
               "0000110" when nivel_actual = "011" else -- Número 3
               "1001100" when nivel_actual = "100" else -- Número 4
               "0100100" when nivel_actual = "101" else -- Número 5
               "0000001"; -- Default: Número 0
end Dataflow;
