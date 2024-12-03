----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2024 23:34:33
-- Design Name: 
-- Module Name: ControladorNivel - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControladorNivel is
Port ( 
        exito : in STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
        error : in STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
        reset : in STD_LOGIC;         -- Señal para reiniciar el juego
        CLK : in STD_LOGIC;           -- Señal de reloj
        nivel_actual : out STD_LOGIC_VECTOR (2 downto 0); -- Indica el nivel actual (3 bits para 5 niveles)
        avance_nivel : out STD_LOGIC; -- Indica que se debe avanzar al siguiente nivel
        reinicio_nivel : out STD_LOGIC -- Indica que se debe reiniciar el nivel
    );
end ControladorNivel;

architecture Behavioral of ControladorNivel is
     type state_type is (ESTADO_1, ESTADO_2, ESTADO_3, ESTADO_4, ESTADO_5);
    signal estado_actual, estado_siguiente : state_type;
begin
   -- Cambios de estado
    process (CLK, reset)
    begin
        if reset = '1' then
            estado_actual <= ESTADO_1; -- Reiniciar al primer estado
        elsif rising_edge(CLK) then
            estado_actual <= estado_siguiente; -- Actualizar al siguiente estado
        end if;
    end process;

    -- Lógica de transición de estados
    process (estado_actual, exito, error)
    begin
        -- Valores Iniciales
        avance_nivel <= '0';
        reinicio_nivel <= '0';
        nivel_actual <= "000";

        case estado_actual is
            when ESTADO_1 =>
                nivel_actual <= "001";
                if exito = '1' then
                    estado_siguiente <= ESTADO_2;
                    avance_nivel <= '1';
                elsif error = '1' then
                    estado_siguiente <= ESTADO_1;
                    reinicio_nivel <= '1';
                else
                    estado_siguiente <= ESTADO_1;
                end if;

            when ESTADO_2 =>
                nivel_actual <= "010";
                if exito = '1' then
                    estado_siguiente <= ESTADO_3;
                    avance_nivel <= '1';
                elsif error = '1' then
                    estado_siguiente <= ESTADO_1;
                    reinicio_nivel <= '1';
                else
                    estado_siguiente <= ESTADO_2;
                end if;

            when ESTADO_3 =>
                nivel_actual <= "011";
                if exito = '1' then
                    estado_siguiente <= ESTADO_4;
                    avance_nivel <= '1';
                elsif error = '1' then
                    estado_siguiente <= ESTADO_1;
                    reinicio_nivel <= '1';
                else
                    estado_siguiente <= ESTADO_3;
                end if;

            when ESTADO_4 =>
                nivel_actual <= "100";
                if exito = '1' then
                    estado_siguiente <= ESTADO_5;
                    avance_nivel <= '1';
                elsif error = '1' then
                    estado_siguiente <= ESTADO_1;
                    reinicio_nivel <= '1';
                else
                    estado_siguiente <= ESTADO_4;
                end if;

            when ESTADO_5 =>
                nivel_actual <= "101";
                if error = '1' then
                    estado_siguiente <= ESTADO_1;
                    reinicio_nivel <= '1';
                else
                    estado_siguiente <= ESTADO_5;
                end if;

            when others =>
                estado_siguiente <= ESTADO_1;
        end case;
    end process;

end Behavioral;
