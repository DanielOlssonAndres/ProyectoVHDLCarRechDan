library ieee;
use ieee.std_logic_1164.ALL;

entity temporizador_tb is
end temporizador_tb;

architecture Behavioral of temporizador_tb is

    component temporizador
        generic (
            CLK_FREQ : integer := 50_000_000;  -- Frecuencia del reloj en Hz
            TIEMPO   : integer := 1           -- Tiempo a contar en segundos
        );
        port (
            CLK             : in  std_logic;
            iniciar_cuenta  : in  std_logic;
            fin_tiempo      : out std_logic
        );
    end component;

    -- Señales para el testbench
    signal CLK            : std_logic := '0';
    signal iniciar_cuenta : std_logic := '0';
    signal fin_tiempo     : std_logic;

begin
    -- Unit Under Test
    uut: temporizador
        generic map (
            CLK_FREQ => 50_000_000,  
            TIEMPO   => 1            
        )
        port map (
            CLK           => CLK,
            iniciar_cuenta=> iniciar_cuenta,
            fin_tiempo    => fin_tiempo
        );

    -- Generador de reloj
    clk_gen: process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;

    -- Proceso de prueba
    test: process
    begin
        wait for 50 ns;            
        iniciar_cuenta <= '1';       
        wait for 100 ns;
        iniciar_cuenta <= '0';       
        wait for 5000 ns;            

        assert false
            report "SIMULACION COMPLETADA CORRECTAMENTE" 
            severity FAILURE;

    end process;
end Behavioral;
