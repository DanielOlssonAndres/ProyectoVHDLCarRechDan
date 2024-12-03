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
    signal i : integer := 0; -- Indice del vector sec_generada
    signal terminado : boolean := false; -- Indica si ha terminado la comparacion
    signal flag_boton : boolean := false; -- Para evitar que un boton se lea dos veces
    
begin
    process(sec_generada,boton_pulsado)
    begin
        -- Inicializamos las señales de salida a 0
        if terminado = false then
            exito <= '0';
            error <= '0';
            fin_comparacion <= '0';
        else -- Si terminado = true entonces reinicio el indice
            i <= 0;
        end if;
        
        -- Para evitar que se lea dos veces el mismo boton
        if boton_pulsado = 0 then -- Si no se detecta ningun boton la entrada seria cero
            flag_boton <= false; -- Reseteo el flag si ya no se detecta ningun boton
        end if;
        
        -- Comparacion de boton con la secuencia
        if boton_pulsado /= 0 and flag_boton = false and terminado = false then
        -- Si hay un boton pulsado, el flag esta desactivado y no se ha terminado la comparacion ya
            flag_boton <= true; -- Activo el flag de boton
            
            if sec_generada(i) = 0 then
                exito <= '1'; -- Comparacion con exito
                fin_comparacion <= '1'; -- Ha terminado la comparacion
                terminado <= true;
            elsif boton_pulsado = sec_generada(i) then -- Si el boton pulsado coincide con el de la secuencia
                i <= i + 1; -- Avanzamos a la siguiente posicion
            else -- Si el boton pulsado no coincide con el de la secuencia
                error <= '1'; -- En la comparacion habia un error
                fin_comparacion <= '1'; -- Ha terminado la comparacion
                terminado <= true;
            end if;
        end if;
    end process;
end Behavioral;
