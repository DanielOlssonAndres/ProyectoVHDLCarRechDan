library ieee;
use ieee.std_logic_1164.ALL;

entity GenSecuencia_tb is
end GenSecuencia_tb;

architecture Behavioral of GenSecuencia_tb is
    
    -- Declaración del componente a testear
    component GenSecuencia is
        port(
            -- Entradas
            niv_actual        : in std_logic_vector(0 to 2); -- Indica en que nivel nos encontramos 
            bot_accion        : in std_logic; -- Evento de inicio de generador
            s_enable          : in std_logic; -- Si = 0, no se generan secuencias (enable)
            CLK               : in std_logic; -- Reloj del sistema
            -- Salidas
            sec_generada      : out std_logic_vector(0 to 44); -- Secuencia generada
            sec_lista         : out std_logic -- Indica que la nueva secuencia está lista en la salida
        );
    end component;
    
    -- Señales para el testbench
    signal niv_actual    : std_logic_vector(0 to 2); 
    signal bot_accion    : std_logic; 
    signal s_enable      : std_logic; 
    signal CLK           : std_logic := '0';
    signal sec_generada  : std_logic_vector(0 to 44);     
    signal sec_lista     : std_logic;

begin
    -- Unit Under Test
    uut: GenSecuencia
        port map(
            niv_actual => niv_actual, 
            bot_accion => bot_accion, 
            s_enable => s_enable, 
            CLK => CLK,
            sec_generada => sec_generada,
            sec_lista => sec_lista
        );    

    -- Generador de reloj  
   clk_gen: process 
   begin
       CLK <= '0';
       wait for 5 ns;
       CLK <= '1';
       wait for 5 ns;
   end process;
   
    test: process
    begin
        -- Inicialización
        niv_actual <= "000";
        bot_accion <= '0';
        s_enable <= '0';
        wait for 20 ns;

        -- Prueba generación secuencia en nivel 0
        niv_actual <= "000";
        s_enable <= '1';
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        -- Prueba generación secuencia en nivel 1 si s_enable = 0
        niv_actual <= "001";
        s_enable <= '0';
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        -- Prueba del resto de niveles
        s_enable <= '1';
        niv_actual <= "001";
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        niv_actual <= "010";
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        niv_actual <= "011";
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        niv_actual <= "100";
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        niv_actual <= "101";
        bot_accion <= '1';
        wait for 10 ns;
        bot_accion <= '0';
        wait for 20 ns;

        -- Fin de simulación
        wait for 20 ns;
        assert false
            report "[FIN SIMULACION]: FINALIZADO CORRECTAMENTE"
            severity failure;
            
    end process;

end Behavioral;

