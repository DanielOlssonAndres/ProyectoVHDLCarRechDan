library ieee;
use ieee.std_logic_1164.ALL;

entity Controlador_Juego_tb is
end Controlador_Juego_tb;

architecture Behavioral of Controlador_Juego_tb is
    component Control_Juego is
    port(
        CLK             : in std_logic; -- Señal de reloj
        fin_comparacion : in std_logic; -- de CompSecuencia
        fin_secuencia   : in std_logic; -- de Controlador_de_Sec
        accion          : in std_logic; -- botón de FPGA
        RESET           : in std_logic; -- botón asíncrono de FPGA
        
        enable_CN       : out std_logic; -- enable de controlador_nivel
        enable_CompS    : out std_logic; -- enable de CompSecuencia
        enable_ContS    : out std_logic; -- enable de Controlador_de_Sec
        RESET_CN        : out std_logic  -- RESET de controlador_nivel
    );
    end component;
    signal CLK             : std_logic := '0';
    signal fin_comparacion : std_logic := '0';
    signal fin_secuencia   : std_logic := '0';
    signal accion          : std_logic := '0';
    signal RESET           : std_logic := '1'; -- RESET inicialmente desactivado

    signal enable_CN       : std_logic;
    signal enable_CompS    : std_logic;
    signal enable_ContS    : std_logic;
    signal RESET_CN        : std_logic;

    -- CLK
    constant CLK_PERIOD : time := 10 ns;
begin   
    uut: Control_Juego
        port map(
            CLK             => CLK,
            fin_comparacion => fin_comparacion,
            fin_secuencia   => fin_secuencia,
            accion          => accion,
            RESET           => RESET,

            enable_CN       => enable_CN,
            enable_CompS    => enable_CompS,
            enable_ContS    => enable_ContS,
            RESET_CN        => RESET_CN
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
    stim_proc: process
    begin
        -- Espera inicial
        wait for 20 ns;

        -- Activar RESET y observar comportamiento
        RESET <= '0'; -- Activar RESET
        wait for 20 ns;
        RESET <= '1'; -- Desactivar RESET
        wait for 20 ns;

        -- Caso 1: Probar transición de NIVEL a SECUENCIA
        accion <= '1'; -- Presionar botón de acción
        wait for CLK_PERIOD;
        accion <= '0'; -- Soltar botón
        wait for 30 ns;

        -- Caso 2: Probar transición de SECUENCIA a COMPARAR
        fin_secuencia <= '1'; -- Señal de finalización de secuencia
        wait for CLK_PERIOD;
        fin_secuencia <= '0'; -- Finalización desactivada
        wait for 30 ns;

        -- Caso 3: Probar transición de COMPARAR a NIVEL
        fin_comparacion <= '1'; -- Señal de finalización de comparación
        wait for CLK_PERIOD;
        fin_comparacion <= '0'; -- Finalización desactivada
        wait for 30 ns;

        -- Caso 4: Probar comportamiento sin cambios
        wait for 50 ns;

        -- Fin de la simulación
        assert false report "Fin de la simulación" severity note;
        wait;
    end process;

end Behavioral;