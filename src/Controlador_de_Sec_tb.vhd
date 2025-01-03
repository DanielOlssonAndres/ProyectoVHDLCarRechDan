library ieee;
use ieee.std_logic_1164.ALL;

entity Controlador_de_Sec_tb is
end Controlador_de_Sec_tb;

architecture Behavioral of Controlador_de_Sec_tb is

    component Controlador_de_Sec is
        generic( TAMSEC: integer := 14 );
        port(
            secuencia        : in std_logic_vector(0 to (3*TAMSEC) + 2);
            emitir_elemento  : in std_logic;
            CLK              : in std_logic;
            enable           : in std_logic;
            
            elemento         : out std_logic_vector(0 to 2);
            fin_secuencia    : out std_logic;
            pedir_tiempo     : out std_logic
        );
    end component;
    
    signal secuencia       : std_logic_vector(0 to 44) := (others => '0');
    signal emitir_elemento : std_logic := '0';
    signal CLK             : std_logic := '0';
    signal enable          : std_logic := '1';
    signal elemento        : std_logic_vector(0 to 2);
    signal fin_secuencia   : std_logic;
    signal pedir_tiempo    : std_logic;
    
    constant CLK_T : time := 10 ns;

begin
   
    uut: Controlador_de_Sec
    generic map ( TAMSEC => 14 )
        port map (
            secuencia => secuencia,
            emitir_elemento => emitir_elemento,
            CLK => CLK,
            enable => enable,
            elemento => elemento,
            fin_secuencia => fin_secuencia,
            pedir_tiempo => pedir_tiempo
        );

    -- Reloj
    clk_gen: process
    begin
        while true loop
            CLK <= '1';
            wait for CLK_T / 2;
            CLK <= '0';
            wait for CLK_T / 2;
        end loop;
    end process;

    -- Simulación del temporizador
    temp_gen: process
    begin
        wait on pedir_tiempo;
        if pedir_tiempo = '1' then
            wait for 30 ns; -- Tiempo que el temporizador debe esperar
            emitir_elemento <= '1';
            wait for 10 ns;
            emitir_elemento <= '0';
        end if;
    end process;

    -- Estímulos
    test: process
    begin
    -- Reset inicial
        enable <= '0';
        wait for 20 ns;
        enable <= '1';

        -- Primera secuencia: 4 elementos válidos, luego final
        secuencia <= ("010" & "011" & "001" & "011" & "000000000000000000000000000000000");        wait for 20 ns; -- Sincronizar con reloj

        -- Procesar cada elemento hasta el final de la secuencia
        while fin_secuencia = '0' loop
            wait for 50 ns;
        end loop;

        assert fin_secuencia = '1'
            report "Error: no se detectó el final correctamente."
            severity error;

        -- Cambiar a una nueva secuencia y reiniciar
        enable <= '0';
        wait for 20 ns;
        enable <= '1';
        secuencia <= ("001" & "011" & "100" & "010" & "011" & "001" & "000000000000000000000000000");        wait for 20 ns;

        while fin_secuencia = '0' loop
            wait for 50 ns;
        end loop;

        -- Fin
        wait for 50 ns;
        assert false
            report "Simulación finalizada correctamente"
            severity failure;
    end process;

end Behavioral;
