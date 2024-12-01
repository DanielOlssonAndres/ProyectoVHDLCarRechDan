library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debounce_Sync_tb is
end Debounce_Sync_tb;

architecture Behavioral of Debounce_Sync_tb is

    -- Component declaration
    component Debounce_Sync
        Port (
            CLK         : in std_logic;
            ASYNC_IN    : in std_logic;
            SYNC_OUT    : out std_logic
        );
    end component;

    -- Señales internas del testbench
    signal CLK       : std_logic := '0'; -- Señal de reloj
    signal ASYNC_IN  : std_logic := '0'; -- Señal de botón externa con rebotes
    signal SYNC_OUT  : std_logic;        -- Señal salida sincronizada y sin rebotes

    -- Constantes para el reloj y la simulación
    constant CLK_PERIOD : time := 10 ns;  -- Periodo del reloj
    constant SIM_END    : time := 5 ms;   -- Tiempo de finalización de la simulación

begin

    -- Instancia del componente bajo prueba (UUT)
    uut: Debounce_Sync
        Port map (
            CLK       => CLK,
            ASYNC_IN  => ASYNC_IN,
            SYNC_OUT  => SYNC_OUT
        );

    -- Generación de la señal de reloj
    CLK_PROCESS: process
    begin
        while now < SIM_END loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Generación de la señal de botón con rebotes
    STIMULUS_PROCESS: process
    begin
        -- Inicio estable en '0'
        ASYNC_IN <= '0';
        wait for 200 ns;

        -- Rebotes al presionar el botón
        ASYNC_IN <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns;
        wait for 500 ns;

        -- Estabilidad en '1'
        ASYNC_IN <= '1';
        wait for 1 ms;

        -- Rebotes al soltar el botón
        ASYNC_IN <= '0', '1' after 30 ns, '0' after 50 ns, '1' after 70 ns, '0' after 90 ns;
        wait for 500 ns;

        -- Estabilidad en '0'
        ASYNC_IN <= '0';
        wait for 1 ms;

        -- Fin de la simulación
        report "Simulación completada correctamente" severity note;
        wait;
    end process;

    -- Monitorización de la salida
    MONITOR_PROCESS: process
    begin
        wait until SYNC_OUT = '1';
        report "SYNC_OUT estabilizado en '1'" severity note;

        wait until SYNC_OUT = '0';
        report "SYNC_OUT estabilizado en '0'" severity note;

        wait;
    end process;

end Behavioral;


