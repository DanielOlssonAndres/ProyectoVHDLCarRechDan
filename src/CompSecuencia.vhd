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
--library work;
--use work.newtype_package.all;
--library xil_defaultlib;
--use xil_defaultlib.newtype_package.all;

entity CompSecuencia is
    port(
        -- Entradas
        sec_generada      : in std_logic_vector(0 to 44); -- Secuencia generada por GenSecuencia
        boton_pulsado     : in std_logic_vector(0 to 2); -- Indica el boton que se ha pulsado
        enable            : in std_logic; -- Habilita la comparación
        -- Salidas
        exito             : out std_logic; -- Indica si el usuario ha acertado
        error             : out std_logic; -- Indica si el usuario ha fallado
        no_comparacion   : out std_logic -- Indica el fin de la comparacion
    );
end CompSecuencia;

architecture Behavioral of CompSecuencia is
    signal i              : integer := 0;         -- Índice actual de comparación
    signal flag_boton     : boolean := false;     -- Para evitar lecturas repetidas de la misma pulsación
    signal sec_actual     : std_logic_vector(0 to 44) := ("000000000000000000000000000000000000000000000"); -- Comprueba si la secuencia ha cambiado

begin
    process(sec_generada,boton_pulsado,enable)
    begin
        -- Inicializamos las salidas
        exito <= '0';
        error <= '0';
        no_comparacion <= '1';
        
        -- Si la secuencia ha cambiado
        if sec_generada /= sec_actual then
            i <= 0; -- Se reinicia el indice para comenzar la siguiente comparacion desde cero
            sec_actual <= sec_generada; -- Guardamos la nueva secuencia
        end if;
        
        if enable = '1' then -- Solo se ejecuta la comparacion si enable = 1
            no_comparacion <= '0';
            --exito <= '1';           -- Comptrobar
            --error <= '1';            -- Comrobar
            if sec_generada(i) = '0' and sec_generada(i + 1) = '0' and sec_generada(i + 2) = '0' then -- Hemos llegado al final de la secuencia en cuestión
                exito <= '1'; -- Exito en la comparacinon
                no_comparacion <= '1';
            else
                if boton_pulsado = "000" then -- Si no hay ningun boton pulsado
                    flag_boton <= false; -- Permitimos procesar una nueva pulsación
                elsif boton_pulsado /= "000" and flag_boton = false then -- Si hay un boton pulsado y es la primera vez que lo pulsas
                    flag_boton <= true; -- Bloqueamos la lectura hasta que el botón se libere
                    if boton_pulsado(0) = sec_generada(i) and boton_pulsado(1) = sec_generada(i + 1) and boton_pulsado(2) = sec_generada(i + 2) then -- Si el boton es el esperado
                        i <= i + 3; -- Avanzamos en la secuencia
                    elsif boton_pulsado(0) /= sec_generada(i) or boton_pulsado(1) /= sec_generada(i + 1) or boton_pulsado(2) /= sec_generada(i + 2) then -- Si el boton no es el esperado
                        error <= '1'; -- Error en la comparacion
                        no_comparacion <= '1';
                    end if;
                end if;
            end if;        
        end if;
    end process;
end Behavioral;



