
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:062

00:00:062

1324.7732
0.0232
11312
7572Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.srcs/utils_1/imports/synth_1/TOP.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2v
t/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.srcs/utils_1/imports/synth_1/TOP.dcpZ12-5825h px� 
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

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
93915Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2042.527 ; gain = 404.715 ; free physical = 166 ; free virtual = 6540
h px� 
�
synthesizing module '%s'%s4497*oasys2
TOP2
 2F
B/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/TOP.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

PLLE2_BASE2
 2=
9/tools/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2

1114308@Z8-6157h px� 
S
%s
*synth2;
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKFBOUT_MULT bound to: 16 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
h p
x
� 
R
%s
*synth2:
8	Parameter CLKOUT0_DIVIDE bound to: 64 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT1_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
h p
x
� 
P
%s
*synth28
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter REF_JITTER1 bound to: 0.000000 - type: double 
h p
x
� 
R
%s
*synth2:
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PLLE2_BASE2
 2
02
12=
9/tools/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2

1114308@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PDU2
 2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/PDU.v2
18@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/PDU.v2
6708@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2

PDU_DECODE2
 2U
Q/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/PDU_decode.v2
348@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2U
Q/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/PDU_decode.v2
1558@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PDU_DECODE2
 2
02
12U
Q/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/PDU_decode.v2
348@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

HEX2UART2
 2U
Q/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/HEX2UART.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

HEX2UART2
 2
02
12U
Q/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/HEX2UART.v2
18@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/PDU.v2
7458@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2
BP_LIST_REG2
 2V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/BP_LIST_REG.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BP_LIST_REG2
 2
02
12V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/BP_LIST_REG.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
INFO_SENDER2
 2V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/INFO_SENDER.v2
18@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/INFO_SENDER.v2
658@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/INFO_SENDER.v2
1948@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Hex2ASC2
 2V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/HEX2ASCII.v2
18@Z8-6157h px� 
K
%s
*synth23
1	Parameter HEX_NUM bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Hex2ASC2
 2
02
12V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/HEX2ASCII.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
INFO_SENDER2
 2
02
12V
R/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/RTL/INFO_SENDER.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
UART_TX2
 2S
O/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UART/UART_TX.v2
88@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
UART_TX2
 2
02
12S
O/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UART/UART_TX.v2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
QUEUE2
 2R
N/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/QUEUE.v2
18@Z8-6157h px� 
I
%s
*synth21
/	Parameter DEPTH bound to: 10 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
QUEUE2
 2
02
12R
N/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/QUEUE.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
POSEDGE_GEN2
 2X
T/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/POSEDGE_GEN.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
POSEDGE_GEN2
 2
02
12X
T/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/POSEDGE_GEN.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
UART_RX2
 2S
O/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UART/UART_RX.v2
88@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
UART_RX2
 2
02
12S
O/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UART/UART_RX.v2
88@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PDU2
 2
02
12J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/PDU.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CPU2
 2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/CPU.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

PC_PLUS42
 2O
K/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/pc_plus4.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PC_PLUS42
 2
02
12O
K/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/pc_plus4.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
NPC2
 2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/npc.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
NPC2
 2
02
12J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/npc.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2
 2I
E/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/pc.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2
 2
02
12I
E/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/pc.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
DECODER2
 2N
J/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/decoder.v2
358@Z8-6157h px� 
�
default block is never used226*oasys2N
J/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/decoder.v2
1218@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
DECODER2
 2
02
12N
J/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/decoder.v2
358@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

REG_FILE2
 2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/reg.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

REG_FILE2
 2
02
12J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/reg.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MUX12
 2K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/mux1.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MUX12
 2
02
12K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/mux1.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/alu.v2
138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
12J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/alu.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SLU2
 2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
98@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
368@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
548@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
758@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SLU2
 2
02
12J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MUX22
 2K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/mux2.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MUX22
 2
02
12K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/mux2.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BRANCH2
 2M
I/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/branch.v2
108@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BRANCH2
 2
02
12M
I/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/branch.v2
108@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU2
 2
02
12J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/CPU.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MMIO2
 2K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/MEM/MMIO.v2
18@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/MEM/MMIO.v2
628@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MMIO2
 2
02
12K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/MEM/MMIO.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MEM_BRIDGE2
 2Q
M/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/MEM/MEM_BRIDGE.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MEM_BRIDGE2
 2
02
12Q
M/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/MEM/MEM_BRIDGE.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

INST_MEM2
 2�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.runs/synth_1/.Xil/Vivado-93807-kuro-vlrwx9/realtime/INST_MEM_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

INST_MEM2
 2
02
12�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.runs/synth_1/.Xil/Vivado-93807-kuro-vlrwx9/realtime/INST_MEM_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

DATA_MEM2
 2�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.runs/synth_1/.Xil/Vivado-93807-kuro-vlrwx9/realtime/DATA_MEM_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DATA_MEM2
 2
02
12�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.runs/synth_1/.Xil/Vivado-93807-kuro-vlrwx9/realtime/DATA_MEM_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Segment2
 2T
P/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/Segment.v2
18@Z8-6157h px� 
�
default block is never used226*oasys2T
P/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/Segment.v2
378@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Segment2
 2
02
12T
P/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/PDU/UTILS/Segment.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
TOP2
 2
02
12F
B/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/TOP.v2
18@Z8-6155h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
mmio_is_halt[0]2
PDUZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
pdu_mmio_data_accept[0]2
PDUZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2139.496 ; gain = 501.684 ; free physical = 191 ; free virtual = 6399
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2157.309 ; gain = 519.496 ; free physical = 189 ; free virtual = 6397
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2157.309 ; gain = 519.496 ; free physical = 189 ; free virtual = 6397
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.062
00:00:00.052

2163.2462
0.0002
1862
6391Z17-722h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
1Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
WE12

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
RA22

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
RA32

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
RA42

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
RO22

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
RO32

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
RO42

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
WA12

RTL_RAM0Z37-20h px� 
�
�Could not find a clock associated with pin %s for RAM cell %s. Constraints related to this pin or cell won't work with elaborated design.17*synth2
WD12

RTL_RAM0Z37-20h px� 
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
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.gen/sources_1/ip/DATA_MEM/DATA_MEM/DATA_MEM_in_context.xdc2
data_memory	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.gen/sources_1/ip/DATA_MEM/DATA_MEM/DATA_MEM_in_context.xdc2
data_memory	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.gen/sources_1/ip/INST_MEM/INST_MEM/INST_MEM_in_context.xdc2
instruction_memory	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.gen/sources_1/ip/INST_MEM/INST_MEM/INST_MEM_in_context.xdc2
instruction_memory	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/constraints.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2K
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2I
G/home/kuro/Principles_of_Computer_Organization/lab/lab4/constraints.xdc2
.Xil/TOP_propImpl.xdcZ1-236h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2304.0592
0.0002
1682
6371Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2T
R  A total of 1 instances were transformed.
  PLLE2_BASE => PLLE2_ADV: 1 instance 
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012
00:00:00.012

2304.0942
0.0002
1672
6370Z17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2304.094 ; gain = 666.281 ; free physical = 172 ; free virtual = 6377
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2304.094 ; gain = 666.281 ; free physical = 172 ; free virtual = 6377
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2304.094 ; gain = 666.281 ; free physical = 172 ; free virtual = 6377
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
r
3inferred FSM for state register '%s' in module '%s'802*oasys2
print_cs_reg2
INFO_SENDERZ8-802h px� 
p
3inferred FSM for state register '%s' in module '%s'802*oasys2
status_cur_reg2	
UART_TXZ8-802h px� 
p
3inferred FSM for state register '%s' in module '%s'802*oasys2
status_cur_reg2	
UART_RXZ8-802h px� 
j
3inferred FSM for state register '%s' in module '%s'802*oasys2
mmio_cs_reg2
MMIOZ8-802h px� 
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
_                    WAIT |                             0000 | 00000000000000000000000000000000
h p
x
� 
y
%s
*synth2a
_        PRINT_START_LOGO |                             0001 | 00000000000000000000000000000101
h p
x
� 
y
%s
*synth2a
_         PRINT_LINE_HEAD |                             0010 | 00000000000000000000000000000110
h p
x
� 
y
%s
*synth2a
_             PRINT_ENTER |                             0011 | 00000000000000000000000000000111
h p
x
� 
y
%s
*synth2a
_             PRINT_BLANK |                             0100 | 00000000000000000000000000001000
h p
x
� 
y
%s
*synth2a
_      PRINT_DOUBLE_ENTER |                             0101 | 00000000000000000000000000001001
h p
x
� 
y
%s
*synth2a
_          PRINT_BP_VALID |                             0110 | 00000000000000000000000000001010
h p
x
� 
y
%s
*synth2a
_        PRINT_BP_INVALID |                             0111 | 00000000000000000000000000001101
h p
x
� 
y
%s
*synth2a
_            PRINT_BP_SET |                             1000 | 00000000000000000000000000001011
h p
x
� 
y
%s
*synth2a
_          PRINT_BP_CLEAR |                             1001 | 00000000000000000000000000001100
h p
x
� 
y
%s
*synth2a
_            PRINT_CUR_PC |                             1010 | 00000000000000000000000000001110
h p
x
� 
y
%s
*synth2a
_          PRINT_CPU_HEAD |                             1011 | 00000000000000000000000000010000
h p
x
� 
y
%s
*synth2a
_     PRINT_CMD_NOT_FOUND |                             1100 | 00000000000000000000000000001111
h p
x
� 
y
%s
*synth2a
_               SEND_DATA |                             1101 | 00000000000000000000000000000010
h p
x
� 
y
%s
*synth2a
_               SEND_WAIT |                             1110 | 00000000000000000000000000000011
h p
x
� 
y
%s
*synth2a
_              PRINT_DONE |                             1111 | 00000000000000000000000000000100
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
print_cs_reg2

sequential2
INFO_SENDERZ8-3354h px� 
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
_                  iSTATE |                              000 |                              111
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              001 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              010 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                              011 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                              100 |                              011
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
status_cur_reg2

sequential2	
UART_TXZ8-3354h px� 
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
_                  iSTATE |                            00001 |                              111
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                            00010 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                            00100 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                            01000 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                            10000 |                              011
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
status_cur_reg2	
one-hot2	
UART_RXZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2	
npc_reg2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/npc.v2
88@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

rd_out_reg2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
258@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

wd_out_reg2J
F/home/kuro/Principles_of_Computer_Organization/lab/lab4/vsrc/CPU/slu.v2
268@Z8-327h px� 
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
_                    WAIT |                              000 |                            00000
h p
x
� 
y
%s
*synth2a
_          CPU_UART_VALID |                              001 |                            00001
h p
x
� 
y
%s
*synth2a
_      CPU_UART_SEND_DATA |                              010 |                            00010
h p
x
� 
y
%s
*synth2a
_    CPU_UART_CLEAR_VALID |                              011 |                            00011
h p
x
� 
y
%s
*synth2a
_          PDU_UART_READY |                              100 |                            00101
h p
x
� 
y
%s
*synth2a
_           PDU_UART_WAIT |                              101 |                            00110
h p
x
� 
y
%s
*synth2a
_      PDU_UART_DATA_READ |                              110 |                            00111
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
mmio_cs_reg2

sequential2
MMIOZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2304.094 ; gain = 666.281 ; free physical = 169 ; free virtual = 6370
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
,	   2 Input   32 Bit       Adders := 8     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 4     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
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
.	               64 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 29    
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 47    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 18    
h p
x
� 
-
%s
*synth2
+---Multipliers : 
h p
x
� 
F
%s
*synth2.
,	               4x32  Multipliers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
X
%s
*synth2@
>	               8K Bit	(1024 X 8 bit)          RAMs := 2     
h p
x
� 
W
%s
*synth2?
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
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
,	   6 Input   64 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   64 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 26    
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   6 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   7 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  10 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input   10 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 22    
h p
x
� 
F
%s
*synth2.
,	  20 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 29    
h p
x
� 
F
%s
*synth2.
,	  14 Input    8 Bit        Muxes := 32    
h p
x
� 
F
%s
*synth2.
,	   5 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  53 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   5 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   3 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  28 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	  11 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  10 Input    5 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   9 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    5 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  18 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   7 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  10 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   9 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 44    
h p
x
� 
F
%s
*synth2.
,	  12 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  14 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 2     
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
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[31]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[30]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[29]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[28]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[27]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[26]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[25]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[24]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[23]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[22]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[21]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[20]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[19]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[18]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[17]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[16]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[15]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[14]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[13]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[12]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[11]2
SLUZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[10]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[9]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[8]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[7]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[6]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[5]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[4]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[3]2
SLUZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[2]2
SLUZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
mmio_is_halt[0]2
PDUZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
pdu_mmio_data_accept[0]2
PDUZ8-7129h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"mmio/FSM_sequential_mmio_cs_reg[2]2
TOPZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[31]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[30]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[29]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[28]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[27]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[26]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[25]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[24]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[23]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[22]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[21]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[20]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[19]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[18]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[17]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[16]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[15]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[14]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[13]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[12]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[11]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[10]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[9]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[8]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[7]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[6]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[5]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[4]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[3]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[2]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[1]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
npc/npc_reg[0]2
CPUZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:41 ; elapsed = 00:00:42 . Memory (MB): peak = 2304.094 ; gain = 666.281 ; free physical = 213 ; free virtual = 6334
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
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
s
%s*synth2[
Y+------------+-----------------------+-----------+----------------------+--------------+
h px� 
t
%s*synth2\
Z|Module Name | RTL Object            | Inference | Size (Depth x Width) | Primitives   | 
h px� 
s
%s*synth2[
Y+------------+-----------------------+-----------+----------------------+--------------+
h px� 
t
%s*synth2\
Z|QUEUE:      | fifo_queue_reg        | Implied   | 1 K x 8              | RAM64M x 48  | 
h px� 
t
%s*synth2\
Z|QUEUE:      | fifo_queue_reg        | Implied   | 1 K x 8              | RAM64M x 48  | 
h px� 
t
%s*synth2\
Z|cpu         | reg_file/reg_file_reg | Implied   | 32 x 32              | RAM32M x 18  | 
h px� 
t
%s*synth2\
Z+------------+-----------------------+-----------+----------------------+--------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:46 ; elapsed = 00:00:47 . Memory (MB): peak = 2304.094 ; gain = 666.281 ; free physical = 137 ; free virtual = 6348
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
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:01:09 ; elapsed = 00:01:10 . Memory (MB): peak = 2344.434 ; gain = 706.621 ; free physical = 361 ; free virtual = 6353
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
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
s
%s
*synth2[
Y+------------+-----------------------+-----------+----------------------+--------------+
h p
x
� 
t
%s
*synth2\
Z|Module Name | RTL Object            | Inference | Size (Depth x Width) | Primitives   | 
h p
x
� 
s
%s
*synth2[
Y+------------+-----------------------+-----------+----------------------+--------------+
h p
x
� 
t
%s
*synth2\
Z|QUEUE:      | fifo_queue_reg        | Implied   | 1 K x 8              | RAM64M x 48  | 
h p
x
� 
t
%s
*synth2\
Z|QUEUE:      | fifo_queue_reg        | Implied   | 1 K x 8              | RAM64M x 48  | 
h p
x
� 
t
%s
*synth2\
Z|cpu         | reg_file/reg_file_reg | Implied   | 32 x 32              | RAM32M x 18  | 
h p
x
� 
t
%s
*synth2\
Z+------------+-----------------------+-----------+----------------------+--------------+

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
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"mmio/FSM_sequential_mmio_cs_reg[1]2
TOPZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"mmio/FSM_sequential_mmio_cs_reg[0]2
TOPZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:01:11 ; elapsed = 00:01:13 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 342 ; free virtual = 6343
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
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:01:16 ; elapsed = 00:01:17 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 345 ; free virtual = 6335
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:16 ; elapsed = 00:01:17 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 345 ; free virtual = 6335
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:16 ; elapsed = 00:01:18 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 344 ; free virtual = 6334
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:16 ; elapsed = 00:01:18 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 344 ; free virtual = 6334
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:16 ; elapsed = 00:01:18 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 344 ; free virtual = 6334
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:16 ; elapsed = 00:01:18 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 344 ; free virtual = 6334
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
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |INST_MEM      |         1|
h p
x
� 
=
%s
*synth2%
#|2     |DATA_MEM      |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
6
%s*synth2
|      |Cell       |Count |
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
6
%s*synth2
|1     |DATA_MEM   |     1|
h px� 
6
%s*synth2
|2     |INST_MEM   |     1|
h px� 
6
%s*synth2
|3     |BUFG       |     3|
h px� 
6
%s*synth2
|4     |CARRY4     |   127|
h px� 
6
%s*synth2
|5     |LUT1       |    77|
h px� 
6
%s*synth2
|6     |LUT2       |   385|
h px� 
6
%s*synth2
|7     |LUT3       |   398|
h px� 
6
%s*synth2
|8     |LUT4       |   524|
h px� 
6
%s*synth2
|9     |LUT5       |   403|
h px� 
6
%s*synth2
|10    |LUT6       |  1112|
h px� 
6
%s*synth2
|11    |MUXF7      |    38|
h px� 
6
%s*synth2
|12    |MUXF8      |    13|
h px� 
6
%s*synth2
|13    |PLLE2_BASE |     1|
h px� 
6
%s*synth2
|14    |RAM32M     |    15|
h px� 
6
%s*synth2
|15    |RAM32X1D   |     6|
h px� 
6
%s*synth2
|16    |RAM64M     |    80|
h px� 
6
%s*synth2
|17    |RAM64X1D   |    16|
h px� 
6
%s*synth2
|18    |FDRE       |  1047|
h px� 
6
%s*synth2
|19    |FDSE       |     3|
h px� 
6
%s*synth2
|20    |LD         |    64|
h px� 
6
%s*synth2
|21    |IBUF       |     3|
h px� 
6
%s*synth2
|22    |OBUF       |    16|
h px� 
6
%s*synth2
+------+-----------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:16 ; elapsed = 00:01:18 . Memory (MB): peak = 2352.441 ; gain = 714.629 ; free physical = 344 ; free virtual = 6334
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 71 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:01:14 ; elapsed = 00:01:15 . Memory (MB): peak = 2352.441 ; gain = 567.844 ; free physical = 344 ; free virtual = 6334
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:17 ; elapsed = 00:01:18 . Memory (MB): peak = 2352.449 ; gain = 714.629 ; free physical = 344 ; free virtual = 6334
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.042
00:00:00.052

2352.4492
0.0002
6302
6624Z17-722h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
360Z29-17h px� 
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
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2390.3952
0.0002
6282
6622Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 182 instances were transformed.
  LD => LDCE: 64 instances
  PLLE2_BASE => PLLE2_ADV: 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 15 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 6 instances
  RAM64M => RAM64M (RAMD64E(x4)): 80 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 16 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

8227460aZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
992
822
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:01:262

00:01:232

2390.4302

1065.6562
6272
6622Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 2104.103; main = 1815.295; forked = 411.388Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 3336.684; main = 2390.398; forked = 992.246Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.022
00:00:00.012

2414.4062
0.0002
6272
6622Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2f
d/home/kuro/Principles_of_Computer_Organization/lab/lab4/lab4_vivado/lab4_vivado.runs/synth_1/TOP.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Apr 15 14:53:06 2024Z17-206h px� 


End Record