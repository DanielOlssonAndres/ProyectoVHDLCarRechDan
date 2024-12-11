library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edgecntr is
    port (
        CLK : in std_logic;
        SYNC_IN : in std_logic;
        EDGE : out std_logic
    );
end edgecntr;

architecture BEHAVIORAL of edgecntr is
    signal sreg : std_logic_vector(1 downto 0) := "00";
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            -- Registro de desplazamiento
            sreg <= sreg(0) & SYNC_IN;
        end if;
    end process;

    -- Generación de la señal EDGE
    EDGE <= '1' when (sreg = "01") else '0'; -- Detecta un flanco de subida
end BEHAVIORAL;
