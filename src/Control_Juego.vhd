library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Juego is
    port(
        CLK             : in std_logic; -- Señal de reloj
        fin_comparacion : in std_logic; -- de CompSecuencia
        fin_secuencia   : in std_logic; -- de Controlador_de_Sec
        accion          : in std_logic; -- botón de FPGA
        RESET           : in std_logic; -- botón asíncrono de FPGA
        
        enable_CN       : out std_logic; -- enable de controlador_nivel
        enable_CompS    : out std_logic; -- enable de CompSecuencia
        enable_ContS    : out std_logic; -- enable de Controlador_de_Sec
        RESET_CN        : out std_logic  -- RESET de controlador_nivel
    );
end Control_Juego;

architecture Behavioral of Control_Juego is

    type estado is (NIVEL, SECUENCIA, COMPARAR);
    signal state : estado := NIVEL;
    signal nxt_state : estado := NIVEL; 
    
    signal enable_CN_s : std_logic := '0';
    signal enable_CompS_s : std_logic := '0';
    signal enable_ContS_s : std_logic := '0';
    signal RESET_CN_s : std_logic := '1';
    
begin

    state_register: process (RESET, CLK)
    begin
        if RESET = '0' then
            state <= NIVEL;
            RESET_CN_s <= '0';
        elsif rising_edge(CLK) then
            RESET_CN_s <= '1';
            state <= nxt_state;
        end if;
    end process;
    
    nxt_state_decod: process (RESET, CLK)
    begin
        if RESET = '0' then
            nxt_state <= NIVEL;
        elsif rising_edge(CLK) then
            case state is
                when NIVEL =>
                    if accion = '1' then
                        nxt_state <= SECUENCIA;
                    end if;
                when SECUENCIA =>
                    if fin_secuencia = '1' then
                        nxt_state <= COMPARAR;
                    end if;
                when COMPARAR =>
                    if fin_comparacion = '1' then
                        nxt_state <= NIVEL;
                    end if;
                when others =>
                    nxt_state <= NIVEL;
            end case;
        end if;
    end process;

    output_decod: process (CLK)
    begin
        if rising_edge(CLK) then
            case state is
                when NIVEL =>
                    enable_CN_s       <= '1';
                    enable_CompS_s    <= '0';
                    enable_ContS_s    <= '0';
                when SECUENCIA =>
                    enable_CN_s       <= '0';
                    enable_CompS_s    <= '0';
                    enable_ContS_s    <= '1';                
                when COMPARAR =>
                    enable_CN_s       <= '0';
                    enable_CompS_s    <= '1';
                    enable_ContS_s    <= '0';
                when others =>
                    enable_CN_s       <= '1';
                    enable_CompS_s    <= '0';
                    enable_ContS_s    <= '0';
            end case;
        end if;
    end process;

    enable_CN <= enable_CN_s;
    enable_CompS <= enable_CompS_s;
    enable_ContS <= enable_ContS_s;
    RESET_CN <= RESET_CN_s;

end Behavioral;
