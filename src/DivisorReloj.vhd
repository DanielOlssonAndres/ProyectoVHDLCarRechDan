----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2024 19:55:57
-- Design Name: 
-- Module Name: DivisorReloj - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DivisorReloj is
    port (
        -- Entradas
        clk_in   : in  std_logic; -- Reloj de entrada de la placa: 100 MHz
        reset    : in  std_logic; -- Reset asincrono
        -- Salidas
        clk_out  : out std_logic  -- Reloj de salida: 1 MHz
    );
end DivisorReloj;

architecture Behavioral of DivisorReloj is
    signal contador : integer := 0; -- Counter to divide clock
    signal clk_temp : std_logic := '0'; -- Temporary output clock signal
begin
    process(clk_in, reset)
    begin
        if reset = '1' then
            contador <= 0;
            clk_temp <= '0';
        elsif rising_edge(clk_in) then
            if contador = 49 then
                contador <= 0;
                clk_temp <= not clk_temp; -- Toggle the output clock
            else
                contador <= contador + 1;
            end if;
        end if;
    end process;
    clk_out <= clk_temp;
end Behavioral;
