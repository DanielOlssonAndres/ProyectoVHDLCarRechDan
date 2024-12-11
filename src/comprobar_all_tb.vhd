library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity comprobar_all_tb is
end comprobar_all_tb;

architecture STRUCTURAL of comprobar_all_tb is

-- Comparador de Secuencia
    component CompSecuencia is
        port(
           -- Entradas
            sec_generada      : in vec_integrer(0 to 14); -- Secuencia generada por GenSecuencia
            boton_pulsado     : in integer; -- Indica el boton que se ha pulsado
            enable            : in std_logic; -- Habilita la comparación
            -- Salidas
            exito             : out std_logic; -- Indica si el usuario ha acertado
            error             : out std_logic; -- Indica si el usuario ha fallado
            fin_comparacion   : out std_logic -- Indica el fin de la comparacion
        );
    end component;

-- Codificador de Botones
    component CodBotones is
        port(
            -- Entradas
            boton1          : in std_logic; -- Boton 1
            boton2          : in std_logic; -- Boton 2
            boton3          : in std_logic; -- Boton 3
            boton4          : in std_logic; -- Boton 4
            -- Salidas
            boton_pulsado   : out integer range 0 to 4 -- El numero equivale al boton que se ha pulsado
        );
    end component;
    
-- Controlador de Secuencia
    component Controlador_de_Sec is
        generic( TAMSEC: integer := 14 );
        port(
            secuencia        : in vec_integrer(0 to TAMSEC); -- Secuencia de entrada
            emitir_elemento  : in std_logic; -- Evento que indica que un elemento de la secuencia debe emitirse
            CLK              : in std_logic; -- Reloj del sistema
            sec_lista        : in std_logic;
        
            elemento         : out integer; -- elemento de la secuencia que es emitido
            fin_secuencia    : out std_logic; -- Salida que indica que se ha llegado al final de la secuencia de entrada
            pedir_tiempo     : out std_logic -- Pide a un temporizador que empiece a contar
        );
    end component;
    
-- Decodificador de Leds de Secuencia
    component Decod_Leds_Sec is
        generic( NLEDS: integer := 4 );
        port(
            ledDeSecuencia  : in integer; -- Entero que simboliza el led que queremos encender
            CLK             : in std_logic; -- Señal de reloj para sincronización
            RESET           : in std_logic; -- Reset asíncrono que apaga todos los leds
            led             : out std_logic_vector(NLEDS downto 1) := (others => '0') -- leds de salida     
        );
    end component;

-- Generador de Secuencia
    component GenSecuencia is
        port(
            -- Entradas
            niv_actual        : in integer; -- Indica en que nivel nos encontramos 
            bot_accion        : in std_logic; -- Evento de inicio de generador
            s_enable          : in std_logic; -- Si = 0, no se generan secuencias
            CLK              : in std_logic; -- Reloj del sistema
            -- Salidas
            sec_generada      : out vec_integrer(0 to 14); -- Secuencia generada
            sec_lista         : out std_logic
        );
    end component;
    
-- Decodificador de Display
    component decod_display is
        Port (
            nivel_actual    : in integer; -- Nivel actual (3 bits)
            CLK             : in STD_LOGIC;                            -- Señal de reloj
            display         : out STD_LOGIC_VECTOR(6 downto 0);     -- Salida para el display de 7 segmentos
            enable_display  : out STD_LOGIC -- Habilita la cifra del display
        );
    end component;
    
-- Sincronizador de Botones 
    component sync is
        port (
            CLK : in std_logic;
            ASYNC_IN : in std_logic;
            SYNC_OUT : out std_logic
        );
    end component;
 
-- Detector de Flancos
    component edgecntr is
       port (
           CLK : in std_logic;
            SYNC_IN : in std_logic;
            EDGE : out std_logic
        );
    end component;
    
-- Sistema Antirrebotes
    component debouncer is
        Port (
            BUTTON_IN : in std_logic; -- Entrada con rebotes
            CLK       : in std_logic; -- Señal de reloj
            BUTTON_OUT : out std_logic -- Salida filtrada
        );
    end component;
    
    
-- Temporizador
    component temporizador is
        generic (
            CLK_FREQ   : integer := 1_000_000;  -- Frecuencia del reloj en Hz
            TIEMPO     : integer := 1            -- Tiempo a contar en segundos
        );
        port (
            CLK              : in  std_logic;    -- Señal de reloj
            iniciar_cuenta   : in  std_logic;    -- Señal para iniciar la cuenta
            fin_tiempo       : out std_logic     -- Señal que indica que el temporizador ha acabado
        );
    end component;
   
-- Divisor de Reloj
    component DivisorReloj is
        generic (
            FREC_SALIDA : integer := 1_000_000 -- Frecuencia de salida en Hz
        );
        port (
            -- Entradas
            clk_in   : in  std_logic; -- Reloj de entrada de la placa: 100 MHz
            reset    : in  std_logic; -- Reset asincrono
            -- Salidas
            clk_out  : out std_logic  -- Reloj de salida: 1 MHz
        );
    end component;
    
-- Controlador de Nivel
    component controlador_nivel is
    Port ( 
        exito : in STD_LOGIC;         -- Indica si el nivel actual fue superado con éxito
        error : in STD_LOGIC;         -- Indica si ocurrió un error en el nivel actual
        reset : in STD_LOGIC;         -- Señal para reiniciar el juego
        CLK : in STD_LOGIC;           -- Señal de reloj
        nivel_actual : out integer -- Indica el nivel actual (3 bits para 5 niveles)
    );
end component;

-- Señales para conexiones
    signal CLK_adap : std_logic;
    signal sec_generada_s : vec_integrer(0 to 14);
    signal nivel_actual_s : integer;
    signal boton_pulsado_s : integer;
    signal enable_s : std_logic;
    signal pedir_tiempo_s : std_logic;
    signal fin_tiempo_s : std_logic;
    signal led_a_encender : integer;
    signal sec_lista_s : std_logic;
    --signal reset_s : std_logic;
    signal exito_s : std_logic;
    signal error_s : std_logic;
    signal fin_comparacion_s : std_logic;
    -------------
    signal boton_sync_deb_s : std_logic_vector(4 downto 1); -- BOTONES QUE SALEN DEL ANTIRREBOTES
    signal boton_sync_s : std_logic_vector(4 downto 1); -- BOTONES QUE SALEN DEL SYNC Y ENTRAN AL ANTIRREBOTES
    signal boton_listo : std_logic_vector(4 downto 1); -- SEÑAL DE BOTONES SINCRONCIZADA, ANTIRREBOTES Y CON DETECTOR DE FLANCO
    ------------
    signal accion_sync_deb_s : std_logic; -- BOTÓN ACCIÓN QUE SALE DEL ANTIRREBOTES
    signal accion_sync_s : std_logic; -- BOTÓN ACCIÓN QUE SALE DEL SYNC Y ENTRA AL ANTIRREBOTES
    signal accion_listo : std_logic; -- SEÑAL DE ACCIÓN SINCRONCIZADA, ANTIRREBOTES Y CON DETECTOR DE FLANCO
    
    
    -- Entradas y salidas de TOP
    signal RESET_top           : std_logic := '1'; -- Botón de RESET asíncrono
    signal boton_top           : std_logic_vector(4 downto 1); -- Botones/Pulsadores con los que se juega
    signal accion_top          : std_logic := '0'; -- Botón de acción del juego, que inicia la generación de secuencias
    signal CLK_top             : std_logic := '0'; -- Entrada del reloj de la FPGA
    
    signal led_top             : std_logic_vector(4 downto 1); -- Leds que producen la secuencia del juego
    signal display_top         : std_logic_vector(7 - 1 downto 0); -- Segmentos del display a controlar
    signal enable_display_top  : std_logic; -- Habilita la cifra del display
    
    constant periodo_clk : time := 10 ns;
    -- Fin

begin -------------------------------------------------- INSTANCIACIÓN DE COMPONENTES -----------------------------

---- ACONDICIONAMIENTO DE ENTRADAS ---------------------------------------------

-- Las señales de los botones externos entran al sincronizador
    inst_sync: for i in 1 to 4 generate
        botones_sync: sync
            port map (
                CLK      => CLK_adap,        
                ASYNC_IN => boton_top(i),
                SYNC_OUT => boton_sync_deb_s(i)
            );
    end generate;
    inst_sync_accion: sync 
        port map(
            CLK        => CLK_adap,
            ASYNC_IN   => accion_top,
            SYNC_OUT   => accion_sync_deb_s
        );

-- Las señales que salen del sincronizador pasan al sistema antirrebotes
--    inst_debouncer: for i in 1 to 4 generate
--        botones_debouncer: debouncer
--            port map (
--                BUTTON_IN    => boton_sync_s(i),
--                CLK          => CLK_adap,
--                BUTTON_OUT   => boton_sync_deb_s(i)
--            );
--    end generate;
--    inst_debouncer_accion: debouncer 
--        port map (
--            BUTTON_IN    => accion_sync_s,
--            CLK          => CLK_adap,
--            BUTTON_OUT   => accion_sync_deb_s
--        );

-- Las señales que salen del antirrebotes entran al detector de flanco
    inst_edgecntr: for i in 1 to 4 generate
        botones_edgecntr: edgecntr
            port map (
                CLK       => CLK_adap,
                SYNC_IN   => boton_sync_deb_s(i),
                EDGE      => boton_listo(i)
            );
    end generate;
    inst_edgecntr_accion: edgecntr 
        port map (
            CLK       => CLK_adap,
            SYNC_IN   => accion_sync_deb_s,
            EDGE      => accion_listo
        );

------------------------------------------------------------------------------------

    inst_CompSecuencia: CompSecuencia 
        port map(
            sec_generada     => sec_generada_s,
            boton_pulsado    => boton_pulsado_s,
            enable           => enable_s,
            exito            => exito_s,
            error            => error_s,
            fin_comparacion  => fin_comparacion_s
        );

    inst_CodBotones: CodBotones 
        port map(
            boton1          => boton_listo(1),
            boton2          => boton_listo(2),
            boton3          => boton_listo(3),
            boton4          => boton_listo(4),
            boton_pulsado   => boton_pulsado_s
        );
        
    inst_GenSecuencia: GenSecuencia 
        port map(
            niv_actual        => nivel_actual_s,
            bot_accion        => accion_listo,
            s_enable          => fin_comparacion_s,
            CLK               => CLK_adap,
            sec_generada      => sec_generada_s,
            sec_lista         => sec_lista_s
        );
        
    inst_Controlador_de_Sec: Controlador_de_Sec 
        generic map( TAMSEC => 14 )
        port map(
            secuencia        => sec_generada_s,
            emitir_elemento  => fin_tiempo_s,
            CLK              => CLK_adap,
            sec_lista        => sec_lista_s,
            elemento         => led_a_encender,
            fin_secuencia    => enable_s,
            pedir_tiempo     => pedir_tiempo_s
        );
        
    inst_Decod_Leds_Sec: Decod_Leds_Sec 
        generic map( NLEDS => 4 )
        port map(
            ledDeSecuencia  => led_a_encender,
            CLK             => CLK_adap,
            RESET           => RESET_top,
            led(1)          => led_top(1),
            led(2)          => led_top(2),
            led(3)          => led_top(3),
            led(4)          => led_top(4)
        );
        
    inst_decod_display: decod_display 
        port map(
            nivel_actual     => nivel_actual_s,
            CLK              => CLK_adap,
            display(6)       => display_top(6),
            display(5)       => display_top(5),
            display(4)       => display_top(4),
            display(3)       => display_top(3),
            display(2)       => display_top(2),
            display(1)       => display_top(1),
            display(0)       => display_top(0),
            enable_display   => enable_display_top
        );
        
    inst_temporizador: temporizador 
        generic map(
            CLK_FREQ   => 1_000_000,
            TIEMPO     => 1
        )
        port map(
            CLK              => CLK_adap,
            iniciar_cuenta   => pedir_tiempo_s,
            fin_tiempo       => fin_tiempo_s
        );

    inst_DivisorReloj: DivisorReloj 
        generic map( FREC_SALIDA => 1_000_000 )
        port map(
            clk_in   =>  CLK_top,
            reset    =>  RESET_top,
            clk_out  =>  CLK_adap
        );
        
    inst_controlador_nivel: controlador_nivel 
        port map( 
            exito           => exito_s,
            error           => error_s,
            reset           => RESET_top,
            CLK             => CLK_adap,
            nivel_actual    => nivel_actual_s
        );
    
    
    clk_gen: process
    begin
        CLK_top <= not CLK_top;
        wait for periodo_clk/2;
    end process;
    
    test: process
    begin
        wait for 100 ns;
        accion_top <= '1';
        wait for 1 us;
        accion_top <= '0';
        wait for 1000 ns;
    end process;
    

end STRUCTURAL;
