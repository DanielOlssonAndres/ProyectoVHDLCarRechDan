library ieee;
use ieee.std_logic_1164.ALL;

entity TOP_tb is
end TOP_tb;

architecture Behavioral of TOP_tb is
    
    component TOP is
        port (
            -- Entradas
            CLK_top             : in std_logic; --  Reloj de entrada de la placa
            RESET_top           : in std_logic; -- Botón de reset asíncrono de la placa
            accion_top          : in std_logic; -- Botón para iniciar la reproducción de la secuencia a repetir
            boton_top           : in std_logic_vector(1 to 4); -- Botonera para introducir la secuencia
            -- Salidas
            display_top         : out std_logic_vector(6 downto 0); -- Salida para el display de 7 segmentos
            enable_display_top  : out std_logic_vector(7 downto 0); -- Habilita la cifra del display
            led_top             : out std_logic_vector(4 downto 1) -- LEDs de salida
        );
    end component;
    
    signal CLK_top             : std_logic; --  Reloj de entrada de la placa
    signal RESET_top           : std_logic; -- Botón de reset asíncrono de la placa
    signal accion_top          : std_logic; -- Botón para iniciar la reproducción de la secuencia a repetir
    signal boton_top           : std_logic_vector(1 to 4); -- Botonera para introducir la secuencia
    signal display_top         : std_logic_vector(6 downto 0); -- Salida para el display de 7 segmentos
    signal enable_display_top  : std_logic_vector(7 downto 0); -- Habilita la cifra del display
    signal led_top             : std_logic_vector(4 downto 1); -- LEDs de salida
    
begin
    
    uut: TOP
        port map (
            CLK_top => CLK_top,
            RESET_top => RESET_top,
            accion_top => accion_top,
            boton_top => boton_top,
            display_top => display_top,
            enable_display_top => enable_display_top,
            led_top => led_top
        );
    
    clk_gen: process
    begin
        CLK_top <= '1';
        wait for 5 ns;
        CLK_top <= '0';
        wait for 5 ns;
    end process;
    
    test: process
    begin
        
        accion_top <= '0';
        RESET_top <= '1';
        boton_top <= "0000";
        
        wait for 50 us;
        accion_top <= '1';
        wait for 5 us;
        accion_top <= '0';
        
        wait for 1000 us;
        
        boton_top <= "0100"; -- 2
        wait for 10 us;
        boton_top <= "0000";
        wait for 10 us; 
        boton_top <= "0010"; -- 3
        wait for 10 us;
        boton_top <= "0000";
        wait for 10 us;         
        boton_top <= "1000";
        wait for 10 us;
        boton_top <= "0000";
        wait for 10 us;         
        boton_top <= "0010";
        wait for 10 us;    
        boton_top <= "0000";
        wait for 10 us;   
        
        wait for 100 us; 
        
        wait for 10 us;
        accion_top <= '1';
        wait for 5 us;
        accion_top <= '0';     
        
        wait for 1500 us;
        
        -- RESET_top <= '0'; -- Para probar el RESET
        
        boton_top <= "1000";
        wait for 10 us;
        boton_top <= "0000";
        wait for 10 us; 
        boton_top <= "0010";
        wait for 10 us;
        boton_top <= "0000";
        wait for 10 us;         
        boton_top <= "0001";
        wait for 10 us;
        boton_top <= "0000";
        wait for 10 us;
        boton_top <= "0010";
        wait for 10 us; 
        boton_top <= "0000";
        
        wait for 1000 us;
        
        assert false
            report "FIN SIM"
            severity failure;
            
    end process;
    
end Behavioral;
