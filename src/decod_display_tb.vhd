library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decodificador_display is
    -- Testbench no tiene puertos
end tb_decodificador_display;

architecture testbench of tb_decodificador_display is

    -- Señales para conectar con el DUT (Device Under Test)
    signal nivel_actual : STD_LOGIC_VECTOR(2 downto 0);
    signal CLK : STD_LOGIC := '0';
    signal display : STD_LOGIC_VECTOR(6 downto 0);

    -- Instancia del decodificador (DUT)
    component decodificador_display
        Port (
            nivel_actual : in STD_LOGIC_VECTOR(2 downto 0);
            CLK : in STD_LOGIC;
            display : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

begin
    -- Instanciar el DUT
    DUT: decodificador_display
        Port map (
            nivel_actual => nivel_actual,
            CLK => CLK,
            display => display
        );

    -- Generador de reloj
    process
    begin
        while true loop
            CLK <= not CLK;
            wait for 10 ns; -- Periodo de 20 ns (50 MHz)
        end loop;
    end process;

    -- Estímulos para probar el decodificador
    process
    begin
        -- Probar nivel 1
        nivel_actual <= "001"; -- Nivel 1
        wait for 20 ns;
        assert display = "0000110" report "Error en nivel 1: Display incorrecto" severity error;

        -- Probar nivel 2
        nivel_actual <= "010"; -- Nivel 2
        wait for 20 ns;
        assert display = "1011011" report "Error en nivel 2: Display incorrecto" severity error;

        -- Probar nivel 3
        nivel_actual <= "011"; -- Nivel 3
        wait for 20 ns;
        assert display = "1001111" report "Error en nivel 3: Display incorrecto" severity error;

        -- Probar nivel 4
        nivel_actual <= "100"; -- Nivel 4
        wait for 20 ns;
        assert display = "1100110" report "Error en nivel 4: Display incorrecto" severity error;

        -- Probar nivel 5
        nivel_actual <= "101"; -- Nivel 5
        wait for 20 ns;
        assert display = "1101101" report "Error en nivel 5: Display incorrecto" severity error;

        -- Fin de la simulación
        wait;
    end process;

end testbench;
