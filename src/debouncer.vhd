library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Debouncer is
    Port (
        BUTTON_IN : in std_logic; -- Entrada con rebotes
        CLK       : in std_logic; -- Señal de reloj
        BUTTON_OUT : out std_logic -- Salida filtrada
    );
end Debouncer;

architecture Behavioral of Debouncer is
    constant DEBOUNCE_TIME : integer := 10; -- Configurable: ciclos necesarios para estabilidad
    signal stable_button : std_logic := '0'; -- Valor estable actual
    signal counter : integer := 0; -- Contador de estabilidad
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            -- Si el valor de entrada cambia
            if BUTTON_IN /= stable_button then
                counter <= counter + 1; -- Incrementar contador
                if counter = DEBOUNCE_TIME then
                    stable_button <= BUTTON_IN; -- Aceptar el cambio si es estable
                    counter <= 0; -- Reiniciar el contador
                end if;
            else
                counter <= 0; -- Reiniciar contador si el valor no cambia
            end if;
        end if;
    end process;

    BUTTON_OUT <= stable_button; -- Asignar el valor estable a la salida
end Behavioral;
