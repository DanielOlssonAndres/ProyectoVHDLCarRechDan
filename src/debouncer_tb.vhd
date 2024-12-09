library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer_tb is
end Debouncer_tb;

architecture Behavioral of Debouncer_tb is
    signal CLK : std_logic := '0';
    signal BUTTON_IN : std_logic := '0'; -- Simula los rebotes de un botón
    signal BUTTON_OUT : std_logic; -- Salida estable después del debounce

    -- Parámetros del reloj
    constant CLK_PERIOD : time := 10 ns;

begin
    UUT: entity work.Debouncer
        port map (
            CLK => CLK,
            BUTTON_IN => BUTTON_IN,
            BUTTON_OUT => BUTTON_OUT
        );

    -- Generador de la señal de reloj
    CLK_PROCESS: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Generación de estímulos para probar el debouncer
    STIMULUS_PROCESS: process
    begin
        -- Inicialización
        BUTTON_IN <= '0';
        wait for 50 ns;

        -- Simular rebotes (transiciones rápidas)
        BUTTON_IN <= '1'; wait for 15 ns;
        BUTTON_IN <= '0'; wait for 15 ns;
        BUTTON_IN <= '1'; wait for 15 ns;
        BUTTON_IN <= '0'; wait for 15 ns;

        -- Simular una pulsación estable (suficiente para superar el DEBOUNCE_TIME)
        BUTTON_IN <= '1'; wait for 200 ns;

        -- Soltar el botón (con rebotes)
        BUTTON_IN <= '0'; wait for 15 ns;
        BUTTON_IN <= '1'; wait for 15 ns;
        BUTTON_IN <= '0'; wait for 200 ns;

        -- Finalización de la simulación
        wait for 100 ns;
        assert false report "Fin de la simulación" severity note;
        wait;
    end process;

end Behavioral;
