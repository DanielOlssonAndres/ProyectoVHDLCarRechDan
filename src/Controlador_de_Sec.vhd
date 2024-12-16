library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controlador_de_Sec is
    generic( TAMSEC: integer := 14 );
    port(
        secuencia        : in std_logic_vector(0 to (3*TAMSEC) + 2); -- Secuencia de entrada
        emitir_elemento  : in std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
        CLK              : in std_logic; -- Reloj del sistema
        enable           : in std_logic; -- Señal de habilitación global
        
        elemento         : out std_logic_vector(0 to 2); -- Elemento emitido
        fin_secuencia    : out std_logic; -- Indica que se ha llegado al final de la secuencia
        pedir_tiempo     : out std_logic -- Señal para pedir tiempo a un temporizador
    );
end entity;

architecture Behavioral of Controlador_de_Sec is
    signal fin_secuencia_s : std_logic := '0';
    signal indice          : integer := 0;
    signal elemento_s      : std_logic_vector(0 to 2) := "000";
    signal pedir_tiempo_s  : std_logic := '0';
    signal emitir_anterior : std_logic := '0'; -- Señal para detectar flanco ascendente
begin

principal: process(CLK)
    begin
        if rising_edge(CLK) then
            if enable = '0' then
                -- Reiniciar el sistema
                fin_secuencia_s <= '0';
                pedir_tiempo_s <= '0';
                elemento_s <= "000";
                indice <= 0;
            else
                -- Detectar flanco ascendente de emitir_elemento
                if emitir_elemento = '1' and emitir_anterior = '0' then
                    if (indice + 2) <= (3*TAMSEC + 2) then
                        elemento_s <= secuencia(indice) & secuencia(indice + 1) & secuencia(indice + 2);
                        indice <= indice + 3;
                        pedir_tiempo_s <= '1';
                        
                        -- Verificar si el elemento es "000" (fin de secuencia)
                        if secuencia(indice) = '0' and secuencia(indice + 1) = '0' and secuencia(indice + 2) = '0' then
                            fin_secuencia_s <= '1';
                        else
                            fin_secuencia_s <= '0';
                        end if;
                    else
                        -- Evitar desbordamiento del índice
                        fin_secuencia_s <= '1';
                    end if;
                end if;
                emitir_anterior <= emitir_elemento; -- Actualizar estado previo
            end if;
        end if;
    end process;

    -- Asignaciones de salida
    pedir_tiempo <= pedir_tiempo_s;
    fin_secuencia <= fin_secuencia_s;
    elemento <= elemento_s;
    
end architecture;