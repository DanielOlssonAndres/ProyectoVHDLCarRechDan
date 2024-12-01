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
        assert(sec_generada /= (2, 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
            report "Error al generar sec en nivel 0"
            severity error;
        
    -- Prueba generación secuencia en nivel 1 si s_enable = 0
        niv_actual <= 1;
        wait for 10 ns;
        s_enable <= '0';
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        assert(sec_generada = (1, 1, 4, 2, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0))
            report "Error en funcionamiento de enable en nivel 1"
            severity error;
            
    -- Prueba del resto de niveles
        niv_actual <= 1;
        wait for 10 ns;
        s_enable <= '1';
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        assert(sec_generada /= (1, 1, 4, 2, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0))
            report "Error secuencia 1"
            severity error;
        
        niv_actual <= 2;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        assert(sec_generada /= (2, 3, 4, 1, 1, 4, 2, 3, 0, 0, 0, 0, 0, 0))
            report "Error al generar sec en nivel 2"
            severity error;
            
        niv_actual <= 3;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        assert(sec_generada /= (2, 4, 1, 2, 3, 2, 3, 4, 1, 2, 0, 0, 0, 0))
            report "Error al generar sec en nivel 3"
            severity error;
            
        niv_actual <= 4;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        assert(sec_generada /= (1, 1, 1, 3, 2, 4, 4, 2, 2, 3, 1, 2, 0, 0))
            report "Error al generar sec en nivel 4"
            severity error;
            
        niv_actual <= 5;
        wait for 10 ns;
        bot_accion <= '1', '0' after 10 ns;
        wait for 30 ns;
        assert(sec_generada /= (3, 3, 2, 4, 1, 3, 2, 4, 2, 3, 1, 1, 2, 3))
            report "Error al generar sec en nivel 5"
            severity error;
            
        -- Fin de simulación
        wait for 20 ns;
        assert false
            report "[FIN SIMULACION]: FINALIZADO CORRECTAMENTE"
            severity failure;
            
    end process;

end;
