library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--library work;
--use work.newtype_package.all;
--library xil_defaultlib;
--use xil_defaultlib.newtype_package.all;

entity CompSecuencia_tb is
end CompSecuencia_tb;

architecture Behavioral of CompSecuencia_tb is
    component CompSecuencia is
        port(
            -- Entradas
            sec_generada      : in std_logic_vector(0 to 44); -- Secuencia generada por GenSecuancia
            boton_pulsado     : in std_logic_vector(0 to 2); -- Indica el boton que se ha pulsado
            enable            : in std_logic;
            -- Salidas
            exito             : out std_logic; -- Indica si el usuario ha acertado
            error             : out std_logic; -- Indica si el usuario ha fallado
            fin_comparacion   : out std_logic -- Indica el fin de la comparacion
        );
    end component;
    
    signal sec_generada      : std_logic_vector(0 to 44);
    signal boton_pulsado     : std_logic_vector(0 to 2);
    signal enable            : std_logic;
    signal exito             : std_logic;
    signal error             : std_logic;
    signal fin_comparacion   : std_logic;
    
    -- Declaracion del periodo
    constant periodo_clk : time := 10 ns;
    
    -- Posibles secuencias
    constant semilla0 : std_logic_vector(0 to 44) := ("010" & "011" & "001" & "011" & "000000000000000000000000000000000");
    constant semilla1 : std_logic_vector(0 to 44) := ("001" & "011" & "100" & "010" & "011" & "001" & "000000000000000000000000000");
    constant semilla2 : std_logic_vector(0 to 44) := ("010" & "011" & "100" & "001" & "010" & "100" & "010" & "011" & "000000000000000000000");
    
begin
    -- Instanciacion del componente
    uut: CompSecuencia
        port map(
            sec_generada => sec_generada,
            boton_pulsado => boton_pulsado,
            enable => enable,
            exito => exito,
            error => error,
            fin_comparacion => fin_comparacion
        );
    
    test: process
    begin
        
        enable <= '0';
        wait for periodo_clk;
        enable <= '1';
        wait for periodo_clk;
        
        
        -- Probamos con la secuencia semilla0
        sec_generada <= semilla0;
        boton_pulsado <= "000";
        wait for periodo_clk;
        
        -- Recibimos la pulsacion de botones (va a ser correcta)
        boton_pulsado <= "010"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "011"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "011"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        
        -- Probamos con la secuencia semilla1
        sec_generada <= semilla1;
        boton_pulsado <= "000";
        wait for periodo_clk;
        
        -- Recibimos la pulsacion de botones (va a ser incorrecta)
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk; -- Pulsación incorrecta
        
        -- Probamos con la secuencia semilla2
        sec_generada <= semilla2;
        boton_pulsado <= "000";
        wait for periodo_clk;
        
        -- Recibimos la pulsacion de botones (no vamos a terminar la secuencia)
        boton_pulsado <= "010"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "011"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "100"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        boton_pulsado <= "001"; wait for periodo_clk; boton_pulsado <= "000"; wait for periodo_clk;
        
        assert false
            report "SIMULACION FINALIZADA CORRECTAMENTE"
            severity failure;
    end process;
end Behavioral;
