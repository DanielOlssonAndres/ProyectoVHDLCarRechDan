library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.newtype_package.all;

entity Controlador_de_Sec is
    generic( TAMSEC: integer := 14 );
    port(
        secuencia        : in vec_enteros(0 to TAMSEC); -- Secuencia de entrada
        emitir_elemento  : in std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
        CLK              : in std_logic; -- Reloj del sistema
        sec_lista        : in std_logic; -- Señal que indica que la secuencia ha cambiado
        
        elemento         : out integer; -- elemento de la secuencia que es emitido
        fin_secuencia    : out std_logic; -- Salida que indica que se ha llegado al final de la secuencia de entrada
        pedir_tiempo     : out std_logic -- Pide a un temporizador que empiece a contar
    );
end entity;

architecture Behavioral of Controlador_de_Sec is
   	type STATE is (INICIAL,EMITIENDO,ESPERANDO); 
	signal cur_state      : STATE := INICIAL; 
	signal nxt_state      : STATE := INICIAL;
	signal fin_detectado  : std_logic := '0';
	signal indice         : integer := 0;
	signal elemento_s     : integer := 0;
begin

st_reg: process(CLK) -- Registro de estado
    begin
        if rising_edge(CLK) then
        	cur_state <= nxt_state;
        end if;
    end process;
    
    nxt_st_dec: process(secuencia, fin_detectado)
    begin
    	case cur_state is
    	    when INICIAL =>
                if rising_edge(sec_lista) then
                    nxt_state <= EMITIENDO;
                end if;
        	when ESPERANDO =>
                if rising_edge(sec_lista) then
                    nxt_state <= EMITIENDO;
                end if;
            when EMITIENDO =>
            	if fin_detectado = '1' then
            	   nxt_state <= ESPERANDO;
            	end if;
            when others =>
            	nxt_state <= ESPERANDO;
        end case;
    end process;
    
    out_dec: process(cur_state, secuencia, emitir_elemento)
    begin
    	case cur_state is
    	    when INICIAL =>
    	        fin_secuencia <= '0';
        	    fin_detectado <= '0';
        	    pedir_tiempo <= '0';
                elemento_s <= 0;
                indice <= 0;
        	when ESPERANDO =>
        	    fin_secuencia <= '1';
        	    fin_detectado <= '0';
        	    pedir_tiempo <= '0';
                elemento_s <= 0;
                indice <= 0;
            when EMITIENDO =>
                fin_secuencia <= '0';
                elemento_s <= secuencia(indice);
                pedir_tiempo <= '1';
                if secuencia(indice) = 0 then
                    fin_detectado <= '1';
                elsif rising_edge(emitir_elemento) then
                    indice <= indice + 1;
                    pedir_tiempo <= '0';
                end if;
            when others =>
        	    fin_secuencia <= '1';
        	    fin_detectado <= '0';
        	    pedir_tiempo <= '0';
                elemento_s <= 0;
                indice <= 0;
        end case;
    end process;
    
    elemento <= elemento_s;
    
end architecture;