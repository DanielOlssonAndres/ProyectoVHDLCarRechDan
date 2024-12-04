library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity temporizador is
    generic (
        CLK_FREQ : integer := 50_000_000;  -- Frecuencia del reloj en Hz
        TIEMPO   : integer := 1            -- Tiempo a contar en segundos
    );
    port (
        CLK            : in  std_logic;    -- Señal de reloj
        iniciar_cuenta : in  std_logic;    -- Señal para iniciar la cuenta
        fin_tiempo     : out std_logic;     -- Señal que indica que el temporizador ha acabado
        contador       : out integer -- Sólo para sim----------------------------------------------------------------
    );
end temporizador;

architecture Behavioral of temporizador is
    constant CUENTA_MAX  : integer := 10;--CLK_FREQ * TIEMPO;  -- Total de ciclos de reloj
    signal contador_s    : integer := 0;                  -- Contador interno
    signal activo        : std_logic := '0';              -- Estado del temporizador
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if iniciar_cuenta = '1' then
                activo <= '1';  -- Activa el temporizador
            end if;

            if activo = '1' then
                if contador_s < CUENTA_MAX then
                    contador_s <= contador_s + 1;
                    contador <= contador_s;
                else
                    fin_tiempo <= '1';  -- Finaliza el tiempo
                    contador <= 0;      -- Reinicia el contador
                    activo <= '0';      -- Detiene el temporizador
                end if;
            else
                fin_tiempo <= '0';  -- Reinicia la salida
            end if;
        end if;
    end process;
end Behavioral;
