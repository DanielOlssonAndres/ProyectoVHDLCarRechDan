library ieee;
use ieee.std_logic_1164.ALL;

entity Decod_Leds_Sec_tb is
end Decod_Leds_Sec_tb;

architecture Behavioral of Decod_Leds_Sec_tb is

    component Decod_Leds_Sec is
    generic( NLEDS: integer := 4 );
    port(
        ledDeSecuencia  : in std_logic_vector(0 to 2); -- Entero que simboliza el led que queremos encender
        led             : out std_logic_vector(NLEDS downto 1) -- leds de salida     
    );
end component;

    -- Señales para testbench
        signal ledDeSecuencia  : std_logic_vector(0 to 2) := "000";  
        signal led             : std_logic_vector(4 downto 1);   
begin

-- Unit Under Test
    uut: Decod_Leds_Sec
        generic map(NLEDS => 4)
        port map(
            ledDeSecuencia => ledDeSecuencia,
            led => led
        );
    
    -- Proceso de testbench
    test: process
    begin
        -- Prueba LED1
        ledDeSecuencia <= "001";
        wait for 50 ns;
        assert led(1) = '1'
            report "RESET NO FUNCIONA"
            severity error;
        wait for 50 ns;
        -- Prueba de LED2 (tras desactivación de RESET)
        ledDeSecuencia <= "010";
        wait for 50 ns;
        -- Prueba de LED3
        ledDeSecuencia <= "011";
        wait for 50 ns;
        -- Prueba de LED4
        ledDeSecuencia <= "100";
        wait for 50 ns;
        
        -- Prueba si se manda un 0
        ledDeSecuencia <= "000";
        wait for 50 ns;    
        
        -- FIN DE SIMULACIÓN
        assert false
            report "[FIN]: TEST COMPLETADO CORRECTAMENTE"
            severity failure;
    end process;
    
end Behavioral;
