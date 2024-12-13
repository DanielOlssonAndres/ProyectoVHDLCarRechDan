library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.newtype_package.all;

entity GenSecuencia is
    port(
        -- Entradas
        niv_actual        : in integer; -- Indica en que nivel nos encontramos 
        bot_accion        : in std_logic; -- Evento de inicio de generador
        s_enable          : in std_logic; -- Si = 0, no se generan secuencias
        CLK               : in std_logic; -- Señal de reloj
        -- Salidas
        sec_generada      : out vec_enteros(0 to 14); -- Secuencia generada
        sec_lista         : out std_logic -- Indica que la nueva secuencia está lista en la salida
    );
end GenSecuencia;

architecture BEHAVIORAL of GenSecuencia is

    -- Tabla de secuencias para cada nivel
    constant semilla0 : vec_enteros(0 to 14) := (2, 3, 1, 3, others => 0);
    constant semilla1 : vec_enteros(0 to 14) := (1, 3, 4, 2, 3, 1, others => 0);
    constant semilla2 : vec_enteros(0 to 14) := (2, 3, 4, 1, 2, 4, 2, 3, others => 0);
    constant semilla3 : vec_enteros(0 to 14) := (2, 4, 1, 2, 3, 2, 3, 4, 1, 2, others => 0);
    constant semilla4 : vec_enteros(0 to 14) := (1, 4, 1, 3, 2, 4, 3, 2, 4, 3, 1, 2, others => 0);
    constant semilla5 : vec_enteros(0 to 14) := (3, 1, 2, 4, 1, 3, 2, 4, 2, 3, 1, 4, 2, 3, 0);

    signal sec_generada_s : vec_enteros(0 to 14) := (others => 0);
    signal sec_lista_s    : std_logic := '0'; -- Señal interna para gestionar sec_lista

begin 
    
    count: process(CLK)
    begin
        if rising_edge(CLK) then
            if (bot_accion = '1' and s_enable = '1') then
                case niv_actual is
                    when 0 => sec_generada_s <= semilla0;
                    when 1 => sec_generada_s <= semilla1;
                    when 2 => sec_generada_s <= semilla2;
                    when 3 => sec_generada_s <= semilla3;
                    when 4 => sec_generada_s <= semilla4;
                    when 5 => sec_generada_s <= semilla5;
                    when others => sec_generada_s <= (others => 0);
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

