library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_buttons_leds is
    port (
        CLK : in std_logic; -- Señal de reloj
        BUTTONS : in std_logic_vector(3 downto 0); -- Entradas asíncronas (botones)
        LEDS : out std_logic_vector(3 downto 0) -- Salidas sincronizadas (LEDs)
    );
end sync_buttons_leds;

architecture BEHAVIORAL of sync_buttons_leds is
    -- Registro intermedio para sincronizar cada botón
    signal sreg : std_logic_vector(3 downto 0); -- Primer registro
    signal sreg_sync : std_logic_vector(3 downto 0); -- Segundo registro
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            -- Sincronización de cada botón en dos etapas
            sreg <= BUTTONS; -- Primer registro (entrada asíncrona)
            sreg_sync <= sreg; -- Segundo registro (ya sincronizado)
            LEDS <= sreg_sync; -- Salida hacia los LEDs
        end if;
    end process;
end BEHAVIORAL;
