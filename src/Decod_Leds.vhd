library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity Decod_Leds is
    port(
        -- Entradas
        secuencia_generada  : in vec_integrer(0 to 13); -- Secuencia creada 
        reinicio_n          : in std_logic; -- Pierdes y se enciende led rojo
        avance_n            : in std_logic; -- Ganas y se enciende el led verde
        CLK                 : in std_logic; -- Señal de reloj
        -- Salidas
        led_rojo            : out std_logic; -- Led de fallo
        led_verde           : out std_logic; -- Led de acierto
        led1                : out std_logic;
        led2                : out std_logic;
        led3                : out std_logic;
        led4                : out std_logic
        );
        
end entity;

architecture behavioral of Decod_Leds is

begin

end architecture;         
