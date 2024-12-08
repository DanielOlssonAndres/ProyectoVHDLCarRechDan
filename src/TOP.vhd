library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete_types.all;

entity TOP is
    generic(
        NUM_LEDS      : integer := 4;
        NUM_BOTONES   : integer := 4;
        SEG_DISPLAY   : integer := 7
    );
    port(
        -- ENTRADAS
        RESET    : in std_logic; -- Botón de RESET asíncrono
        boton    : in std_logic_vector(NUM_BOTONES downto 1); -- Botones/Pulsadores con los que se juega
        accion   : in std_logic; -- Botón de acción del juego, que inicia la generación de secuencias
        CLK      : in std_logic; -- Entrada del reloj de la FPGA
        -- SALIDAS      
        led      : in std_logic_vector(NUM_LEDS downto 1); -- Leds que producen la secuencia del juego
        display  : in std_logic_vector(SEG_DISPLAY - 1 downto 0) -- Segmentos del display a controlar
    );
end TOP;

architecture STRUCTURAL of TOP is

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
            -- Salidas
            sec_generada      : out vec_integrer(0 to 14) -- Secuencia generada
        );
    end component;
    
-- Decodificador de Display
    component decodificador_display is
        Port (
            nivel_actual     : in STD_LOGIC_VECTOR(2 downto 0); -- Nivel actual (3 bits)
            CLK              : in STD_LOGIC;                            -- Señal de reloj
            display          : out STD_LOGIC_VECTOR(6 downto 0)     -- Salida para el display de 7 segmentos
        );
    end component;
    
-- Sincronizador de Botones
    component sync is
        port (
        CLK        : in std_logic;
        ASYNC_IN   : in std_logic;
        SYNC_OUT   : out std_logic
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
   
-- 


begin

    inst_CompSecuencia: CompSecuencia 
        port map(
            sec_generada     =>
            boton_pulsado    =>
            enable           =>
            exito            =>
            error            =>
            fin_comparacion  =>
        );

    inst_CodBotones: CodBotones 
        port map(
            boton1          =>
            boton2          =>
            boton3          =>
            boton4          =>
            boton_pulsado   =>
        );
        
    inst_Controlador_de_Sec: Controlador_de_Sec 
        generic map( TAMSEC => 14 );
        port map(
            secuencia        =>
            emitir_elemento  =>
            CLK              =>
            elemento         =>
            fin_secuencia    =>
            pedir_tiempo     =>
        );
        
    inst_Decod_Leds_Sec: Decod_Leds_Sec 
        generic map( NLEDS => 4 );
        port map(
            ledDeSecuencia  =>
            CLK             =>
            RESET           =>
            led             => 
        );
        
     inst_GenSecuencia: GenSecuencia 
        port map(
            niv_actual        =>
            bot_accion        =>
            s_enable          =>
            sec_generada      =>
        );
        
    inst_decodificador_display: decodificador_display 
        port map(
            nivel_actual     =>
            CLK              =>
            display          =>
        );

    inst_sync: sync 
        port map(
        CLK        =>
        ASYNC_IN   =>
        SYNC_OUT   =>
        );
        
    inst_temporizador: temporizador 
        generic map(
            CLK_FREQ   => 1_000_000,
            TIEMPO     => 1
        );
        port map(
            CLK              =>
            iniciar_cuenta   =>
            fin_tiempo       =>
        );


end STRUCTURAL;
