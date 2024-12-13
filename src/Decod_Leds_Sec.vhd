library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Esta entidad se encarga de recibir un número entero (integrer) y encender el led correspondiente a dicho entero

entity Decod_Leds_Sec is
    generic( NLEDS: integer := 4 );
    port(
        ledDeSecuencia  : in integer; -- Entero que simboliza el led que queremos encender
        CLK             : in std_logic; -- Señal de reloj para sincronización
        RESET           : in std_logic; -- Reset asíncrono que apaga todos los leds
        led             : out std_logic_vector(NLEDS downto 1) -- leds de salida     
    );
end Decod_Leds_Sec;

architecture BEHAVIORAL of Decod_Leds_Sec is
    
    signal led_s : std_logic_vector(NLEDS downto 1) := "0000";
    
begin
    asign: process(CLK, RESET)
    begin
        if RESET = '0' then 
            for i in 1 to NLEDS loop
                led_s(i) <= '0';
            end loop;
        elsif rising_edge(CLK) then
            case leddeSecuencia is
                when 1 =>
                    led_s <= "0001";
                when 2 =>
                    led_s <= "0010";
                when 3 =>
                    led_s <= "0100";
                when 4 =>
                    led_s <= "1000";
                when others =>
                    led_s <= "0000";
            end case;       
        end if;
    end process;
    
    led <= led_s;
    
end BEHAVIORAL;
