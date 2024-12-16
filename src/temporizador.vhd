library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity temporizador is
    generic (
        CLK_FREQ : integer := 100_000_000;  -- Frecuencia del reloj en Hz
        TIEMPO   : integer := 2            -- Tiempo a contar en segundos
    );
    port (
        CLK            : in  std_logic;    -- Señal de reloj
        iniciar_cuenta : in  std_logic;    -- Señal para iniciar la cuenta
        fin_tiempo     : out std_logic     -- Señal que indica que el temporizador ha acabado
    );
end temporizador;

architecture Behavioral of temporizador is
    constant CUENTA_MAX  : integer := CLK_FREQ * TIEMPO;  -- Total de ciclos de reloj
    signal contador_s    : integer := 0;                  -- Contador interno
    signal activo        : std_logic := '0';              -- Flag del temporizador
    signal fin_tiempo_s  : std_logic := '0';
begin
    process(CLK)
    begin
        if rising_edge(CLK) and iniciar_cuenta = '1' then
            if iniciar_cuenta = '1' and activo = '0' then
                activo <= '1';  -- Activa el temporizador
                fin_tiempo_s <= '0';
            end if;

            if activo = '1' then
                if contador_s < CUENTA_MAX then
                    contador_s <= contador_s + 1;
                else
                    fin_tiempo_s <= '1';  -- Finaliza el tiempo
                    contador_s <= 0;      -- Reinicia el contador
                    activo <= '0';      -- Detiene el temporizador
                end if;
            else
            end if;
        end if;
    end process;
    
    fin_tiempo <= fin_tiempo_s;
    
end Behavioral;
