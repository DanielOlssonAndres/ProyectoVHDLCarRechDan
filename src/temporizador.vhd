library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

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
    signal fin_tiempo_s  : std_logic := '0';
    
begin

mainpr: process(CLK)
begin
    if rising_edge(CLK) then 
        if iniciar_cuenta = '0' then
            contador_s <= 0;
            fin_tiempo_s <= '0';
        else
            if contador_s < CUENTA_MAX/2 then
                fin_tiempo_s <= '1';  -- El valor de fin_tiempo_s se pone a '1'
                contador_s <= contador_s + 1;  -- Se incrementa el contador
            elsif contador_s < CUENTA_MAX then
                fin_tiempo_s <= '0';  -- El valor de fin_tiempo_s se pone a '0'
                contador_s <= contador_s + 1;  -- Se incrementa el contador
            else
                contador_s <= 0;  -- Reseteo del contador
                fin_tiempo_s <= '0';  -- Puede ser necesario resetear fin_tiempo_s también
            end if;
        end if;
    end if;
end process;

        
    fin_tiempo <= fin_tiempo_s;
    
end Behavioral;
