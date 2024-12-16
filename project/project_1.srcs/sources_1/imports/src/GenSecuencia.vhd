library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GenSecuencia is
    port(
        -- Entradas
        niv_actual        : in std_logic_vector(0 to 2); -- Indica en que nivel nos encontramos 
        -- Salidas
        sec_generada      : out std_logic_vector(0 to 44) -- Secuencia generada
    );
end GenSecuencia;

architecture DATAFLOW of GenSecuencia is

    -- Tabla de secuencias para cada nivel
    constant semilla0 : std_logic_vector(0 to 44) := ("010" & "011" & "001" & "011" & "000000000000000000000000000000000");
    constant semilla1 : std_logic_vector(0 to 44) := ("001" & "011" & "100" & "010" & "011" & "001" & "000000000000000000000000000");
    constant semilla2 : std_logic_vector(0 to 44) := ("010" & "011" & "100" & "001" & "010" & "100" & "010" & "011" & "000000000000000000000");
    constant semilla3 : std_logic_vector(0 to 44) := ("010" & "100" & "001" & "010" & "011" & "010" & "011" & "100" & "001" & "010" & "000000000000000");
    constant semilla4 : std_logic_vector(0 to 44) := ("001" & "100" & "001" & "011" & "010" & "100" & "011" & "010" & "100" & "011" & "001" & "010" & "000000000");
    constant semilla5 : std_logic_vector(0 to 44) := ("011" & "001" & "010" & "100" & "001" & "011" & "010" & "100" & "010" & "011" & "001" & "100" & "010" & "011" & "000");

    signal sec_generada_s : std_logic_vector(0 to 44) := ("000000000000000000000000000000000000000000000");

begin 
    
    with niv_actual select
        sec_generada_s <= semilla0 when "000",
                          semilla1 when "001",
                          semilla2 when "010",
                          semilla3 when "011",
                          semilla4 when "100",                          
                          semilla5 when "101",
                          ("000000000000000000000000000000000000000000000") when others;
                          
    -- Asignaciones a las salidas
    sec_generada <= sec_generada_s;

end DATAFLOW;

