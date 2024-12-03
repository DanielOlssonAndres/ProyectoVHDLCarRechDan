library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity GenSecuencia_tb is
end GenSecuencia_tb;

architecture BEHAVIORAL of GenSecuencia_tb is
    
    -- Declaración del componente a testear
    component GenSecuencia is
        port(
            -- Entradas
            niv_actual        : in integer; -- Indica en que nivel nos encontramos 
            bot_accion        : in std_logic; -- Evento de inicio de generador
            s_enable          : in std_logic; -- Si = 0, no se generan secuencias (enable)
            -- Salidas
            sec_generada      : out vec_integrer(0 to 13) -- Secuencia generada
            );
    end component;
    
    -- Señales para el testbench
        signal niv_actual    : integer; 
        signal bot_accion    : std_logic; 
        signal s_enable      : std_logic; 
        signal sec_generada  : vec_integrer(0 to 13);     
begin
    -- Instanciación del componente
    uut: GenSecuencia
        port map(
            niv_actual => niv_actual, 
            bot_accion => bot_accion, 
            s_enable => s_enable, 
            sec_generada => sec_generada
            );    

    testp: process
    begin
    -- Inicialización
        niv_actual <= 0;
        bot_accion <= '0';
        s_enable <= '0';
        wait for 10 ns;
        
    -- Prueba generación secuencia en nivel 0
        niv_actual <= 0;
        s_enable <= '1';
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        
    -- Prueba generación secuencia en nivel 1 si s_enable = 0
        niv_actual <= 1;
        wait for 10 ns;
        s_enable <= '0';
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
            
    -- Prueba del resto de niveles
        niv_actual <= 1;
        wait for 10 ns;
        s_enable <= '1';
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        
        niv_actual <= 2;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
            
        niv_actual <= 3;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
            
        niv_actual <= 4;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
            
        niv_actual <= 5;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
            
        -- Fin de simulación
        wait for 20 ns;
        assert false
            report "[FIN SIMULACION]: FINALIZADO CORRECTAMENTE"
            severity failure;
            
    end process;

end;
