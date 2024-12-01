library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity GenSecuencia is
    generic(
        MAX_SEC    : integer := 6; -- Máxima longitud de secuencia generable
        DIFICULTAD : integer := 1 -- longitud de secuencia = NIVEL * DIFICULTAD + 4
    );   
    port(
        -- Entradas
        niv_actual        : in integer; -- Indica en que nivel nos encontramos 
        bot_accion        : in std_logic; -- Evento de inicio de generador
        fin_comparacion   : in std_logic; -- Si = 0, no se generan secuencias (enable)
        CLK               : std_logic; -- Señal de reloj
        -- Salidas
        sec_generada      : out vec_integrer(MAX_SEC - 1 downto 0); -- Secuencia generada
        fin_sec           : out std_logic -- Indica fin de secuencia generada
    );
end GenSecuencia;

architecture BEHAVIORAL of GenSecuencia is
    constant semilla : vec_integrer(29 downto 0) := 
    (2, 3, 1, 3, 4, 2, 4, 3, 1, 3, 2, 3, 4, 2, 2, 4, 1, 1, 4, 2, 3, 2, 1, 4, 2, 3, 4, 1, 2, 3);
    signal cuenta : integer := 0;
begin 
    -- Proceso que genera un valor pseudoaleatorio a partir de la semilla
    count: process(CLK)
    begin
        if rising_edge(CLK) then
            if cuenta < 29 - MAX_SEC then
                cuenta <= cuenta + 1;
            else 
                    cuenta <=  0;
            end if;
        end if;
    end process;
    
    asignacion: process(CLK, bot_accion, fin_comparacion)
    begin
        if (rising_edge(CLK) and (bot_accion = '1') and (fin_comparacion = '1')) then 
            sec_generada <= (others => 0); -- Inicializamos salida a 0
            fas: for i in 0 to (niv_actual*DIFICULTAD + 4) loop
                sec_generada(i) <= (semilla(cuenta + i));
            end loop;
            fin_sec <= '1';
        end if;
    end process;
    
end BEHAVIORAL;
