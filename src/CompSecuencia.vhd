library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CompSecuencia is
    port(
        -- Entradas
        CLK               : in std_logic;        -- Señal de reloj
        enable            : in std_logic;        -- Habilita la comparación
        sec_generada      : in std_logic_vector(0 to 44); -- Secuencia generada por GenSecuencia
        boton_pulsado     : in std_logic_vector(0 to 2); -- Indica el botón que se ha pulsado
        -- Salidas
        exito             : out std_logic;       -- Indica si el usuario ha acertado
        error             : out std_logic;       -- Indica si el usuario ha fallado
        fin_comparacion   : out std_logic        -- Indica el fin de la comparación
    );
end CompSecuencia;

architecture Behavioral of CompSecuencia is

    signal indice : integer := 0; -- Índice actual de comparación
    signal exito_s : std_logic := '0';
    signal error_s : std_logic := '0';
    signal fin_comparacion_s : std_logic := '0';

    signal boton_anterior : std_logic_vector(0 to 2) := "000";

    -- Constante para secuencia de finalización
    constant FIN_SECUENCIA : std_logic_vector(0 to 2) := "000";

begin

    mainp: process(CLK)
    begin
        if rising_edge(CLK) then
            if enable = '0' then
                -- Reiniciar las señales internas
                exito_s <= '0';
                error_s <= '0';
                fin_comparacion_s <= '0';
                indice <= 0;
                boton_anterior <= "000";
            else
                -- Detectar fin de secuencia
                if sec_generada(indice) & sec_generada(indice + 1) & sec_generada(indice + 2) = FIN_SECUENCIA then
                    fin_comparacion_s <= '1';
                    exito_s <= '1';
                -- Detectar pulsación de botón y evitar repeticiones
                elsif (boton_pulsado /= "000") and (boton_pulsado /= boton_anterior) then
                    if (boton_pulsado(0) = sec_generada(indice)) and 
                       (boton_pulsado(1) = sec_generada(indice + 1)) and 
                       (boton_pulsado(2) = sec_generada(indice + 2)) then
                        -- Avanzar al siguiente elemento de la secuencia
                        indice <= indice + 3;
                        boton_anterior <= boton_pulsado;
                    else
                        -- Error: botón incorrecto
                        error_s <= '1';
                        fin_comparacion_s <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Asignar señales internas a las salidas
    exito <= exito_s;
    error <= error_s;
    fin_comparacion <= fin_comparacion_s;

end Behavioral;