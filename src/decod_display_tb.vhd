library ieee;
use ieee.std_logic_1164.ALL;

entity decod_display_tb is
end decod_display_tb;

architecture Behavioral of decod_display_tb is

    component decod_display is
        port (
            nivel_actual   : in std_logic_vector(0 to 2); -- Nivel actual (3 bits)
            display        : out std_logic_vector(6 downto 0); -- Salida del display de 7 segmentos
            enable_display : out std_logic_vector (7 downto 0) -- Habilita la cifra del display
        );
    end component;

    signal nivel_actual   : std_logic_vector(0 to 2) := "000";
    signal display        : std_logic_vector(6 downto 0);
    signal enable_display : std_logic_vector(7 downto 0);

begin
    uut: decod_display
        port map (
            nivel_actual   => nivel_actual,
            display        => display,
            enable_display => enable_display
        );

    test: process
    begin
        -- Caso 1: nivel_actual = "000" (Mostrar 0)
        nivel_actual <= "000";
        wait for 20 ns;
        assert display = "0000001"
            report "ERROR: Display incorrecto para nivel_actual = 000" severity error;
        assert enable_display = "11111110"
            report "ERROR: Enable_display incorrecto para nivel_actual = 000" severity error;

        -- Caso 2: nivel_actual = "001" (Mostrar 1)
        nivel_actual <= "001";
        wait for 20 ns;
        assert display = "1001111"
            report "ERROR: Display incorrecto para nivel_actual = 001" severity error;

        -- Caso 3: nivel_actual = "010" (Mostrar 2)
        nivel_actual <= "010";
        wait for 20 ns;
        assert display = "0010010"
            report "ERROR: Display incorrecto para nivel_actual = 010" severity error;

        -- Caso 4: nivel_actual = "011" (Mostrar 3)
        nivel_actual <= "011";
        wait for 20 ns;
        assert display = "0000110"
            report "ERROR: Display incorrecto para nivel_actual = 011" severity error;

        -- Caso 5: nivel_actual = "100" (Mostrar 4)
        nivel_actual <= "100";
        wait for 20 ns;
        assert display = "1001100"
            report "ERROR: Display incorrecto para nivel_actual = 100" severity error;

        -- Caso 6: nivel_actual = "101" (Mostrar 5)
        nivel_actual <= "101";
        wait for 20 ns;
        assert display = "0100100"
            report "ERROR: Display incorrecto para nivel_actual = 101" severity error;

        -- Caso 7: nivel_actual fuera de rango ("111")
        nivel_actual <= "111";
        wait for 20 ns;
        assert display = "0000001"
            report "ERROR: Display incorrecto para nivel_actual fuera de rango" severity error;

        -- Fin de la simulación
        wait for 20 ns;
        assert false
            report "SIMULACION FINALIZADA CORRECTAMENTE"
            severity failure;
    end process;

end Behavioral;
