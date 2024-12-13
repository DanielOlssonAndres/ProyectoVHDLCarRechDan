----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2024 12:39:55
-- Design Name: 
-- Module Name: CodBotones - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CodBotones is
    port(
        -- Entradas
        boton1          : in std_logic; -- Boton 1
        boton2          : in std_logic; -- Boton 2
        boton3          : in std_logic; -- Boton 3
        boton4          : in std_logic; -- Boton 4
        -- Salidas
        boton_pulsado   : out integer -- El numero equivale al boton que se ha pulsado
    );
end CodBotones;

architecture Behavioral of CodBotones is
    signal salida : integer := 0; -- Registro del output de la entidad

begin
    process (boton1, boton2, boton3, boton4)
    begin
        if boton1 = '1' then
            salida <= 1; -- Boton 1 pulsado
        elsif boton2 = '1' then
            salida <= 2; -- Boton 2 pulsado
        elsif boton3 = '1' then
            salida <= 3; -- Boton 3 pulsado
        elsif boton4 = '1' then
            salida <= 4; -- Boton 4 pulsado
        else
            salida <= 0; -- Ningun boton pulsado
        end if;
    end process;
    
    boton_pulsado <= salida; -- Guardo el registro en la salida
end Behavioral;
