library ieee;
use ieee.std_logic_1164.ALL;

entity CodBotones_tb is
end CodBotones_tb;

architecture Behavioral of CodBotones_tb is

    component CodBotones is
        port(
            -- Entradas
            boton          : in std_logic_vector(1 to 4); -- Boton 1
            -- Salidas
            boton_pulsado   : out std_logic_vector(0 to 2) -- El numero equivale al boton que se ha pulsado
        );
    end component;
    
    signal boton : std_logic_vector(1 to 4);
    signal boton_pulsado   : std_logic_vector(0 to 2);
    
    -- Declaracion del periodo
    constant periodo_clk : time := 20 ns;

begin
    -- Instanciacion del componente
    uut: CodBotones
        port map(
            boton => boton,
            boton_pulsado => boton_pulsado
        );
    
    
    test: process
    begin
        -- Ningun boton pulsado
        boton <= "0000";
        wait for periodo_clk;
        
        -- Boton 1 pulsado
        boton <= "1000";
        wait for periodo_clk;
        boton <= "0000";
        wait for periodo_clk;
        
        -- Boton 2 pulsado
        boton <= "0100";
        wait for periodo_clk;
        boton <= "0000";
        wait for periodo_clk;
        
        -- Boton 3 pulsado
        boton <= "0010";
        wait for periodo_clk;
        boton <= "0000";
        wait for periodo_clk;
        
        -- Boton 4 pulsado
        boton <= "0001";
        wait for periodo_clk;
        boton <= "0000";
        wait for periodo_clk;
        
        -- Probamos la prioridad
        boton <= "1111";
        wait for periodo_clk;
        boton <= "0000";
        wait for periodo_clk;
        
        assert false
            report "SIMULACION FINALIZADA CORRECTAMENTE"
            severity failure;
    end process;
end Behavioral;
