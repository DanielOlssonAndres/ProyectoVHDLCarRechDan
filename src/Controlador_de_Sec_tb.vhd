library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--library work;
--use work.newtype_package.all;
--library xil_defaultlib;
--use xil_defaultlib.newtype_package.all;

entity Controlador_de_Sec_tb is
end entity;

architecture sim of Controlador_de_Sec_tb is

    component Controlador_de_Sec is
        generic( TAMSEC: integer := 14 );
        port(
            secuencia        : in std_logic_vector(0 to (3*TAMSEC) + 2);
            emitir_elemento  : in std_logic;
            CLK              : in std_logic;
            
            elemento         : out std_logic_vector(0 to 2);
            fin_secuencia    : out std_logic;
            pedir_tiempo     : out std_logic
        );
    end component;
    
    signal secuencia       : std_logic_vector(0 to 44) := (others => '0');
    signal emitir_elemento : std_logic := '0';
    signal CLK             : std_logic := '0';
    signal elemento        : std_logic_vector(0 to 2);
    signal fin_secuencia   : std_logic;
    signal pedir_tiempo    : std_logic;
    
    constant CLK_T : time := 10 ns;

begin
    -- Unit Under Test
    uut: Controlador_de_Sec
        generic map ( TAMSEC => 14 )
        port map (
            secuencia => secuencia,
            emitir_elemento => emitir_elemento,
            CLK => CLK,
            elemento => elemento,
            fin_secuencia => fin_secuencia,
            pedir_tiempo => pedir_tiempo
        );

    -- Generación del reloj
    clkgen: process
    begin
        while true loop
            CLK <= '1';
            wait for CLK_T / 2;
            CLK <= '0';
            wait for CLK_T / 2;
        end loop;
    end process;

    -- Simulación del temporizador
    temp: process
    begin
        wait on pedir_tiempo;
        if pedir_tiempo = '1' then
            wait for 30 ns;
            emitir_elemento <= '1';
            wait for 10 ns;
            emitir_elemento <= '0';
        end if;
    end process;

    -- Estímulos
    sim: process
    begin
        -- Primera secuencia
        secuencia <= (others => '0');
        wait for 50 ns;
        secuencia <= ("010" & "011" & "001" & "011" & "000000000000000000000000000000000");
        wait for 1000 ns;

        -- Nueva secuencia
        secuencia <= ("001" & "011" & "100" & "010" & "011" & "001" & "000000000000000000000000000");
        wait for 1000 ns;

        wait for 100 ns;
        assert false 
            report "FIN CORRECTO DE SIMULACION" 
            severity failure;
    end process;

end architecture;
