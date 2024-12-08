library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_buttons_leds_tb is
-- No tiene puertos, ya que es un testbench.
end sync_buttons_leds_tb;

architecture TESTBENCH of sync_buttons_leds_tb is
    -- Señales para conectar con el DUT
    signal CLK : std_logic := '0';
    signal BUTTONS : std_logic_vector(3 downto 0) := "0000";
    signal LEDS : std_logic_vector(3 downto 0);

    -- Período del reloj
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instancia del DUT (Device Under Test)
    DUT: entity work.sync_buttons_leds
        port map (
            CLK => CLK,
            BUTTONS => BUTTONS,
            LEDS => LEDS
        );

    -- Generador del reloj
    CLK_PROCESS: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Generación de estímulos
    STIMULUS_PROCESS: process
    begin
        -- Inicialización
        BUTTONS <= "0000";
        wait for 20 ns;

        -- Simulación de pulsaciones en los botones
        BUTTONS <= "1000"; -- Pulsa el primer botón
        wait for 30 ns;
        BUTTONS <= "0100"; -- Pulsa el segundo botón
        wait for 40 ns;
        BUTTONS <= "0010"; -- Pulsa el tercer botón
        wait for 50 ns;
        BUTTONS <= "0001"; -- Pulsa el cuarto botón
        wait for 60 ns;
        BUTTONS <= "0000"; -- Suelta todos los botones
        wait for 100 ns;

        -- Finalización de la simulación
        assert false report "Fin de la simulación" severity note;
        wait;
    end process;

end TESTBENCH;
