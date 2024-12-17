library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
    port (
        -- Entradas
        CLK_top             : in std_logic; --  Reloj de entrada de la placa
        RESET_top           : in std_logic; -- Botón de reset asíncrono de la placa
        accion_top          : in std_logic; -- Botón para iniciar la reproducción de la secuencia a repetir
        boton_top           : in std_logic_vector(1 to 4); -- Botonera para introducir la secuencia
        -- Salidas
        display_top         : out std_logic_vector(6 downto 0); -- Salida para el display de 7 segmentos
        enable_display_top  : out std_logic_vector(7 downto 0); -- Habilita la cifra del display
        led_top             : out std_logic_vector(4 downto 1) -- LEDs de salida
    );
end TOP;

architecture STRUCTURAL of TOP is
    
    -- signal CLK_crudo : std_logic := '0';
    signal CLK_s : std_logic := '0';
    
    -- signal RESET : std_logic := '1';
    -- signal accion_s : std_logic := '0';
    signal accionsync : std_logic := '0';
    signal accion : std_logic := '0';
    -- signal boton_s : std_logic_vector(1 to 4) := "0000";
    signal botonsync : std_logic_vector(1 to 4) := "0000";
    signal boton : std_logic_vector(1 to 4) := "0000";

    signal fin_comparacion_s : std_logic;
    signal fin_secuencia_s   : std_logic; -- de Controlador_de_Sec      
    signal enable_CN_s       : std_logic; -- enable de controlador_nivel
    signal enable_CompS_s    : std_logic; -- enable de CompSecuencia
    signal enable_ContS_s    : std_logic; -- enable de Controlador_de_Sec
    signal RESET_CN_s        : std_logic;  -- RESET de controlador_nivel
    
    signal exito_s : STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
    signal error_s : STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
    signal nivel_actual_s : std_logic_vector(0 to 2);    -- Indica el nivel actual (3 bits para 5 niveles)
    signal sec_generada_s : std_logic_vector(0 to 44); -- Secuencia generada
    
    signal emitir_elemento_s  : std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
    signal elemento_s         : std_logic_vector(0 to 2); -- elemento de la secuencia que es emitido
    signal pedir_tiempo_s     : std_logic; -- Pide a un temporizador que empiece a contar
    
    -- signal display_s : std_logic_vector(6 downto 0); -- Salida para el display de 7 segmentos
    -- signal enable_display_s : std_logic; -- Habilita la cifra del display
   
    -- signal led_s : std_logic_vector(4 downto 1); -- leds de salida     
    
    signal boton_pulsado_s : std_logic_vector(0 to 2);
    
    component DivisorReloj is
        generic (
            FREC_SALIDA : integer := 100_000 -- Frecuencia de salida en Hz
        );
        port (
            clk_in   : in  std_logic; -- Reloj de entrada de la placa: 100 MHz
            clk_out  : out std_logic  -- Reloj de salida: 1 MHz
        );
    end component;

    component sync is
        port (
        CLK : in std_logic;
        ASYNC_IN : in std_logic;
        SYNC_OUT : out std_logic
        );
    end component;
    
    component EDGEDTCTR is
        port (
            CLK : in std_logic;
            SYNC_IN : in std_logic;
            EDGE : out std_logic
        );
    end component;
    
    component Control_Juego is
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
    end component;
    
    component controlador_nivel is
    port ( 
        exito : in STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
        error : in STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
        reset : in STD_LOGIC;         -- Señal para reiniciar el juego (activo bajo)
        CLK : in STD_LOGIC;           -- Señal de reloj
        enable : in std_logic;        -- Señal para habilitar el funcionamiento
        nivel_actual : out std_logic_vector(0 to 2)    -- Indica el nivel actual (3 bits para 5 niveles)
    );
   end component;
   
   component GenSecuencia is
    port(
        niv_actual        : in std_logic_vector(0 to 2); -- Indica en que nivel nos encontramos 
        sec_generada      : out std_logic_vector(0 to 44) -- Secuencia generada
    );
    end component;

    component Controlador_de_Sec is
    generic( TAMSEC: integer := 14 );
    port(
        secuencia        : in std_logic_vector(0 to (3*TAMSEC) + 2); -- Secuencia de entrada
        emitir_elemento  : in std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
        CLK              : in std_logic; -- Reloj del sistema
        enable           : in std_logic; 
        
        elemento         : out std_logic_vector(0 to 2); -- elemento de la secuencia que es emitido
        fin_secuencia    : out std_logic; -- Salida que indica que se ha llegado al final de la secuencia de entrada
        pedir_tiempo     : out std_logic -- Pide a un temporizador que empiece a contar
    );
    end component;


    component temporizador is
    generic (
        CLK_FREQ : integer := 100_000_000;  -- Frecuencia del reloj en Hz
        TIEMPO   : integer := 2            -- Tiempo a contar en segundos
    );
    port (
        CLK            : in  std_logic;    -- Señal de reloj
        iniciar_cuenta : in  std_logic;    -- Señal para iniciar la cuenta
        fin_tiempo     : out std_logic     -- Señal que indica que el temporizador ha acabado
    );
    end component;

    component decod_display is
    Port (
        nivel_actual    : in std_logic_vector(0 to 2); -- Nivel actual (3 bits)
        display         : out std_logic_vector(6 downto 0); -- Salida para el display de 7 segmentos
        enable_display  : out std_logic_vector(7 downto 0) -- Habilita la cifra del display
    );
    end component;
    
    component Decod_Leds_Sec is
    generic( NLEDS: integer := 4 );
    port(
        ledDeSecuencia  : in std_logic_vector(0 to 2); -- Entero que simboliza el led que queremos encender
        led             : out std_logic_vector(NLEDS downto 1) -- leds de salida     
    );
    end component;
    
    component CodBotones is
    port(
        -- Entradas
        boton          : in std_logic_vector(1 to 4); -- Boton 1
        -- Salidas
        boton_pulsado   : out std_logic_vector(0 to 2) -- El numero equivale al boton que se ha pulsado
    );
    end component;
    
    component CompSecuencia is
    port(
        -- Entradas
        CLK               : in std_logic;        -- Señal de reloj
        enable            : in std_logic;        -- Habilita la comparación
        sec_generada      : in std_logic_vector(0 to 44); -- Secuencia generada por GenSecuencia
        boton_pulsado     : in std_logic_vector(0 to 2); -- Indica el botón que se ha pulsado
        -- Salidas
        exito             : out std_logic;       -- Indica si el usuario ha acertado
        error             : out std_logic;       -- Indica si el usuario ha fallado
        fin_comparacion   : out std_logic        -- Indica el fin de la comparación
    );
    end component;
begin
    
    inst_DivisorReloj: DivisorReloj
        generic map( FREC_SALIDA => 100_000 )
        port map(
            clk_in   => CLK_top,
            clk_out  => CLK_s
        );

    loopsync: for i in 1 to 4 generate
        inst_sync: sync
            port map(
                CLK => CLK_s,
                ASYNC_IN => boton_top(i),
                SYNC_OUT => botonsync(i)
            );
    end generate;
    inst_sync: sync
        port map(
            CLK => CLK_s,
            ASYNC_IN => accion_top,
            SYNC_OUT => accionsync
        );
        
        
    loopedge: for i in 1 to 4 generate
        inst_edge: EDGEDTCTR
            port map(
                CLK => CLK_s,
                SYNC_IN => botonsync(i),
                EDGE => boton(i)
            );  
    end generate;
    inst_EDGEDTCTR: EDGEDTCTR
        port map(
            CLK => CLK_s,
            SYNC_IN => accionsync,
            EDGE => accion
        );
    
    inst_Control_Juego: Control_Juego
        port map(
        CLK             => CLK_s,
        fin_comparacion => fin_comparacion_s,
        fin_secuencia   => fin_secuencia_s,
        accion          => accion,
        RESET           => RESET_top,
        enable_CN       => enable_CN_s,
        enable_CompS    => enable_CompS_s,
        enable_ContS    => enable_ContS_s,
        RESET_CN        => RESET_CN_s
    );
    
    inst_controlador_nivel: controlador_nivel    
        port map( 
        exito => exito_s,
        error => error_s,
        reset => RESET_CN_s,
        CLK => CLK_s,
        enable => enable_CN_s,
        nivel_actual => nivel_actual_s
        );
    
    inst_GenSecuencia: GenSecuencia 
        port map(
        niv_actual        => nivel_actual_s,
        sec_generada      => sec_generada_s
        );
    
    inst_CondeSec: Controlador_de_Sec
        generic map ( TAMSEC => 14 )
        port map(
        secuencia        => sec_generada_s,
        emitir_elemento  => emitir_elemento_s,
        CLK              => CLK_s,
        enable           => enable_ContS_s, 
        elemento         => elemento_s,
        fin_secuencia    => fin_secuencia_s,
        pedir_tiempo     => pedir_tiempo_s
        );
 
    inst_temporizador: temporizador
        generic map(
        CLK_FREQ => 100_000,
        TIEMPO   => 1           
        ) 
        port map(
        CLK            => CLK_s,
        iniciar_cuenta => pedir_tiempo_s,
        fin_tiempo     => emitir_elemento_s
        );
    
    inst_decdis: decod_display
        Port map(
        nivel_actual    => nivel_actual_s,
        display         => display_top,
        enable_display  => enable_display_top
        );
    
    inst_DLS: Decod_Leds_Sec
        generic map( NLEDS => 4 )
        port map(
        ledDeSecuencia  => elemento_s,
        led             => led_top     
        );
    
    inst_CodBotones: CodBotones
        port map(
        boton          => boton_top,
        boton_pulsado  => boton_pulsado_s
        );
        
    inst_CompSecuencia: CompSecuencia
        port map(
        CLK               => CLK_s,
        enable            => enable_CompS_s,
        sec_generada      => sec_generada_s,
        boton_pulsado     => boton_pulsado_s,
        exito             => exito_s,
        error             => error_s,
        fin_comparacion   => fin_comparacion_s
        );
    
    
end architecture;
