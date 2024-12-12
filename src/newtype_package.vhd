----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2024 20:16:33
-- Design Name: 
-- Module Name: newtype_package - Behavioral
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

package newtype_package is
    subtype subvec is std_logic_vector(2 downto 0);
    type vec_integrer is array(integer range <>) of subvec;
end newtype_package;

package body newtype_package is
end package body paquete_types;
