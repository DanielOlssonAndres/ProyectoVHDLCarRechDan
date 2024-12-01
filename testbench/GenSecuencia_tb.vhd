library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity GenSecuencia_tb is
end GenSecuencia_tb;

architecture behavior of GenSecuencia_tb is

    -- Component declaration
    component GenSecuencia is
        generic(
            MAX_SEC    : integer := 6;
            DIFICULTAD : integer := 1
        );
        port(
            niv_actual        : in integer;
            bot_accion        : in std_logic;
            fin_comparacion   : in std_logic;
            CLK               : in std_logic;
            sec_generada      : out vec_integrer(MAX_SEC - 1 downto 0);
            fin_sec           : out std_logic
        );
    end component;

    -- Signals for the testbench
    signal niv_actual        : integer := 2;   -- Nivel de dificultad
    signal bot_accion        : std_logic := '0'; -- Inicia generador de secuencias
    signal fin_comparacion   : std_logic := '1'; -- Secuencias habilitadas
    signal CLK               : std_logic := '0'; -- Señal de reloj
    signal sec_generada      : vec_integrer(5 downto 0); -- Secuencia generada
    signal fin_sec           : std_logic; -- Indica fin de secuencia generada

    -- Clock generation
    constant CLK_PERIOD : time := 10 ns; -- Período del reloj

begin

    -- Instancia del módulo a probar
    uut: GenSecuencia
        generic map (
            MAX_SEC    => 6,
            DIFICULTAD => 1
        )
        port map (
            niv_actual        => niv_actual,
            bot_accion        => bot_accion,
            fin_comparacion   => fin_comparacion,
            CLK               => CLK,
            sec_generada      => sec_generada,
            fin_sec           => fin_sec
        );

    -- Generación del reloj
    CLK_PROCESS: process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Estímulos del testbench
    stimulus: process
    begin
        -- Inicialización
        wait for 20 ns;

        -- Comenzamos el proceso de generación de secuencia
        bot_accion <= '1';   -- Iniciar generación
        wait for CLK_PERIOD * 2;

        -- Establecemos el nivel de dificultad y la secuencia se debe generar
        niv_actual <= 3; -- Cambiamos el nivel de dificultad

        -- Esperamos para ver si la secuencia se genera correctamente
        wait for CLK_PERIOD * 10;

        -- Detenemos la generación de la secuencia
        bot_accion <= '0'; -- Detener generación
        wait for CLK_PERIOD * 5;

        -- Finalizamos la simulación
        assert (fin_sec = '1') report "Error: La señal 'fin_sec' no se ha activado correctamente" severity error;
        assert (sec_generada = (2, 3, 1, 3, 4, 2)) report "Error: La secuencia generada no es correcta" severity error;

        -- Finalizamos la simulación
        wait;
    end process;

end behavior;
