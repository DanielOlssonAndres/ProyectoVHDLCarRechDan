library ieee;
use ieee.std_logic_1164.ALL;

entity controlador_nivel_tb is
end controlador_nivel_tb;

architecture Behavioral of controlador_nivel_tb is

    component controlador_nivel is
        Port ( 
            exito : in STD_LOGIC;
            error : in STD_LOGIC;
            reset : in STD_LOGIC;
            CLK : in STD_LOGIC;
            nivel_actual : out STD_LOGIC_VECTOR (2 downto 0);
            enable : in STD_LOGIC
        );
    end component;

    signal exito : STD_LOGIC := '0';
    signal error : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '1';
    signal CLK : STD_LOGIC := '0';
    signal enable : STD_LOGIC := '1';
    signal nivel_actual : STD_LOGIC_VECTOR(0 to 2);

    constant CLK_PERIOD : time := 20 ns;

begin

    uut: controlador_nivel
        Port map (
            exito => exito,
            error => error,
            reset => reset,
            CLK => CLK,
            enable => enable,
            nivel_actual => nivel_actual
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

    -- Estímulos para la simulación
    test: process
    begin
    -- Reset inicial
        reset <= '0';
        wait for CLK_PERIOD;
        reset <= '1';
        wait for CLK_PERIOD;

        -- Habilitación inicial
        enable <= '1';
        wait for CLK_PERIOD;

        -- Progresar niveles con éxito (del 0 al 5)
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 1
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 2
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 3
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 4
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 5

        -- Simular un error en el nivel 5
        error <= '1'; wait for 4 * CLK_PERIOD; error <= '0'; wait for CLK_PERIOD;

        -- Reset después de un error
        reset <= '0'; wait for 2 * CLK_PERIOD; reset <= '1'; wait for CLK_PERIOD;

        -- Repetir la secuencia para verificar robustez
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 1
        exito <= '1'; wait for 4 * CLK_PERIOD; exito <= '0'; wait for 4 * CLK_PERIOD; -- Estado 2

        -- Fin de la simulación
        wait;
    end process;
end Behavioral;

