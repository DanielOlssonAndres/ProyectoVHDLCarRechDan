library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlador_nivel is
    Port ( 
        exito : in STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
        error : in STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
        reset : in STD_LOGIC;         -- Señal para reiniciar el juego
        CLK : in STD_LOGIC;           -- Señal de reloj
        nivel_actual : out integer -- Indica el nivel actual (3 bits para 5 niveles)
    );
end controlador_nivel;

architecture behavioral of controlador_nivel is
    -- Definición de los estados
    type state_type is (ESTADO_0, ESTADO_1, ESTADO_2, ESTADO_3, ESTADO_4, ESTADO_5);
    signal estado_actual, estado_siguiente : state_type;
begin

    -- Proceso secuencial: controla los cambios de estado
    process (CLK, reset)
    begin
        if reset = '0' then
            estado_actual <= ESTADO_0; -- Reiniciar al primer estado
        elsif rising_edge(CLK) then
            estado_actual <= estado_siguiente; -- Actualizar al siguiente estado
        end if;
    end process;

    -- Proceso combinacional: define la lógica de transición de estados
    process (estado_actual, exito, error)
    begin
        -- Valores inicializados
        nivel_actual <= 0;

        case estado_actual is
            when ESTADO_0 =>
                nivel_actual <= 0;
                if exito = '1' then
                    estado_siguiente <= ESTADO_1;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                else
                    estado_siguiente <= ESTADO_0;
                end if;
                
            when ESTADO_1 =>
                nivel_actual <= 1;
                if exito = '1' then
                    estado_siguiente <= ESTADO_2;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                else
                    estado_siguiente <= ESTADO_1;
                end if;

            when ESTADO_2 =>
                nivel_actual <= 2;
                if exito = '1' then
                    estado_siguiente <= ESTADO_3;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                else
                    estado_siguiente <= ESTADO_2;
                end if;

            when ESTADO_3 =>
                nivel_actual <= 3;
                if exito = '1' then
                    estado_siguiente <= ESTADO_4;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                else
                    estado_siguiente <= ESTADO_3;
                end if;

            when ESTADO_4 =>
                nivel_actual <= 4;
                if exito = '1' then
                    estado_siguiente <= ESTADO_5;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                else
                    estado_siguiente <= ESTADO_4;
                end if;

            when ESTADO_5 =>
                nivel_actual <= 5;
                if error = '1' then
                    estado_siguiente <= ESTADO_0;
                else
                    estado_siguiente <= ESTADO_5; -- Último nivel, no avanza más
                end if;

            when others =>
                estado_siguiente <= ESTADO_0;
        end case;
    end process;

end behavioral;
