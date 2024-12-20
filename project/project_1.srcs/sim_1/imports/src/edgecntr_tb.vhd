library ieee;
use ieee.std_logic_1164.ALL;

entity edgecntr_tb is
end edgecntr_tb;

architecture Behavioral of edgecntr_tb is
    component edgecntr is
        port (
            CLK : in std_logic;
            SYNC_IN : in std_logic;
            EDGE : out std_logic
        );
    end component;

    signal CLK : std_logic := '0';
    signal SYNC_IN : std_logic := '0';
    signal EDGE : std_logic;

    constant CLK_PERIOD : time := 10 ns;
begin
    uut: edgecntr
        port map (
            CLK => CLK,
            SYNC_IN => SYNC_IN,
            EDGE => EDGE
        );

    -- Generador de reloj
    clk_gen: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Estímulos
    test: process
    begin
        -- Espera inicial
        wait for CLK_PERIOD;

        -- Caso 1: No hay cambio en SYNC_IN (EDGE debe permanecer en '0')
        SYNC_IN <= '0';
        wait for 3 * CLK_PERIOD;

        -- Caso 2: Flanco de subida en SYNC_IN (EDGE debe ser '1' por un ciclo)
        SYNC_IN <= '1';
        wait for 3 * CLK_PERIOD;

        -- Caso 3: Flanco de bajada en SYNC_IN (EDGE debe permanecer en '0')
        SYNC_IN <= '0';
        wait for 3 * CLK_PERIOD;

        -- Caso 4: Cambio rápido en SYNC_IN
        SYNC_IN <= '1';
        wait for CLK_PERIOD;
        SYNC_IN <= '0';
        wait for CLK_PERIOD;
        SYNC_IN <= '1';
        wait for CLK_PERIOD;

        -- Fin de simulación
        wait;
    end process;
end Behavioral;