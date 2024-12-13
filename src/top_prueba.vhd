library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_prueba is
    generic(
        TAMSEC : integer := 14 -- Tamaño de la secuencia
    );
    port(
        -- Entradas generales
        niv_actual        : in std_logic_vector(0 to 2); -- Nivel actual
        bot_accion        : in std_logic; -- Evento de inicio del generador
        s_enable          : in std_logic; -- Habilitación del generador
        emitir_elemento   : in std_logic; -- Solicitud de emisión de un elemento
        CLK               : in std_logic; -- Señal de reloj

        -- Salidas generales
        elemento          : out std_logic_vector(0 to 2); -- Elemento emitido por el controlador
        fin_secuencia     : out std_logic; -- Fin de la secuencia
        pedir_tiempo      : out std_logic -- Solicitud de temporización
        -- sec_generada      : out std_logic_vector(0 to 44) -- Secuencia generada
        -- sec_lista         : out std_logic -- Indicación de que la secuencia está lista
    );
end top_prueba;

architecture STRUCTURAL of top_prueba is
    
    component GenSecuencia is
        port(
            -- Entradas
            niv_actual        : in std_logic_vector(0 to 2); -- Indica en que nivel nos encontramos 
            bot_accion        : in std_logic; -- Evento de inicio de generador
            s_enable          : in std_logic; -- Si = 0, no se generan secuencias
            CLK              : in std_logic; -- Reloj del sistema
            -- Salidas
            sec_generada      : out std_logic_vector(0 to 44); -- Secuencia generada
            sec_lista         : out std_logic
        );
    end component;
    
    component Controlador_de_Sec is
        generic( TAMSEC: integer := 14 );
        port(
            secuencia        : in std_logic_vector(0 to 44); -- Secuencia de entrada
            emitir_elemento  : in std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
            CLK              : in std_logic; -- Reloj del sistema
            sec_lista        : in std_logic;
        
            elemento         : out std_logic_vector(0 to 2); -- elemento de la secuencia que es emitido
            fin_secuencia    : out std_logic; -- Salida que indica que se ha llegado al final de la secuencia de entrada
            pedir_tiempo     : out std_logic -- Pide a un temporizador que empiece a contar
        );
    end component;
    
    -- Señales internas para conectar los componentes
    signal secuencia_interna : std_logic_vector(0 to 44);
    signal sec_lista_interna : std_logic;

begin
    -- Instancia del generador de secuencia
    inst_GenSecuencia: GenSecuencia
        port map(
            niv_actual   => niv_actual,       -- Nivel actual
            bot_accion   => bot_accion,       -- Evento de inicio
            s_enable     => s_enable,         -- Habilitación
            CLK          => CLK,             -- Reloj
            sec_generada => secuencia_interna,    -- Secuencia generada (salida conectada al puerto externo)
            sec_lista    => sec_lista_interna -- Señal interna para conexión con el controlador
        );

    -- Instancia del controlador de secuencia
    inst_Controlador_de_Sec: Controlador_de_Sec
        generic map(
            TAMSEC => TAMSEC -- Tamaño de la secuencia
        )
        port map(
            secuencia      => secuencia_interna, -- Secuencia de entrada
            emitir_elemento => emitir_elemento,  -- Solicitud de emisión
            CLK            => CLK,              -- Reloj
            sec_lista      => sec_lista_interna, -- Señal lista desde el generador
            elemento       => elemento,         -- Elemento emitido (salida conectada al puerto externo)
            fin_secuencia  => fin_secuencia,    -- Fin de la secuencia (salida conectada al puerto externo)
            pedir_tiempo   => pedir_tiempo      -- Solicitud de temporización (salida conectada al puerto externo)
        );
end STRUCTURAL;

