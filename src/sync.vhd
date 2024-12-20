library ieee;
use ieee.std_logic_1164.ALL;

entity sync is
    port (
    CLK : in std_logic;
    ASYNC_IN : in std_logic;
    SYNC_OUT : out std_logic
    );
end sync;

architecture Behavioral of sync is
    signal sreg : std_logic_vector(1 downto 0);
    begin
        process (CLK)
        begin
            if rising_edge(CLK) then
            sync_out <= sreg(1);
            sreg <= sreg(0) & async_in;
            end if;
        end process;
end Behavioral;
