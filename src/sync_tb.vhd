library ieee;
use ieee.std_logic_1164.ALL;

entity sync_tb is
end sync_tb;

architecture Behavioral of sync_tb is
    
    component sync is
        port (
        CLK : in std_logic;
        ASYNC_IN : in std_logic;
        SYNC_OUT : out std_logic
        );
    end component;
    
    signal CLK : std_logic := '0';
    signal ASYNC_IN : std_logic := '0';
    signal SYNC_OUT : std_logic;

    -- Período del reloj
    constant CLK_PERIOD : time := 10 ns;

begin
    uut: sync
        port map (
            CLK => CLK,
            ASYNC_IN => ASYNC_IN,
            SYNC_OUT => SYNC_OUT
        );

    -- Generador del reloj
    clk_gen: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Estímulos para ASYNC_IN
test: process
    begin
        -- Tiempo inicial (sin cambios)
        wait for 20 ns;
        ASYNC_IN <= '1'; -- Pulso alto
        wait for 30 ns;
        ASYNC_IN <= '0'; -- Regresa a bajo
        wait for 40 ns;
        ASYNC_IN <= '1'; -- Otro pulso alto
        wait for 50 ns;
        ASYNC_IN <= '0'; -- Regresa a bajo

        -- Fin de la simulación
        wait for 100 ns;
        assert false report "Fin de la simulación" severity note;
        wait; -- Detiene la simulación
    end process;

end Behavioral;
