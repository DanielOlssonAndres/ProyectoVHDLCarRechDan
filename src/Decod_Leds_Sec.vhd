library ieee;
use ieee.std_logic_1164.ALL;

entity Decod_Leds_Sec is
    generic( NLEDS: integer := 4 );
    port(
        ledDeSecuencia  : in std_logic_vector(0 to 2); -- Entero que simboliza el led que queremos encender
        led             : out std_logic_vector(NLEDS downto 1) -- leds de salida     
    );
end Decod_Leds_Sec;

architecture Dataflow of Decod_Leds_Sec is
    
    signal led_s : std_logic_vector(NLEDS downto 1) := "0000";
    
begin
    
    with ledDeSecuencia select
        led_s <= "0001" when "001",
                 "0010" when "010",
                 "0100" when "011",
                 "1000" when "100",
                 "0000" when others;

    led <= led_s;
    
end Dataflow;
