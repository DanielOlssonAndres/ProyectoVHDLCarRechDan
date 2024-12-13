----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2024 17:10:44
-- Design Name: 
-- Module Name: CompSecuencia_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.newtype_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CompSecuencia_tb is
end CompSecuencia_tb;

architecture Behavioral of CompSecuencia_tb is
    component CompSecuencia is
        port(
            -- Entradas
            sec_generada      : in vec_enteros(0 to 14); -- Secuencia generada por GenSecuancia
            boton_pulsado     : in integer; -- Indica el boton que se ha pulsado
            enable            : in std_logic;
            -- Salidas
            exito             : out std_logic; -- Indica si el usuario ha acertado
            error             : out std_logic; -- Indica si el usuario ha fallado
            fin_comparacion   : out std_logic -- Indica el fin de la comparacion
        );
    end component;
    
    signal sec_generada      : vec_enteros(0 to 14);
    signal boton_pulsado     : integer;
    signal enable            : std_logic;
    signal exito             : std_logic;
    signal error             : std_logic;
    signal fin_comparacion   : std_logic;
    
    -- Declaracion del periodo
    constant periodo_clk : time := 10 ns;
    
    -- Posibles secuencias
    constant semilla0 : vec_enteros(0 to 14) := (2, 3, 1, 3, others => 0);
    constant semilla1 : vec_enteros(0 to 14) := (1, 1, 4, 2, 3, 1, others => 0);
    constant semilla2 : vec_enteros(0 to 14) := (2, 3, 4, 1, 1, 4, 2, 3, others => 0);
    
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
        boton_pulsado <= 0;
        wait for periodo_clk;
        
        -- Recibimos la pulsacion de botones (va a ser correcta)
        boton_pulsado <= 2; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 3; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 1; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 3; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        
        -- Probamos con la secuencia semilla1
        sec_generada <= semilla1;
        boton_pulsado <= 0;
        wait for periodo_clk;
        
        -- Recibimos la pulsacion de botones (va a ser incorrecta)
        boton_pulsado <= 1; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 1; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 4; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 3; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk; -- Pulsación incorrecta
        
        -- Probamos con la secuencia semilla2
        sec_generada <= semilla2;
        boton_pulsado <= 0;
        wait for periodo_clk;
        
        -- Recibimos la pulsacion de botones (no vamos a terminar la secuencia)
        boton_pulsado <= 2; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 3; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 4; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        boton_pulsado <= 1; wait for periodo_clk; boton_pulsado <= 0; wait for periodo_clk;
        
        assert false
            report "SIMULACION FINALIZADA CORRECTAMENTE"
            severity failure;
    end process;
end Behavioral;
