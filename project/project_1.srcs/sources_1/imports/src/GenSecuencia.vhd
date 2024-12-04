library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity GenSecuencia is
    port(
        -- Entradas
        niv_actual        : in integer; -- Indica en que nivel nos encontramos 
        bot_accion        : in std_logic; -- Evento de inicio de generador
        s_enable          : in std_logic; -- Si = 0, no se generan secuencias
        -- Salidas
        sec_generada      : out vec_integrer(0 to 14) -- Secuencia generada
    );
end GenSecuencia;

architecture BEHAVIORAL of GenSecuencia is

    -- Tabla de secuencias para cada nivel
    constant semilla0 : vec_integrer(0 to 14) := (2, 3, 1, 3, others => 0);
    constant semilla1 : vec_integrer(0 to 14) := (1, 1, 4, 2, 3, 1, others => 0);
    constant semilla2 : vec_integrer(0 to 14) := (2, 3, 4, 1, 1, 4, 2, 3, others => 0);
    constant semilla3 : vec_integrer(0 to 14) := (2, 4, 1, 2, 3, 2, 3, 4, 1, 2, others => 0);
    constant semilla4 : vec_integrer(0 to 14) := (1, 1, 1, 3, 2, 4, 4, 2, 2, 3, 1, 2, others => 0);
    constant semilla5 : vec_integrer(0 to 14) := (3, 3, 2, 4, 1, 3, 2, 4, 2, 3, 1, 1, 2, 3, 0);

    signal sec_generada_s : vec_integrer(0 to 14) := (others => 0);

begin 

    count: process(bot_accion)
    begin
        if (rising_edge(bot_accion) and (s_enable = '1')) then
            case niv_actual is
                when 0 => sec_generada_s <= semilla0;
                when 1 => sec_generada_s <= semilla1;
                when 2 => sec_generada_s <= semilla2;
                when 3 => sec_generada_s <= semilla3;
                when 4 => sec_generada_s <= semilla4;
                when 5 => sec_generada_s <= semilla5;
                when others => sec_generada_s <= (others => 0);
            end case;
        end if;
    end process;
    sec_generada <= sec_generada_s;
end BEHAVIORAL;
