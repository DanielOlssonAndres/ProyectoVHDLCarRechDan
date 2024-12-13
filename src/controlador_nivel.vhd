library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlador_nivel is
    Port ( 
        exito : in STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
        error : in STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
        reset : in STD_LOGIC;         -- Señal para reiniciar el juego (activo bajo)
        CLK : in STD_LOGIC;           -- Señal de reloj
        nivel_actual : out std_logic_vector(0 to 2)    -- Indica el nivel actual (3 bits para 5 niveles)
    );
end controlador_nivel;

architecture behavioral of controlador_nivel is
    -- Definición de los estados
    type state_type is (ESTADO_0, ESTADO_1, ESTADO_2, ESTADO_3, ESTADO_4, ESTADO_5);
    signal estado_actual, estado_siguiente : state_type := ESTADO_0; -- Inicialización a ESTADO_0

    -- Señales para detectar flancos
    signal exito_prev, error_prev : STD_LOGIC := '0'; -- Inicialización a '0'

begin

    -- Proceso secuencial: controla los cambios de estado y actualiza las señales previas
    process (CLK, reset)
    begin
        if reset = '0' then
            estado_actual <= ESTADO_0; -- Reiniciar al primer estado
            exito_prev <= '0';
            error_prev <= '0';
        elsif rising_edge(CLK) then
            estado_actual <= estado_siguiente; -- Actualizar al siguiente estado
            exito_prev <= exito;               -- Actualizar los valores previos de las señales
            error_prev <= error;
        end if;
    end process;

    -- Proceso combinacional: define la lógica de transición de estados
    process (estado_actual, exito, error, exito_prev, error_prev)
    begin
        -- Inicialización por defecto
        nivel_actual <= "000"; 
        estado_siguiente <= estado_actual; -- Por defecto, el estado siguiente es el actual

        case estado_actual is
            when ESTADO_0 =>
                nivel_actual <= "000";
                if (exito = '1' and exito_prev = '0') then
                    estado_siguiente <= ESTADO_1;
                elsif (error = '1' and error_prev = '0') then
                    estado_siguiente <= ESTADO_0;
                end if;

            when ESTADO_1 =>
                nivel_actual <= "001";
                if (exito = '1' and exito_prev = '0') then
                    estado_siguiente <= ESTADO_2;
                elsif (error = '1' and error_prev = '0') then
                    estado_siguiente <= ESTADO_0;
                end if;

            when ESTADO_2 =>
                nivel_actual <= "010";
                if (exito = '1' and exito_prev = '0') then
                    estado_siguiente <= ESTADO_3;
                elsif (error = '1' and error_prev = '0') then
                    estado_siguiente <= ESTADO_0;
                end if;

            when ESTADO_3 =>
                nivel_actual <= "011";
                if (exito = '1' and exito_prev = '0') then
                    estado_siguiente <= ESTADO_4;
                elsif (error = '1' and error_prev = '0') then
                    estado_siguiente <= ESTADO_0;
                end if;

            when ESTADO_4 =>
                nivel_actual <= "100";
                if (exito = '1' and exito_prev = '0') then
                    estado_siguiente <= ESTADO_5;
                elsif (error = '1' and error_prev = '0') then
                    estado_siguiente <= ESTADO_0;
                end if;

            when ESTADO_5 =>
                nivel_actual <= "101";
                if (error = '1' and error_prev = '0') then
                    estado_siguiente <= ESTADO_0;
                end if;

            when others =>
                estado_siguiente <= ESTADO_0; -- Estado por defecto en caso de error
        end case;
    end process;

end behavioral;
