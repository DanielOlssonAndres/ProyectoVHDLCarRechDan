library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity CodBotones is
    port(
        -- Entradas
        boton          : in std_logic_vector(1 to 4); -- Boton 1
        -- Salidas
        boton_pulsado   : out std_logic_vector(0 to 2) -- El numero equivale al boton que se ha pulsado
    );
end CodBotones;

architecture Behavioral of CodBotones is

    signal salida : std_logic_vector(0 to 2) := (others => '0'); -- Registro del output de la entidad

begin
    process (boton)
    begin
        if boton(1) = '1' then
            salida <= "001"; -- Boton 1 pulsado
        elsif boton(2) = '1' then
            salida <= "010"; -- Boton 2 pulsado
        elsif boton(3) = '1' then
            salida <= "011"; -- Boton 3 pulsado
        elsif boton(4) = '1' then
            salida <= "100"; -- Boton 4 pulsado
        else
            salida <= "000"; -- Ningun boton pulsado
        end if;
    end process;
    
    boton_pulsado <= salida; -- Guardo el registro en la salida
    
end Behavioral;
