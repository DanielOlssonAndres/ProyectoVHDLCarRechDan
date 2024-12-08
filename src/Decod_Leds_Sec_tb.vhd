library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decod_Leds_Sec_tb is
end Decod_Leds_Sec_tb;

architecture Behavioral of Decod_Leds_Sec_tb is

    component Decod_Leds_Sec is
    generic( NLEDS: integer := 4 );
    port(
        ledDeSecuencia  : in integer; -- Entero que simboliza el led que queremos encender
        CLK             : in std_logic; -- Señal de reloj para sincronización
        RESET           : in std_logic; -- Reset asíncrono que apaga todos los leds
        led             : out std_logic_vector(NLEDS downto 1) -- leds de salida     
    );
end component;

    -- Señales para testbench
        signal ledDeSecuencia  : integer := 0; 
        signal CLK             : std_logic := '0';
        signal RESET           : std_logic := '1'; 
        signal led             : std_logic_vector(4 downto 1);   
begin

-- Unit Under Test
uut: Decod_Leds_Sec
    generic map(NLEDS => 4)
    port map(
        ledDeSecuencia => ledDeSecuencia,
        CLK => CLK,
        RESET => RESET,
        led => led
    );

    -- Generador de reloj: T = 20 ns
    CLK <= not CLK after 10 ns;
    
    -- Proceso de testbench
    tbp: process
    begin
        -- Prueba LED1
        ledDeSecuencia <= 1;
        wait for 50 ns;
        -- Prueba de RESET
        RESET <= '0';
        wait for 10 ns;
        assert led(1) = '1'
            report "RESET NO FUNCIONA"
            severity error;
        wait for 50 ns;
        -- Prueba de LED2 (tras desactivación de RESET)
        ledDeSecuencia <= 2;
        wait for 50 ns;
        RESET <= '1';
        wait for 50 ns;
        -- Prueba de LED3
        ledDeSecuencia <= 3;
        wait for 50 ns;
        -- Prueba de LED4
        ledDeSecuencia <= 4;
        wait for 50 ns;
        
        -- Prueba si se manda un 0
        ledDeSecuencia <= 0;
        wait for 50 ns;    
        
        -- FIN DE SIMULACIÓN
        assert false
            report "[FIN]: TEST COMPLETADO CORRECTAMENTE"
            severity failure;
    end process;
    
end Behavioral;
