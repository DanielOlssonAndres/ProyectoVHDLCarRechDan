library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--library work;
--use work.newtype_package.all;
--library xil_defaultlib;
--use xil_defaultlib.newtype_package.all;

entity GenSecuencia is
    port(
        -- Entradas
        niv_actual        : in std_logic_vector(0 to 2); -- Indica en que nivel nos encontramos 
        bot_accion        : in std_logic; -- Evento de inicio de generador
        s_enable          : in std_logic; -- Si = 0, no se generan secuencias
        CLK               : in std_logic; -- Señal de reloj
        -- Salidas
        sec_generada      : out std_logic_vector(0 to 44); -- Secuencia generada
        sec_lista         : out std_logic -- Indica que la nueva secuencia está lista en la salida
    );
end GenSecuencia;

architecture BEHAVIORAL of GenSecuencia is

    -- Tabla de secuencias para cada nivel
    constant semilla0 : std_logic_vector(0 to 44) := ("010" & "011" & "001" & "011" & "000000000000000000000000000000000");
    constant semilla1 : std_logic_vector(0 to 44) := ("001" & "011" & "100" & "010" & "011" & "001" & "000000000000000000000000000");
    constant semilla2 : std_logic_vector(0 to 44) := ("010" & "011" & "100" & "001" & "010" & "100" & "010" & "011" & "000000000000000000000");
    constant semilla3 : std_logic_vector(0 to 44) := ("010" & "100" & "001" & "010" & "011" & "010" & "011" & "100" & "001" & "010" & "000000000000000");
    constant semilla4 : std_logic_vector(0 to 44) := ("001" & "100" & "001" & "011" & "010" & "100" & "011" & "010" & "100" & "011" & "001" & "010" & "000000000");
    constant semilla5 : std_logic_vector(0 to 44) := ("011" & "001" & "010" & "100" & "001" & "011" & "010" & "100" & "010" & "011" & "001" & "100" & "010" & "011" & "000");

    signal sec_generada_s : std_logic_vector(0 to 44) := ("000000000000000000000000000000000000000000000");
    signal sec_lista_s    : std_logic := '0'; -- Señal interna para gestionar sec_lista

begin 
    
    count: process(CLK)
    begin
        if rising_edge(CLK) then
            if (bot_accion = '1' and s_enable = '1') then
                case niv_actual is
                    when "000" => sec_generada_s <= semilla0;
                    when "001" => sec_generada_s <= semilla1;
                    when "010" => sec_generada_s <= semilla2;
                    when "011" => sec_generada_s <= semilla3;
                    when "100" => sec_generada_s <= semilla4;
                    when "101" => sec_generada_s <= semilla5;
                    when others => sec_generada_s <= ("000000000000000000000000000000000000000000000");
                end case;
                sec_lista_s <= '1';
            else
                sec_lista_s <= '0';
            end if;
        end if;
    end process;

    -- Asignaciones a las salidas
    sec_lista <= sec_lista_s;
    sec_generada <= sec_generada_s;

end BEHAVIORAL;

