library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlador_nivel_tb is
-- Testbench no tiene puertos
end controlador_nivel_tb;

architecture behavioral of controlador_nivel_tb is

    -- Componentes internos
    component controlador_nivel is
        Port ( 
            exito : in STD_LOGIC;
            error : in STD_LOGIC;
            reset : in STD_LOGIC;
            CLK : in STD_LOGIC;
            nivel_actual : out STD_LOGIC_VECTOR (2 downto 0);
            avance_nivel : out STD_LOGIC;
            reinicio_nivel : out STD_LOGIC
        );
    end component;

    -- Señales internas para conectar al DUT (Device Under Test)
    signal exito : STD_LOGIC := '0';
    signal error : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal CLK : STD_LOGIC := '0';
    signal nivel_actual : STD_LOGIC_VECTOR (2 downto 0);
    signal avance_nivel : STD_LOGIC;
    signal reinicio_nivel : STD_LOGIC;

    -- Período del reloj (en nanosegundos)
    constant CLK_PERIOD : time := 20 ns;

begin

    -- Instancia del DUT
    uut: controlador_nivel
        Port map (
            exito => exito,
            error => error,
            reset => reset,
            CLK => CLK,
            nivel_actual => nivel_actual,
            avance_nivel => avance_nivel,
            reinicio_nivel => reinicio_nivel
        );

    -- Generador de reloj
    process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Estímulos para la simulación
    stim_proc: process
    begin
        -- Reset inicial
        reset <= '1';
        wait for CLK_PERIOD;
        reset <= '0';
        wait for CLK_PERIOD;

        -- Progresar niveles con éxito (del 1 al 5)
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 2
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 3
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 4
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 5

        -- Simular un error en el nivel 5
        error <= '1'; wait for 4 * CLK_PERIOD; error <= '0'; wait for CLK_PERIOD;

        -- Reset después de un error
        reset <= '1'; wait for 2 * CLK_PERIOD; reset <= '0'; wait for CLK_PERIOD;

        -- Repetir la secuencia nuevamente para verificar robustez
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 2
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 3

        -- Fin de la simulación
        wait;
    end process;

end behavioral;

