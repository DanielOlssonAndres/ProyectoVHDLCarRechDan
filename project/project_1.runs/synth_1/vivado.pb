
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:082	
522.0702	
234.250Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/utils_1/imports/synth_1/TOP.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/utils_1/imports/synth_1/TOP.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top TOP -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14324Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1391.613 ; gain = 449.312
h px� 
�
synthesizing module '%s'638*oasys2
TOP2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
188@Z8-638h px� 
S
%s
*synth2;
9	Parameter FREC_SALIDA bound to: 100000 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DivisorReloj2v
tC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/DivisorReloj.vhd2
62
inst_DivisorReloj2
DivisorReloj2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
1808@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
DivisorReloj2x
tC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/DivisorReloj.vhd2
188@Z8-638h px� 
S
%s
*synth2;
9	Parameter FREC_SALIDA bound to: 100000 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DivisorReloj2
02
12x
tC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/DivisorReloj.vhd2
188@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sync2n
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
42
	inst_sync2
sync2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
1888@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
sync2p
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
128@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
sync2
02
12p
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
128@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sync2n
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
42
	inst_sync2
sync2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
1888@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sync2n
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
42
	inst_sync2
sync2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
1888@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sync2n
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
42
	inst_sync2
sync2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
1888@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sync2n
lC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/sync.vhd2
42
	inst_sync2
sync2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
1958@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2r
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
42
	inst_edge2
	EDGEDTCTR2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2048@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	EDGEDTCTR2t
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
128@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	EDGEDTCTR2
02
12t
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
128@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2r
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
42
	inst_edge2
	EDGEDTCTR2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2048@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2r
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
42
	inst_edge2
	EDGEDTCTR2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2048@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2r
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
42
	inst_edge2
	EDGEDTCTR2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2048@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2r
pC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/edgecntr.vhd2
42
inst_EDGEDTCTR2
	EDGEDTCTR2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2118@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Control_Juego2w
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Control_Juego.vhd2
42
inst_Control_Juego2
Control_Juego2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2188@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Control_Juego2y
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Control_Juego.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Control_Juego2
02
12y
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Control_Juego.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
controlador_nivel2{
yC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/controlador_nivel.vhd2
42
inst_controlador_nivel2
controlador_nivel2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2318@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
controlador_nivel2}
yC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/controlador_nivel.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
controlador_nivel2
02
12}
yC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/controlador_nivel.vhd2
168@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
GenSecuencia2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/sources_1/imports/src/GenSecuencia.vhd2
42
inst_GenSecuencia2
GenSecuencia2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2418@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
GenSecuencia2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/sources_1/imports/src/GenSecuencia.vhd2
138@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
GenSecuencia2
02
12�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/sources_1/imports/src/GenSecuencia.vhd2
138@Z8-256h px� 
J
%s
*synth22
0	Parameter TAMSEC bound to: 14 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Controlador_de_Sec2|
zC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Controlador_de_Sec.vhd2
42
inst_CondeSec2
Controlador_de_Sec2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2478@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Controlador_de_Sec2~
zC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Controlador_de_Sec.vhd2
188@Z8-638h px� 
J
%s
*synth22
0	Parameter TAMSEC bound to: 14 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Controlador_de_Sec2
02
12~
zC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Controlador_de_Sec.vhd2
188@Z8-256h px� 
P
%s
*synth28
6	Parameter CLK_FREQ bound to: 100000 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter TIEMPO bound to: 1 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
temporizador2v
tC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/temporizador.vhd2
52
inst_temporizador2
temporizador2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2598@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
temporizador2x
tC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/temporizador.vhd2
178@Z8-638h px� 
P
%s
*synth28
6	Parameter CLK_FREQ bound to: 100000 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter TIEMPO bound to: 1 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
temporizador2
02
12x
tC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/temporizador.vhd2
178@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
decod_display2w
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/decod_display.vhd2
42
inst_decdis2
decod_display2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2708@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
decod_display2y
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/decod_display.vhd2
128@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
decod_display2
02
12y
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/decod_display.vhd2
128@Z8-256h px� 
H
%s
*synth20
.	Parameter NLEDS bound to: 4 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Decod_Leds_Sec2x
vC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Decod_Leds_Sec.vhd2
42

inst_DLS2
Decod_Leds_Sec2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Decod_Leds_Sec2z
vC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Decod_Leds_Sec.vhd2
128@Z8-638h px� 
H
%s
*synth20
.	Parameter NLEDS bound to: 4 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Decod_Leds_Sec2
02
12z
vC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/Decod_Leds_Sec.vhd2
128@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

CodBotones2t
rC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/CodBotones.vhd2
52
inst_CodBotones2

CodBotones2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2848@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

CodBotones2v
rC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/CodBotones.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

CodBotones2
02
12v
rC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/CodBotones.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CompSecuencia2w
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/CompSecuencia.vhd2
52
inst_CompSecuencia2
CompSecuencia2o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
2908@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CompSecuencia2y
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/CompSecuencia.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CompSecuencia2
02
12y
uC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/CompSecuencia.vhd2
198@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TOP2
02
12o
kC:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/src/TOP.vhd2
188@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1502.852 ; gain = 560.551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1502.852 ; gain = 560.551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1502.852 ; gain = 560.551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

1502.8522
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/constrs_1/imports/constraints/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/constrs_1/imports/constraints/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.srcs/constrs_1/imports/constraints/Nexys-A7-100T-Master.xdc2
.Xil/TOP_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1598.9022
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0032

1598.9022
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
Control_JuegoZ8-802h px� 
}
3inferred FSM for state register '%s' in module '%s'802*oasys2
estado_actual_reg2
controlador_nivelZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                   nivel |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_               secuencia |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                comparar |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
Control_JuegoZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                estado_0 |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                estado_1 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                estado_2 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                estado_3 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                estado_4 |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_                estado_5 |                              101 |                              101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
estado_actual_reg2

sequential2
controlador_nivelZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 6     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 17    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   7 Input   44 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 18    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[7]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[6]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[5]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[4]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[3]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[2]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[1]2
1Z8-3917h px� 
r
+design %s has port %s driven by constant %s3447*oasys2
TOP2
enable_display_top[0]2
0Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:24 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:24 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:24 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+------------+----------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                   | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+------------+----------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|TOP         | inst_EDGEDTCTR/sreg_reg[0] | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+------------+----------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     2|
h px� 
2
%s*synth2
|2     |CARRY4 |    20|
h px� 
2
%s*synth2
|3     |LUT1   |    14|
h px� 
2
%s*synth2
|4     |LUT2   |    42|
h px� 
2
%s*synth2
|5     |LUT3   |    23|
h px� 
2
%s*synth2
|6     |LUT4   |    17|
h px� 
2
%s*synth2
|7     |LUT5   |     8|
h px� 
2
%s*synth2
|8     |LUT6   |    54|
h px� 
2
%s*synth2
|9     |MUXF7  |     6|
h px� 
2
%s*synth2
|10    |SRL16E |     1|
h px� 
2
%s*synth2
|11    |FDCE   |    20|
h px� 
2
%s*synth2
|12    |FDPE   |     2|
h px� 
2
%s*synth2
|13    |FDRE   |    62|
h px� 
2
%s*synth2
|14    |IBUF   |     7|
h px� 
2
%s*synth2
|15    |OBUF   |    19|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:26 . Memory (MB): peak = 1598.902 ; gain = 560.551
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:28 . Memory (MB): peak = 1598.902 ; gain = 656.602
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1598.9022
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
26Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1598.9022
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

3cbb35b3Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722
92
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:272

00:00:342

1598.9022

1072.473Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1598.9022
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/olsso/Documents/Universidad/4.1/Sistemas_Electronicos_Digitales/ProyectoVHDLCarRechDan/project/project_1.runs/synth_1/TOP.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Dec 17 12:42:55 2024Z17-206h px� 


End Record