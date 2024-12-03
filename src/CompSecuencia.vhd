----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2024 18:47:19
-- Design Name: 
-- Module Name: CompSecuencia - Behavioral
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
use work.paquete_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CompSecuencia is
    port(
        -- Entradas
        sec_generada      : in vec_integrer(0 to 13); -- Secuencia generada por GenSecuancia
        boton_pulsado     : in integer; -- Indica el boton que se ha pulsado
        -- Salidas
        exito             : out std_logic; -- Indica si el usuario ha acertado
        error             : out std_logic; -- Indica si el usuario ha fallado
        fin_comparacion   : out std_logic -- Indica el fin de la comparacion
    );
end CompSecuencia;

architecture Behavioral of CompSecuencia is

begin


end Behavioral;
