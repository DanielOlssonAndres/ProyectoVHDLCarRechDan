library ieee;
use ieee.std_logic_1164.ALL;

entity CompSecuencia_tb is
end CompSecuencia_tb;

architecture Behavioral of CompSecuencia_tb is
    -- Declaración del componente a testear
    component CompSecuencia is
        port(
            CLK               : in std_logic;        -- Señal de reloj
            sec_generada      : in std_logic_vector(0 to 44); -- Secuencia generada por GenSecuencia
            boton_pulsado     : in std_logic_vector(0 to 2); -- Indica el botón que se ha pulsado
            enable            : in std_logic;
            exito             : out std_logic;       -- Indica si el usuario ha acertado
            error             : out std_logic;       -- Indica si el usuario ha fallado
            fin_comparacion   : out std_logic        -- Indica el fin de la comparación
        );
    end component;

    -- Señales internas para conectar al DUT
    signal CLK               : std_logic := '0'; -- Señal de reloj
    signal sec_generada      : std_logic_vector(0 to 44);
    signal boton_pulsado     : std_logic_vector(0 to 2);
    signal enable            : std_logic;
    signal exito             : std_logic;
    signal error             : std_logic;
    signal fin_comparacion   : std_logic;

    -- Período del reloj
    constant periodo_clk : time := 10 ns;

    -- Secuencias predefinidas
    constant semilla0 : std_logic_vector(0 to 44) := ("010" & "011" & "001" & "011" & "000000000000000000000000000000000");
    constant semilla1 : std_logic_vector(0 to 44) := ("001" & "011" & "100" & "010" & "011" & "001" & "000000000000000000000000000");
    constant semilla2 : std_logic_vector(0 to 44) := ("010" & "011" & "100" & "001" & "010" & "100" & "010" & "011" & "000000000000000000000");
    
begin
    uut: CompSecuencia
        port map(
            CLK => CLK,
            sec_generada => sec_generada,
            boton_pulsado => boton_pulsado,
            enable => enable,
            exito => exito,
            error => error,
            fin_comparacion => fin_comparacion
        );

    clock_gen: process
    begin
        while true loop
            CLK <= '0';
            wait for periodo_clk / 2;
            CLK <= '1';
            wait for periodo_clk / 2;
        end loop;
    end process;

    test: process
    begin
        enable <= '0';
        wait for periodo_clk;
        enable <= '1';
        wait for periodo_clk;

        -- Caso 1: Prueba con `semilla0` (todas las pulsaciones correctas)
        sec_generada <= semilla0;
        boton_pulsado <= "000"; -- Estado inicial
        wait for periodo_clk;

        -- Simular pulsaciones correctas
        boton_pulsado <= "010"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "011"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "011"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;

        -- Caso 2: Prueba con `semilla1` (pulsación incorrecta)
        sec_generada <= semilla1;
        boton_pulsado <= "000"; -- Estado inicial
        wait for periodo_clk;

        -- Pulsaciones, incluyendo una incorrecta
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk; -- Incorrecta

        -- Caso 3: Prueba con `semilla2` (secuencia incompleta)
        sec_generada <= semilla2;
        boton_pulsado <= "000"; -- Estado inicial
        wait for periodo_clk;

        -- Pulsaciones, no terminamos la secuencia
        boton_pulsado <= "010"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "011"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "100"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;

        assert false
            report "SIMULACION FINALIZADA CORRECTAMENTE"
            severity failure;
    end process;

end Behavioral;
