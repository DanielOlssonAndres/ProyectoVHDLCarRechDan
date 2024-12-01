library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Debounce_Sync is
    Port (
        CLK         : in std_logic;   -- Señal de reloj
        ASYNC_IN    : in std_logic;   -- Señal del botón externo (asincrónica)
        SYNC_OUT    : out std_logic   -- Señal sincronizada y sin rebotes
    );
end Debounce_Sync;

architecture behavioral of Debounce_Sync is

    constant DEBOUNCE_TIME : integer := 1000000; -- Tiempo de debounce (en ciclos de reloj)

    -- Señales internas
    signal sync_1     : std_logic := '0';  -- Primer sincronizador
    signal sync_2     : std_logic := '0';  -- Segundo sincronizador
    signal debounce   : std_logic := '0';  -- Señal debounced
    signal counter    : integer range 0 to DEBOUNCE_TIME := 0; -- Contador para debounce

    -- Señal anterior del botón (para detectar cambios)
    signal prev_sync_2 : std_logic := '0';

begin

    -- Sincronizador de 2 etapas
    process (CLK)
    begin
        if rising_edge(CLK) then
            sync_1 <= ASYNC_IN;     -- Primer nivel de sincronización
            sync_2 <= sync_1;       -- Segundo nivel de sincronización
        end if;
    end process;

    -- Filtro de debounce por software
    process (CLK)
    begin
        if rising_edge(CLK) then
            if sync_2 /= prev_sync_2 then
                -- Si hay un cambio en la señal sincronizada, reiniciamos el contador
                counter <= 0;
            else
                -- Si no hay cambios, incrementamos el contador
                if counter < DEBOUNCE_TIME then
                    counter <= counter + 1;
                end if;
            end if;

            -- Si el contador alcanza el tiempo de debounce, actualizamos la salida
            if counter = DEBOUNCE_TIME then
                debounce <= sync_2;
            end if;

            -- Actualizamos la señal anterior
            prev_sync_2 <= sync_2;
        end if;
    end process;

    -- Salida sincronizada y sin rebotes
    SYNC_OUT <= debounce;

end behavioral;

