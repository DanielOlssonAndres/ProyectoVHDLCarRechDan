library ieee;
use ieee.std_logic_1164.ALL;

entity Decod_Leds_Sec_tb is
end Decod_Leds_Sec_tb;

architecture Behavioral of Decod_Leds_Sec_tb is

    component Decod_Leds_Sec is
        generic( NLEDS: integer := 4 );
        port(
            ledDeSecuencia  : in std_logic_vector(0 to 2); -- Entero que simboliza el led que queremos encender
            led             : out std_logic_vector(NLEDS downto 1) -- LEDs de salida     
        );
    end component;

    signal ledDeSecuencia : std_logic_vector(0 to 2) := "000";  
    signal led            : std_logic_vector(4 downto 1);  -- Vector de 4 LEDs (NLEDS)

begin

    uut: Decod_Leds_Sec
        generic map (NLEDS => 4)
        port map (
            ledDeSecuencia => ledDeSecuencia,
            led            => led
        );
    
    -- Proceso de pruebas
    test: process
    begin
        -- Prueba LED1 (ledDeSecuencia = "001")
        ledDeSecuencia <= "001";
        wait for 50 ns;
        assert led = "0001"
            report "ERROR: LED1 no se activó correctamente"
            severity error;

        -- Prueba LED2 (ledDeSecuencia = "010")
        ledDeSecuencia <= "010";
        wait for 50 ns;
        assert led = "0010"
            report "ERROR: LED2 no se activó correctamente"
            severity error;

        -- Prueba LED3 (ledDeSecuencia = "011")
        ledDeSecuencia <= "011";
        wait for 50 ns;
        assert led = "0100"
            report "ERROR: LED3 no se activó correctamente"
            severity error;

        -- Prueba LED4 (ledDeSecuencia = "100")
        ledDeSecuencia <= "100";
        wait for 50 ns;
        assert led = "1000"
            report "ERROR: LED4 no se activó correctamente"
            severity error;

        -- Prueba sin LED activado (ledDeSecuencia = "000")
        ledDeSecuencia <= "000";
        wait for 50 ns;
        assert led = "0000"
            report "ERROR: LEDS no se apagaron correctamente"
            severity error;

        -- Prueba con valor fuera de rango (ledDeSecuencia = "101")
        ledDeSecuencia <= "101";
        wait for 50 ns;
        assert led = "0000"
            report "ERROR: Valor fuera de rango no apagó los LEDs correctamente"
            severity error;

        -- Fin de simulación
        wait for 50 ns;
        assert false
            report "[FIN]: TEST COMPLETADO CORRECTAMENTE"
            severity failure;
    end process;

end Behavioral;
