library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package paquete_types is
    subtype subvec is std_logic_vector(2 downto 0);
    type vec_integrer is array(integer range <>) of subvec;
end paquete_types;

package body paquete_types is
end package body paquete_types;
