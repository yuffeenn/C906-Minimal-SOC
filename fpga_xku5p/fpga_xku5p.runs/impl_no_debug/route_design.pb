
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcku5p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcku5p2default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: f373f329
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:57 ; elapsed = 00:00:38 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225817 ; free virtual = 2496532default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 1ddebf94c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:58 ; elapsed = 00:00:39 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225790 ; free virtual = 2496262default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1ddebf94c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:58 ; elapsed = 00:00:40 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225739 ; free virtual = 2495752default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1ddebf94c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:59 ; elapsed = 00:00:40 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225739 ; free virtual = 2495752default:defaulth px� 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px� 
N
9Phase 2.4 Global Clock Net Routing | Checksum: 1f9981300
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:03 ; elapsed = 00:00:45 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225717 ; free virtual = 2495532default:defaulth px� 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.5 Update Timing | Checksum: 27306b5c4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:54 ; elapsed = 00:01:00 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225668 ; free virtual = 2495052default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-0.497 | TNS=-280.089| WHS=-0.703 | THS=-183.401|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 2621856d0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:47 ; elapsed = 00:01:16 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225630 ; free virtual = 2494662default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 1cbb10a78
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:54 ; elapsed = 00:01:42 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225557 ; free virtual = 2493952default:defaulth px� 
=
Initial Estimated Congestion179*routeZ35-449h px� 
�
�Estimated routing congestion is level %s (%sx%s). Congestion levels of 5 and greater can reduce routability and impact timing closure.178*route2
52default:default2
322default:default2
322default:defaultZ35-448h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
�CLB routing congestion detected. Several CLBs have high routing utilization, which can impact timing closure. Top ten most congested CLBs are: %s180*route2�
zCLEL_R_X65Y40 CLEM_X64Y43 CLEL_R_X64Y43 CLEM_X64Y41 CLEL_R_X64Y41 CLEL_L_X55Y95 CLEL_R_X55Y95 CLEM_X37Y222 CLEL_R_X37Y222 2default:defaultZ35-443h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.813 | TNS=-8341.779| WHS=-0.058 | THS=-0.311 |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1ca0aa19d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:23:06 ; elapsed = 00:11:53 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225511 ; free virtual = 2493622default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.376 | TNS=-7037.434| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1658ad843
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:25:22 ; elapsed = 00:13:54 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225562 ; free virtual = 2494192default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.292 | TNS=-5801.968| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.3 Global Iteration 2 | Checksum: 150bcaf54
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:27:23 ; elapsed = 00:15:43 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225549 ; free virtual = 2494132default:defaulth px� 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.235 | TNS=-5061.354| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.4 Global Iteration 3 | Checksum: 1e495507e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:31:04 ; elapsed = 00:18:22 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225510 ; free virtual = 2493812default:defaulth px� 
u

Phase %s%s
101*constraints2
4.5 2default:default2&
Global Iteration 42default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.152 | TNS=-4726.596| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.5 Global Iteration 4 | Checksum: 167e5c44d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:33:10 ; elapsed = 00:19:47 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225506 ; free virtual = 2493812default:defaulth px� 
u

Phase %s%s
101*constraints2
4.6 2default:default2&
Global Iteration 52default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.143 | TNS=-4423.995| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.6 Global Iteration 5 | Checksum: 2e01e8eff
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:33:59 ; elapsed = 00:20:24 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225517 ; free virtual = 2493942default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 2e01e8eff
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:33:59 ; elapsed = 00:20:25 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225517 ; free virtual = 2493942default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 392349c59
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:23 ; elapsed = 00:20:32 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225526 ; free virtual = 2494032default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.143 | TNS=-4423.994| WHS=0.013  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 2597ee33f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:26 ; elapsed = 00:20:34 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225487 ; free virtual = 2493642default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 2597ee33f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:26 ; elapsed = 00:20:34 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225487 ; free virtual = 2493642default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 2597ee33f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:27 ; elapsed = 00:20:34 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225487 ; free virtual = 2493642default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 26c12e866
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:46 ; elapsed = 00:20:41 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225503 ; free virtual = 2493802default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.133 | TNS=-4423.556| WHS=0.013  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 277509381
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:46 ; elapsed = 00:20:41 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225503 ; free virtual = 2493802default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 277509381
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:46 ; elapsed = 00:20:41 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225504 ; free virtual = 2493812default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 24e82be88
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:49 ; elapsed = 00:20:43 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225499 ; free virtual = 2493762default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 24e82be88
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:49 ; elapsed = 00:20:43 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225497 ; free virtual = 2493742default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 24e82be88
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:56 ; elapsed = 00:20:51 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225498 ; free virtual = 2493762default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2L
8| WNS=-1.133 | TNS=-4423.556| WHS=0.013  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 24e82be88
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:34:57 ; elapsed = 00:20:51 . Memory (MB): peak = 5116.484 ; gain = 0.000 ; free physical = 225511 ; free virtual = 2493892default:defaulth px� 
~

Phase %s%s
101*constraints2
11 2default:default20
Physical Synthesis in Router2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
11.1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-1.1222default:default2
	-4127.3952default:default2
0.0142default:default2
0.0002default:defaultZ32-668h px� 
X
CPhase 11.1 Physical Synthesis Initialization | Checksum: 24e82be88
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:35:48 ; elapsed = 00:21:04 . Memory (MB): peak = 5235.445 ; gain = 118.961 ; free physical = 225382 ; free virtual = 2492612default:defaulth px� 
�
�WARNING: Physical Optimization has determined that the magnitude of the negative slack is too large and it is highly unlikely that slack will be improved. Post-Route Physical Optimization is most effective when WNS is above -0.5ns400*physynthZ32-745h px� 
~

Phase %s%s
101*constraints2
11.2 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-1.1222default:default2
	-4127.3952default:default2
0.0142default:default2
0.0002default:defaultZ32-668h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1182default:default2
sys_clk_pin2default:default2�
Px_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/Q[2]Px_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/Q[2]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1172default:default2
sys_clk_pin2default:default2�
xx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[9]xx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[9]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1152default:default2
sys_clk_pin2default:default2�
xx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry3/entry_inst_reg[15]_4[6]xx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry3/entry_inst_reg[15]_4[6]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.1032default:default2
sys_clk_pin2default:default2�
yx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry3/entry_inst_reg[15]_4[14]yx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry3/entry_inst_reg[15]_4[14]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.0892default:default2
sys_clk_pin2default:default2�
yx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[10]yx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[10]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.0892default:default2
sys_clk_pin2default:default2�
yx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[14]yx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[14]2default:default8Z32-952h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk_pin2default:default2�
xx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[3]xx_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_ifu_top/x_aq_ifu_ibuf/x_aq_ifu_ibuf_entry2/entry_inst_reg[15]_0[3]2default:default8Z32-953h px� 
�
CPath group WNS did not improve. Path group: %s. Processed net: %s.
525*physynth2
sys_clk_pin2default:default2�
_x_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_lsu_top/x_aq_lsu_dc/dc_pfb_ld_init_pa[27]_x_soc/x_c906_wrap/x_cpu_top/x_aq_top_0/x_aq_core/x_aq_lsu_top/x_aq_lsu_dc/dc_pfb_ld_init_pa[27]2default:default8Z32-953h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-1.0892default:default2
	-4126.7232default:default2
0.0142default:default2
0.0002default:defaultZ32-668h px� 
Q
<Phase 11.2 Critical Path Optimization | Checksum: 2ed7b9661
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:36:11 ; elapsed = 00:21:14 . Memory (MB): peak = 5287.375 ; gain = 170.891 ; free physical = 225342 ; free virtual = 2492212default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
5287.3752default:default2
0.0002default:default2
2253422default:default2
2492222default:defaultZ17-722h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
-1.0892default:default2
	-4126.7232default:default2
0.0142default:default2
0.0002default:defaultZ32-669h px� 
Q
<Phase 11 Physical Synthesis in Router | Checksum: 2ed7b9661
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:36:13 ; elapsed = 00:21:15 . Memory (MB): peak = 5287.375 ; gain = 170.891 ; free physical = 225349 ; free virtual = 2492292default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:36:13 ; elapsed = 00:21:16 . Memory (MB): peak = 5287.375 ; gain = 170.891 ; free physical = 225487 ; free virtual = 2493672default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2132default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:36:232default:default2
00:21:242default:default2
5287.3752default:default2
170.8912default:default2
2254872default:default2
2493672default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
5287.3752default:default2
0.0002default:default2
2254872default:default2
2493672default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.052default:default2
00:00:00.012default:default2
5287.3752default:default2
0.0002default:default2
2254282default:default2
2493432default:defaultZ17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:142default:default2
00:00:062default:default2
5287.3752default:default2
0.0002default:default2
2252602default:default2
2493252default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2y
e/home/zfh/Desktop/soc_workspace/soc_c906_v1.1/fpga_xku5p/fpga_xku5p.runs/impl_no_debug/top_routed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:302default:default2
00:00:332default:default2
5287.3752default:default2
0.0002default:default2
2254292default:default2
2493592default:defaultZ17-722h px� 
�
%s4*runtcl2r
^Executing : report_drc -file top_drc_routed.rpt -pb top_drc_routed.pb -rpx top_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2e
Qreport_drc -file top_drc_routed.rpt -pb top_drc_routed.pb -rpx top_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
i/home/zfh/Desktop/soc_workspace/soc_c906_v1.1/fpga_xku5p/fpga_xku5p.runs/impl_no_debug/top_drc_routed.rpti/home/zfh/Desktop/soc_workspace/soc_c906_v1.1/fpga_xku5p/fpga_xku5p.runs/impl_no_debug/top_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:242default:default2
00:00:092default:default2
5375.4142default:default2
88.0392default:default2
2253842default:default2
2493142default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file top_methodology_drc_routed.rpt -pb top_methodology_drc_routed.pb -rpx top_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
}report_methodology -file top_methodology_drc_routed.rpt -pb top_methodology_drc_routed.pb -rpx top_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
u/home/zfh/Desktop/soc_workspace/soc_c906_v1.1/fpga_xku5p/fpga_xku5p.runs/impl_no_debug/top_methodology_drc_routed.rptu/home/zfh/Desktop/soc_workspace/soc_c906_v1.1/fpga_xku5p/fpga_xku5p.runs/impl_no_debug/top_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:392default:default2
00:00:142default:default2
5375.4142default:default2
0.0002default:default2
2250682default:default2
2489992default:defaultZ17-722h px� 
�
%s4*runtcl2�
nExecuting : report_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2u
areport_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2252default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:01:092default:default2
00:00:292default:default2
5444.9882default:default2
69.5742default:default2
2250012default:default2
2489452default:defaultZ17-722h px� 
�
%s4*runtcl2g
SExecuting : report_route_status -file top_route_status.rpt -pb top_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file top_timing_summary_routed.rpt -pb top_timing_summary_routed.pb -rpx top_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
|
%s4*runtcl2`
LExecuting : report_incremental_reuse -file top_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
|
%s4*runtcl2`
LExecuting : report_clock_utilization -file top_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file top_bus_skew_routed.rpt -pb top_bus_skew_routed.pb -rpx top_bus_skew_routed.rpx
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 


End Record