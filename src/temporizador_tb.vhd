library ieee;
use ieee.std_logic_1164.ALL;

entity temporizador_tb is
end temporizador_tb;

architecture Behavioral of temporizador_tb is

    component temporizador
        generic (
            CLK_FREQ : integer := 100_000_000;  -- Frecuencia del reloj en Hz
            TIEMPO   : integer := 2            -- Tiempo a contar en segundos
        );
        port (
            CLK             : in  std_logic;
            iniciar_cuenta  : in  std_logic;
            fin_tiempo      : out std_logic
        );
    end component;

    signal CLK            : std_logic := '0';
    signal iniciar_cuenta : std_logic := '0';
    signal fin_tiempo     : std_logic;

    constant CLK_PERIOD : time := 10 ns;  -- Período del reloj

begin
    uut: temporizador
        generic map (
            CLK_FREQ => 100_000_000,  -- Frecuencia del reloj
            TIEMPO   => 2             -- Tiempo de cuenta en segundos
        )
        port map (
            CLK           => CLK,
            iniciar_cuenta=> iniciar_cuenta,
            fin_tiempo    => fin_tiempo
        );

    clk_gen: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    test: process
    begin
        -- Esperar un poco antes de iniciar la prueba
        wait for 50 ns;

        -- Iniciar el temporizador
        iniciar_cuenta <= '1';
        wait for 20 * CLK_PERIOD;  -- Esperar durante un tiempo inicial
        iniciar_cuenta <= '0';

        -- Verificar si el temporizador cumple su tiempo de 2 segundos
        wait for 2.1 sec;  -- Tiempo ligeramente mayor que el tiempo esperado
        assert fin_tiempo = '1'
            report "ERROR: El temporizador no indicó el final correctamente"
            severity error;

        -- Probar reinicio
        wait for 20 ns;
        iniciar_cuenta <= '1';
        wait for CLK_PERIOD;
        iniciar_cuenta <= '0';
        wait for 2.1 sec;
        assert fin_tiempo = '1'
            report "ERROR: El temporizador no reinició correctamente"
            severity error;

        wait for 100 ns;
        assert false
            report "SIMULACION COMPLETADA CORRECTAMENTE"
            severity failure;
    end process;

end Behavioral;
