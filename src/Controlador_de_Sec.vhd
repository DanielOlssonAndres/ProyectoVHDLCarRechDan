library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controlador_de_Sec is
    generic( TAMSEC: integer := 14 );
    port(
        secuencia        : in std_logic_vector(0 to (3*TAMSEC) + 2); -- Secuencia de entrada
        emitir_elemento  : in std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
        CLK              : in std_logic; -- Reloj del sistema
        enable           : in std_logic; 
        
        elemento         : out std_logic_vector(0 to 2); -- elemento de la secuencia que es emitido
        fin_secuencia    : out std_logic; -- Salida que indica que se ha llegado al final de la secuencia de entrada
        pedir_tiempo     : out std_logic -- Pide a un temporizador que empiece a contar
    );
end entity;

architecture Behavioral of Controlador_de_Sec is
	signal fin_secuencia_s : std_logic := '0';
	signal indice          : integer := 0;
	signal elemento_s      : std_logic_vector(0 to 2) := "000";
	signal pedir_tiempo_s  : std_logic := '0';
	signal flag_primero : std_logic := '0';
begin

principal: process(CLK, enable, emitir_elemento) 
    begin
        if rising_edge(emitir_elemento) then
            if flag_primero = '0' then
                flag_primero <= '1';
            elsif flag_primero = '1' then
                indice <= indice + 3;
            end if;
        end if;
        if enable = '0' then
            fin_secuencia_s <= '0';
        	pedir_tiempo_s <= '0';
            elemento_s <= "000";
            indice <= 0;
            flag_primero <= '0';
        elsif rising_edge(CLK) then
            elemento_s <= secuencia(indice) & secuencia(indice + 1) & secuencia(indice + 2);
            pedir_tiempo_s <= '1';
            if secuencia(indice) = '0' and secuencia(indice + 1) = '0' and secuencia(indice + 2) = '0' then
                fin_secuencia_s <= '1';
            end if;
        end if;
    end process;
    
    pedir_tiempo <= pedir_tiempo_s;
    fin_secuencia <= fin_secuencia_s;
    elemento <= elemento_s;
    
end architecture;
