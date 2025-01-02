library ieee;
use ieee.std_logic_1164.ALL;

entity GenSecuencia_tb is
end GenSecuencia_tb;

architecture Behavioral of GenSecuencia_tb is
    
    component GenSecuencia is
        port(
            -- Entradas
           niv_actual        : in std_logic_vector(0 to 2); -- Indica en que nivel nos encontramos 
           sec_generada      : out std_logic_vector(0 to 44) -- Secuencia generada
        );
    end component;
    
    -- Señales para el testbench
    signal niv_actual    : std_logic_vector(0 to 2); 
    signal sec_generada  : std_logic_vector(0 to 44);

begin
    uut: GenSecuencia
        port map(
            niv_actual => niv_actual, 
            sec_generada => sec_generada
        );    

   
     test: process
    begin
        -- Inicialización
        niv_actual <= "000";
        wait for 20 ns;

        -- Prueba generación de secuencia para cada nivel
        niv_actual <= "000";
        wait for 20 ns;
        assert sec_generada = "010011001011000000000000000000000000000000000"
            report "[ERROR]: Secuencia incorrecta para nivel 000" severity error;

        niv_actual <= "001";
        wait for 20 ns;
        assert sec_generada = "001011100010011001000000000000000000000000000"
            report "[ERROR]: Secuencia incorrecta para nivel 001" severity error;

        niv_actual <= "010";
        wait for 20 ns;
        assert sec_generada = "010011100001010100010011000000000000000000000"
            report "[ERROR]: Secuencia incorrecta para nivel 010" severity error;

        niv_actual <= "011";
        wait for 20 ns;
        assert sec_generada = "010100001010011010011100001010000000000000000"
            report "[ERROR]: Secuencia incorrecta para nivel 011" severity error;

        niv_actual <= "100";
        wait for 20 ns;
        assert sec_generada = "001100001011010100011010100011001010000000000"
            report "[ERROR]: Secuencia incorrecta para nivel 100" severity error;

        niv_actual <= "101";
        wait for 20 ns;
        assert sec_generada = "011001010100100001011010100010011001100010011"
            report "[ERROR]: Secuencia incorrecta para nivel 101" severity error;

        -- Valor por defecto para nivel fuera de rango
        niv_actual <= "111";
        wait for 20 ns;
        assert sec_generada = "000000000000000000000000000000000000000000000"
            report "[ERROR]: Secuencia incorrecta para nivel fuera de rango" severity error;

        -- Fin de simulación
        wait for 20 ns;
        assert false
            report "[FIN SIMULACION]: Todas las pruebas pasaron correctamente"
            severity failure;
    end process;

end Behavioral;

