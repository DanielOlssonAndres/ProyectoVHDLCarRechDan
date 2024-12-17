library ieee;
use ieee.std_logic_1164.ALL;

entity controlador_nivel is
    Port ( 
        exito : in STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
        error : in STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
        reset : in STD_LOGIC;         -- Señal para reiniciar el juego (activo bajo)
        CLK : in STD_LOGIC;           -- Señal de reloj
        enable : in std_logic;        -- Señal para habilitar el funcionamiento
        
        nivel_actual : out std_logic_vector(0 to 2)    -- Indica el nivel actual (3 bits para 5 niveles)
    );
end controlador_nivel;

architecture Behavioral of controlador_nivel is
    -- Definición de los estados
    type state_type is (ESTADO_0, ESTADO_1, ESTADO_2, ESTADO_3, ESTADO_4, ESTADO_5);
    signal estado_actual : state_type := ESTADO_0;
    signal estado_siguiente : state_type := ESTADO_0;

begin

    -- Proceso secuencial: controla los cambios de estado y actualiza las señales previas
    pr1: process (CLK, reset)
    begin
        if reset = '0' then
            estado_actual <= ESTADO_0; -- Reiniciar al primer estado
        elsif rising_edge(CLK) then
            if enable = '1' then
                estado_actual <= estado_siguiente; -- Actualizar al siguiente estado
            end if;
        end if;
    end process;

    -- Proceso combinacional: define la lógica de transición de estados
    pr2: process (estado_actual, exito, error)
    begin
        estado_siguiente <= estado_actual; -- Asignación por defecto
        case estado_actual is
            when ESTADO_0 =>
                if exito = '1' then
                    estado_siguiente <= ESTADO_1;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                end if;
            when ESTADO_1 =>
                if exito = '1' then
                    estado_siguiente <= ESTADO_2;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                end if;
            when ESTADO_2 =>
                if exito = '1' then
                    estado_siguiente <= ESTADO_3;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                end if;
            when ESTADO_3 =>
                if exito = '1' then
                    estado_siguiente <= ESTADO_4;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                end if;
            when ESTADO_4 =>
                if exito = '1' then
                    estado_siguiente <= ESTADO_5;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                end if;
            when ESTADO_5 =>
                if exito = '1' then
                    estado_siguiente <= ESTADO_5;
                elsif error = '1' then
                    estado_siguiente <= ESTADO_0;
                end if;
            when others =>
                estado_siguiente <= ESTADO_0;
        end case;
    end process;

    -- Proceso combinacional: define el nivel actual en base al estado actual
    pr3: process (estado_actual)
    begin
        case estado_actual is
            when ESTADO_0 =>
                nivel_actual <= "000";
            when ESTADO_1 =>
                nivel_actual <= "001";
            when ESTADO_2 =>
                nivel_actual <= "010";
            when ESTADO_3 =>
                nivel_actual <= "011";
            when ESTADO_4 =>
                nivel_actual <= "100";
            when ESTADO_5 =>
                nivel_actual <= "101";
            when others =>
                nivel_actual <= "000";
        end case;
    end process;

end Behavioral;