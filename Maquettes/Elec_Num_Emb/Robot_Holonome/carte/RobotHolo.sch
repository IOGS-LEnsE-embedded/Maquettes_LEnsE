EESchema Schematic File Version 4
LIBS:RobotHolo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 6014008B
P 1600 1500
F 0 "J1" H 1520 1175 50  0000 C CNN
F 1 "Capt1" H 1520 1266 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 1600 1500 50  0001 C CNN
F 3 "~" H 1600 1500 50  0001 C CNN
	1    1600 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6014023A
P 1600 2150
F 0 "J2" H 1520 1825 50  0000 C CNN
F 1 "Capt2" H 1520 1916 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 1600 2150 50  0001 C CNN
F 3 "~" H 1600 2150 50  0001 C CNN
	1    1600 2150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6014027F
P 1600 2800
F 0 "J3" H 1520 2475 50  0000 C CNN
F 1 "Capt3" H 1520 2566 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 1600 2800 50  0001 C CNN
F 3 "~" H 1600 2800 50  0001 C CNN
	1    1600 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 601405DF
P 1900 1500
F 0 "#PWR0101" H 1900 1250 50  0001 C CNN
F 1 "GND" V 1905 1372 50  0000 R CNN
F 2 "" H 1900 1500 50  0001 C CNN
F 3 "" H 1900 1500 50  0001 C CNN
	1    1900 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60140630
P 1900 2150
F 0 "#PWR0102" H 1900 1900 50  0001 C CNN
F 1 "GND" V 1905 2022 50  0000 R CNN
F 2 "" H 1900 2150 50  0001 C CNN
F 3 "" H 1900 2150 50  0001 C CNN
	1    1900 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60140649
P 1900 2800
F 0 "#PWR0103" H 1900 2550 50  0001 C CNN
F 1 "GND" V 1905 2672 50  0000 R CNN
F 2 "" H 1900 2800 50  0001 C CNN
F 3 "" H 1900 2800 50  0001 C CNN
	1    1900 2800
	0    -1   -1   0   
$EndComp
Text GLabel 1900 1400 2    50   Input ~ 0
5V
Text GLabel 1900 2050 2    50   Input ~ 0
5V
Text GLabel 1900 2700 2    50   Input ~ 0
5V
Text GLabel 1900 1600 2    50   Input ~ 0
VCapt1
Text GLabel 1900 2900 2    50   Input ~ 0
VCapt3
Text GLabel 1900 2250 2    50   Input ~ 0
VCapt2
Wire Wire Line
	1800 1400 1900 1400
Wire Wire Line
	1800 1500 1900 1500
Wire Wire Line
	1800 1600 1900 1600
Wire Wire Line
	1800 2050 1900 2050
Wire Wire Line
	1800 2150 1900 2150
Wire Wire Line
	1800 2250 1900 2250
Wire Wire Line
	1800 2700 1900 2700
Wire Wire Line
	1800 2800 1900 2800
Wire Wire Line
	1800 2900 1900 2900
Text GLabel 4250 7450 2    50   Input ~ 0
VCapt3
$Comp
L Regulator_Linear:L7805 U1
U 1 1 60257E2C
P 1500 5650
F 0 "U1" H 1500 5892 50  0000 C CNN
F 1 "L7805" H 1500 5801 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1525 5500 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 5600 50  0001 C CNN
	1    1500 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 6025864C
P 4850 1000
F 0 "J12" H 4768 675 50  0000 C CNN
F 1 "BAT_IN" H 4768 766 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 4850 1000 50  0001 C CNN
F 3 "~" H 4850 1000 50  0001 C CNN
	1    4850 1000
	-1   0    0    1   
$EndComp
Text GLabel 5150 900  2    50   Input ~ 0
VIN
$Comp
L power:GND #PWR06
U 1 1 60258FD0
P 5150 1000
F 0 "#PWR06" H 5150 750 50  0001 C CNN
F 1 "GND" V 5155 872 50  0000 R CNN
F 2 "" H 5150 1000 50  0001 C CNN
F 3 "" H 5150 1000 50  0001 C CNN
	1    5150 1000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6025933C
P 1500 6100
F 0 "#PWR09" H 1500 5850 50  0001 C CNN
F 1 "GND" V 1505 5972 50  0000 R CNN
F 2 "" H 1500 6100 50  0001 C CNN
F 3 "" H 1500 6100 50  0001 C CNN
	1    1500 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 60259870
P 1050 5900
F 0 "C1" H 1168 5946 50  0000 L CNN
F 1 "10uF" H 1168 5855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1088 5750 50  0001 C CNN
F 3 "~" H 1050 5900 50  0001 C CNN
	1    1050 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 6025A0B9
P 1950 5900
F 0 "C4" H 2068 5946 50  0000 L CNN
F 1 "10uF" H 2068 5855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1988 5750 50  0001 C CNN
F 3 "~" H 1950 5900 50  0001 C CNN
	1    1950 5900
	1    0    0    -1  
$EndComp
Text GLabel 2050 5650 2    50   Input ~ 0
5V_REG
Wire Wire Line
	1050 5750 1050 5650
Wire Wire Line
	1050 5650 950  5650
Wire Wire Line
	1050 5650 1200 5650
Connection ~ 1050 5650
Wire Wire Line
	1800 5650 1950 5650
Wire Wire Line
	1950 5750 1950 5650
Connection ~ 1950 5650
Wire Wire Line
	1950 5650 2050 5650
Wire Wire Line
	1950 6050 1500 6050
Wire Wire Line
	1500 6050 1500 5950
Wire Wire Line
	1050 6050 1500 6050
Connection ~ 1500 6050
Wire Wire Line
	1500 6050 1500 6100
Wire Wire Line
	5050 900  5150 900 
Wire Wire Line
	5050 1000 5150 1000
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 60266834
P 3400 1000
F 0 "J7" H 3318 675 50  0000 C CNN
F 1 "5V_Select" H 3318 766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3400 1000 50  0001 C CNN
F 3 "~" H 3400 1000 50  0001 C CNN
	1    3400 1000
	-1   0    0    1   
$EndComp
Text GLabel 3700 1000 2    50   Input ~ 0
5V
Text GLabel 3700 900  2    50   Input ~ 0
5V_REG
Text GLabel 3700 1100 2    50   Input ~ 0
5V_NUC
Wire Wire Line
	3600 1100 3700 1100
Wire Wire Line
	3600 1000 3700 1000
Wire Wire Line
	3600 900  3700 900 
$Comp
L Connector_Generic:Conn_01x10 J9
U 1 1 602788C8
P 3600 2950
F 0 "J9" H 3550 3550 50  0000 L CNN
F 1 "RN42X-GAUCHE" H 3300 3450 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x10_P2.00mm_Vertical" H 3600 2950 50  0001 C CNN
F 3 "~" H 3600 2950 50  0001 C CNN
	1    3600 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J11
U 1 1 6027A456
P 4200 2950
F 0 "J11" H 4200 3550 50  0000 C CNN
F 1 "RN42X-DROITE" H 4200 3450 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x10_P2.00mm_Vertical" H 4200 2950 50  0001 C CNN
F 3 "~" H 4200 2950 50  0001 C CNN
	1    4200 2950
	-1   0    0    -1  
$EndComp
Text GLabel 3300 2550 0    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR01
U 1 1 6027BAC0
P 3300 3450
F 0 "#PWR01" H 3300 3200 50  0001 C CNN
F 1 "GND" V 3305 3322 50  0000 R CNN
F 2 "" H 3300 3450 50  0001 C CNN
F 3 "" H 3300 3450 50  0001 C CNN
	1    3300 3450
	0    1    1    0   
$EndComp
Text GLabel 3300 2650 0    50   Input ~ 0
RX
Text GLabel 3300 2750 0    50   Input ~ 0
TX
Text GLabel 3300 2950 0    50   Input ~ 0
RESET_N
Text GLabel 4500 3250 2    50   Input ~ 0
GPIO2_STATUS
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J10
U 1 1 6028781C
P 3850 6450
F 0 "J10" H 3900 7567 50  0000 C CNN
F 1 "Morpho_Gauche" H 3900 7476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 3850 6450 50  0001 C CNN
F 3 "~" H 3850 6450 50  0001 C CNN
	1    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J14
U 1 1 60289ED3
P 5600 6450
F 0 "J14" H 5650 7567 50  0000 C CNN
F 1 "Morpho_Droite" H 5650 7476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 5600 6450 50  0001 C CNN
F 3 "~" H 5600 6450 50  0001 C CNN
	1    5600 6450
	1    0    0    -1  
$EndComp
Text GLabel 3550 5650 0    50   Input ~ 0
TX
$Comp
L power:GND #PWR02
U 1 1 60290C89
P 3550 6550
F 0 "#PWR02" H 3550 6300 50  0001 C CNN
F 1 "GND" V 3555 6422 50  0000 R CNN
F 2 "" H 3550 6550 50  0001 C CNN
F 3 "" H 3550 6550 50  0001 C CNN
	1    3550 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 602916F0
P 4250 6550
F 0 "#PWR03" H 4250 6300 50  0001 C CNN
F 1 "GND" V 4255 6422 50  0000 R CNN
F 2 "" H 4250 6550 50  0001 C CNN
F 3 "" H 4250 6550 50  0001 C CNN
	1    4250 6550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60291C87
P 4250 6650
F 0 "#PWR04" H 4250 6400 50  0001 C CNN
F 1 "GND" V 4255 6522 50  0000 R CNN
F 2 "" H 4250 6650 50  0001 C CNN
F 3 "" H 4250 6650 50  0001 C CNN
	1    4250 6650
	0    -1   -1   0   
$EndComp
Text GLabel 4250 5650 2    50   Input ~ 0
RX
Text GLabel 3550 7350 0    50   Input ~ 0
VCapt1
Text GLabel 4250 5750 2    50   Input ~ 0
RESET_N
Text GLabel 4250 6450 2    50   Input ~ 0
5V_NUC
Wire Wire Line
	3300 3450 3400 3450
Wire Wire Line
	3300 2950 3400 2950
Wire Wire Line
	3300 2750 3400 2750
Wire Wire Line
	3300 2550 3400 2550
Wire Wire Line
	3300 2650 3400 2650
Wire Wire Line
	4400 3250 4500 3250
$Comp
L power:GND #PWR08
U 1 1 602A28D6
P 6000 6550
F 0 "#PWR08" H 6000 6300 50  0001 C CNN
F 1 "GND" V 6005 6422 50  0000 R CNN
F 2 "" H 6000 6550 50  0001 C CNN
F 3 "" H 6000 6550 50  0001 C CNN
	1    6000 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 6550 6000 6550
Wire Wire Line
	4250 6450 4150 6450
Wire Wire Line
	3650 5650 3550 5650
Wire Wire Line
	4150 5650 4250 5650
Wire Wire Line
	4150 6550 4250 6550
Wire Wire Line
	3550 6550 3650 6550
Wire Wire Line
	4150 6650 4250 6650
Wire Wire Line
	4150 6750 4250 6750
Wire Wire Line
	4150 6950 4250 6950
Wire Wire Line
	4150 7050 4250 7050
Wire Wire Line
	4250 7450 4150 7450
Text GLabel 4250 6950 2    50   Input ~ 0
TX_4
Text GLabel 3550 7450 0    50   Input ~ 0
VCapt2
Text GLabel 4250 7050 2    50   Input ~ 0
RX_4
Wire Wire Line
	3550 7350 3650 7350
Wire Wire Line
	3550 7450 3650 7450
Wire Notes Line
	2900 2250 5150 2250
Wire Notes Line
	5150 2250 5150 3600
Wire Notes Line
	5150 3600 2900 3600
Wire Notes Line
	2900 3600 2900 2250
Text Notes 4550 2350 0    50   ~ 0
RN42_MODULE
Wire Notes Line
	2850 5250 6500 5250
Wire Notes Line
	6500 5250 6500 7600
Wire Notes Line
	6500 7600 2850 7600
Wire Notes Line
	2850 7600 2850 5250
Text Notes 5900 5350 0    50   ~ 0
Nucleo BOARD
Text GLabel 5300 7050 0    50   Input ~ 0
GPIO2_STATUS
Wire Wire Line
	4150 5750 4250 5750
$Comp
L Connector_Generic:Conn_01x02 J19
U 1 1 6048C813
P 5200 1250
F 0 "J19" H 5280 1242 50  0000 L CNN
F 1 "ExternalPower" H 5280 1151 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 5200 1250 50  0001 C CNN
F 3 "~" H 5200 1250 50  0001 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
Text GLabel 4900 1350 0    50   Input ~ 0
NUC_VIN
Wire Wire Line
	4900 1250 5000 1250
Wire Wire Line
	4900 1350 5000 1350
$Comp
L Connector_Generic:Conn_01x05 J17
U 1 1 60495B36
P 1900 4150
F 0 "J17" H 1980 4192 50  0000 L CNN
F 1 "RPLidar" H 1980 4101 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B05B-XH-A_1x05_P2.50mm_Vertical" H 1900 4150 50  0001 C CNN
F 3 "~" H 1900 4150 50  0001 C CNN
	1    1900 4150
	1    0    0    -1  
$EndComp
Text GLabel 1600 3950 0    50   Input ~ 0
5V
Text GLabel 1600 4150 0    50   Input ~ 0
TX_4
Text GLabel 1600 4050 0    50   Input ~ 0
RX_4
Text GLabel 5300 5850 0    50   Input ~ 0
Lidar_MOT
Wire Wire Line
	5300 5850 5400 5850
Text GLabel 1600 4350 0    50   Input ~ 0
Lidar_MOT
$Comp
L power:GND #PWR0104
U 1 1 604A269A
P 1600 4250
F 0 "#PWR0104" H 1600 4000 50  0001 C CNN
F 1 "GND" V 1605 4122 50  0000 R CNN
F 2 "" H 1600 4250 50  0001 C CNN
F 3 "" H 1600 4250 50  0001 C CNN
	1    1600 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3950 1700 3950
Wire Wire Line
	1600 4050 1700 4050
Wire Wire Line
	1600 4150 1700 4150
Wire Wire Line
	1600 4250 1700 4250
Wire Wire Line
	1600 4350 1700 4350
$Comp
L Connector_Generic:Conn_01x03 J20
U 1 1 604B6A09
P 4800 4450
F 0 "J20" H 4880 4492 50  0000 L CNN
F 1 "5V_reg" H 4880 4401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4800 4450 50  0001 C CNN
F 3 "~" H 4800 4450 50  0001 C CNN
	1    4800 4450
	1    0    0    -1  
$EndComp
Text GLabel 4500 4350 0    50   Input ~ 0
5V_REG
Text GLabel 4500 4450 0    50   Input ~ 0
5V_REG
Text GLabel 4500 4550 0    50   Input ~ 0
5V_REG
Text GLabel 5700 4450 0    50   Input ~ 0
3.3V
$Comp
L Connector_Generic:Conn_01x03 J21
U 1 1 604B7800
P 6000 4450
F 0 "J21" H 6080 4492 50  0000 L CNN
F 1 "3.3V_reg" H 6080 4401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6000 4450 50  0001 C CNN
F 3 "~" H 6000 4450 50  0001 C CNN
	1    6000 4450
	1    0    0    -1  
$EndComp
Text GLabel 5700 4350 0    50   Input ~ 0
3.3V
Text GLabel 5700 4550 0    50   Input ~ 0
3.3V
$Comp
L Connector_Generic:Conn_01x03 J18
U 1 1 604B7D7C
P 3500 4450
F 0 "J18" H 3580 4492 50  0000 L CNN
F 1 "GND_reg" H 3580 4401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3500 4450 50  0001 C CNN
F 3 "~" H 3500 4450 50  0001 C CNN
	1    3500 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 604B809C
P 3200 4550
F 0 "#PWR015" H 3200 4300 50  0001 C CNN
F 1 "GND" V 3205 4422 50  0000 R CNN
F 2 "" H 3200 4550 50  0001 C CNN
F 3 "" H 3200 4550 50  0001 C CNN
	1    3200 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 604B84EF
P 3200 4450
F 0 "#PWR014" H 3200 4200 50  0001 C CNN
F 1 "GND" V 3205 4322 50  0000 R CNN
F 2 "" H 3200 4450 50  0001 C CNN
F 3 "" H 3200 4450 50  0001 C CNN
	1    3200 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 604B8647
P 3200 4350
F 0 "#PWR013" H 3200 4100 50  0001 C CNN
F 1 "GND" V 3205 4222 50  0000 R CNN
F 2 "" H 3200 4350 50  0001 C CNN
F 3 "" H 3200 4350 50  0001 C CNN
	1    3200 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4350 3300 4350
Wire Wire Line
	3300 4450 3200 4450
Wire Wire Line
	3300 4550 3200 4550
Wire Wire Line
	4600 4350 4500 4350
Wire Wire Line
	4600 4450 4500 4450
Wire Wire Line
	4600 4550 4500 4550
Wire Wire Line
	5800 4350 5700 4350
Wire Wire Line
	5800 4450 5700 4450
Wire Wire Line
	5800 4550 5700 4550
Text GLabel 950  5650 0    50   Input ~ 0
VIN
$Comp
L Driver_Motor:L293D U3
U 1 1 604BE3FA
P 10000 2150
F 0 "U3" H 10000 3328 50  0000 C CNN
F 1 "L293D" H 10000 3237 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10250 1400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 9700 2850 50  0001 C CNN
	1    10000 2150
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U4
U 1 1 604BE518
P 10000 4750
F 0 "U4" H 10000 5928 50  0000 C CNN
F 1 "L293D" H 10000 5837 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10250 4000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 9700 5450 50  0001 C CNN
	1    10000 4750
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U2
U 1 1 604BE59C
P 8150 3900
F 0 "U2" H 8150 5078 50  0000 C CNN
F 1 "L293D" H 8150 4987 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8400 3150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 7850 4600 50  0001 C CNN
	1    8150 3900
	1    0    0    -1  
$EndComp
Text GLabel 5300 7150 0    50   Input ~ 0
EnaPower
Text GLabel 7550 3700 0    50   Input ~ 0
EnaPower
Text GLabel 9400 2550 0    50   Input ~ 0
EnaPower
Text GLabel 9400 4550 0    50   Input ~ 0
EnaPower
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 604BEB8F
P 10950 2150
F 0 "J8" H 10868 1825 50  0000 C CNN
F 1 "MOT_2" H 10868 1916 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 10950 2150 50  0001 C CNN
F 3 "~" H 10950 2150 50  0001 C CNN
	1    10950 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 604BEC23
P 10900 4150
F 0 "J6" H 10818 3825 50  0000 C CNN
F 1 "MOT_3" H 10818 3916 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 10900 4150 50  0001 C CNN
F 3 "~" H 10900 4150 50  0001 C CNN
	1    10900 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 604BEDE5
P 9200 3300
F 0 "J5" H 9118 2975 50  0000 C CNN
F 1 "MOT_1" H 9118 3066 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 9200 3300 50  0001 C CNN
F 3 "~" H 9200 3300 50  0001 C CNN
	1    9200 3300
	1    0    0    -1  
$EndComp
Text GLabel 8300 2850 2    50   Input ~ 0
VIN
Text GLabel 10150 3700 2    50   Input ~ 0
VIN
Text GLabel 10150 1100 2    50   Input ~ 0
VIN
Text GLabel 8000 2850 0    50   Input ~ 0
5V
Text GLabel 9850 1100 0    50   Input ~ 0
5V
Text GLabel 9850 3700 0    50   Input ~ 0
5V
$Comp
L power:GND #PWR0105
U 1 1 604BFD9F
P 7950 4800
F 0 "#PWR0105" H 7950 4550 50  0001 C CNN
F 1 "GND" V 7955 4672 50  0000 R CNN
F 2 "" H 7950 4800 50  0001 C CNN
F 3 "" H 7950 4800 50  0001 C CNN
	1    7950 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 604BFDDE
P 9800 3050
F 0 "#PWR0106" H 9800 2800 50  0001 C CNN
F 1 "GND" V 9805 2922 50  0000 R CNN
F 2 "" H 9800 3050 50  0001 C CNN
F 3 "" H 9800 3050 50  0001 C CNN
	1    9800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 604BFE51
P 9800 5650
F 0 "#PWR0107" H 9800 5400 50  0001 C CNN
F 1 "GND" V 9805 5522 50  0000 R CNN
F 2 "" H 9800 5650 50  0001 C CNN
F 3 "" H 9800 5650 50  0001 C CNN
	1    9800 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5650 9800 5600
Wire Wire Line
	9800 5600 9900 5600
Wire Wire Line
	9900 5600 9900 5550
Connection ~ 9800 5600
Wire Wire Line
	9800 5600 9800 5550
Wire Wire Line
	9900 5600 10100 5600
Wire Wire Line
	10100 5600 10100 5550
Connection ~ 9900 5600
Wire Wire Line
	10100 5600 10200 5600
Wire Wire Line
	10200 5600 10200 5550
Connection ~ 10100 5600
Wire Wire Line
	10500 4150 10600 4150
Wire Wire Line
	10500 4350 10600 4350
Wire Wire Line
	10600 4350 10600 4250
Wire Wire Line
	10600 4250 10700 4250
Wire Wire Line
	9400 4550 9500 4550
Wire Wire Line
	7550 3700 7650 3700
Wire Wire Line
	8650 3300 8850 3300
Wire Wire Line
	8650 3500 8750 3500
Wire Wire Line
	8750 3500 8750 3400
Wire Wire Line
	8750 3400 8850 3400
Text GLabel 7550 3300 0    50   Input ~ 0
Mot1_D1
Text GLabel 7550 3500 0    50   Input ~ 0
Mot1_D2
Text GLabel 5300 7250 0    50   Input ~ 0
Mot1_D1
Text GLabel 9400 2350 0    50   Input ~ 0
Mot2_D1
Text GLabel 9400 2150 0    50   Input ~ 0
Mot2_D2
Text GLabel 9400 4150 0    50   Input ~ 0
Mot3_D1
Text GLabel 9400 4350 0    50   Input ~ 0
Mot3_D2
Wire Wire Line
	7550 3300 7650 3300
Wire Wire Line
	7550 3500 7650 3500
Wire Wire Line
	9400 4150 9500 4150
Wire Wire Line
	9400 4350 9500 4350
Wire Wire Line
	9850 1100 9900 1100
Wire Wire Line
	9900 1100 9900 1150
Wire Wire Line
	10100 1150 10100 1100
Wire Wire Line
	10100 1100 10150 1100
Wire Wire Line
	9800 3050 9800 3000
Wire Wire Line
	9800 3000 9900 3000
Wire Wire Line
	9900 3000 9900 2950
Connection ~ 9800 3000
Wire Wire Line
	9800 3000 9800 2950
Wire Wire Line
	9900 3000 10100 3000
Wire Wire Line
	10100 3000 10100 2950
Connection ~ 9900 3000
Wire Wire Line
	10100 3000 10200 3000
Wire Wire Line
	10200 3000 10200 2950
Connection ~ 10100 3000
Wire Wire Line
	8000 2850 8050 2850
Wire Wire Line
	8050 2850 8050 2900
Wire Wire Line
	8250 2900 8250 2850
Wire Wire Line
	8250 2850 8300 2850
Wire Wire Line
	9850 3700 9900 3700
Wire Wire Line
	9900 3700 9900 3750
Wire Wire Line
	10100 3750 10100 3700
Wire Wire Line
	10100 3700 10150 3700
Wire Wire Line
	7950 4800 7950 4750
Wire Wire Line
	7950 4750 8050 4750
Wire Wire Line
	8050 4750 8050 4700
Connection ~ 7950 4750
Wire Wire Line
	7950 4750 7950 4700
Wire Wire Line
	8050 4750 8250 4750
Wire Wire Line
	8250 4750 8250 4700
Connection ~ 8050 4750
Wire Wire Line
	8250 4750 8350 4750
Wire Wire Line
	8350 4750 8350 4700
Connection ~ 8250 4750
Text GLabel 5300 5650 0    50   Input ~ 0
Mot3_D1
Text GLabel 5300 5750 0    50   Input ~ 0
Mot3_D2
Text GLabel 6000 6950 2    50   Input ~ 0
Mot2_D1
Text GLabel 6000 7050 2    50   Input ~ 0
Mot2_D2
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 6053466A
P 6250 2900
F 0 "J4" H 6330 2892 50  0000 L CNN
F 1 "Kappa_M868" H 6330 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6250 2900 50  0001 C CNN
F 3 "~" H 6250 2900 50  0001 C CNN
	1    6250 2900
	1    0    0    -1  
$EndComp
Text GLabel 5950 3000 0    50   Input ~ 0
RX
Text GLabel 5950 3100 0    50   Input ~ 0
TX
Wire Wire Line
	5950 3100 6050 3100
Wire Wire Line
	5950 3000 6050 3000
Text GLabel 4250 6350 2    50   Input ~ 0
3.3V
Wire Wire Line
	4150 6350 4250 6350
Text GLabel 5950 3300 0    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR0108
U 1 1 60562766
P 5950 3400
F 0 "#PWR0108" H 5950 3150 50  0001 C CNN
F 1 "GND" V 5955 3272 50  0000 R CNN
F 2 "" H 5950 3400 50  0001 C CNN
F 3 "" H 5950 3400 50  0001 C CNN
	1    5950 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 605627A1
P 5950 2400
F 0 "#PWR0109" H 5950 2150 50  0001 C CNN
F 1 "GND" V 5955 2272 50  0000 R CNN
F 2 "" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 605628CB
P 5750 2700
F 0 "R2" V 5543 2700 50  0000 C CNN
F 1 "8.2k" V 5634 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2700 50  0001 C CNN
F 3 "~" H 5750 2700 50  0001 C CNN
	1    5750 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60562A37
P 5500 2700
F 0 "#PWR0110" H 5500 2450 50  0001 C CNN
F 1 "GND" V 5505 2572 50  0000 R CNN
F 2 "" H 5500 2700 50  0001 C CNN
F 3 "" H 5500 2700 50  0001 C CNN
	1    5500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2700 5600 2700
Wire Wire Line
	5900 2700 6050 2700
Wire Wire Line
	5950 2400 6050 2400
Wire Wire Line
	5950 3300 6050 3300
Wire Wire Line
	5950 3400 6050 3400
Text GLabel 5550 2150 1    50   Input ~ 0
3.3V
$Comp
L Device:LED D1
U 1 1 6057E57D
P 5550 2400
F 0 "D1" V 5588 2283 50  0000 R CNN
F 1 "LED" V 5497 2283 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 5550 2400 50  0001 C CNN
F 3 "~" H 5550 2400 50  0001 C CNN
	1    5550 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6057E655
P 5750 2600
F 0 "R1" V 5543 2600 50  0000 C CNN
F 1 "120" V 5634 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 2600 50  0001 C CNN
F 3 "~" H 5750 2600 50  0001 C CNN
	1    5750 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2550 5550 2600
Wire Wire Line
	5550 2600 5600 2600
Wire Wire Line
	5900 2600 6050 2600
Wire Wire Line
	5550 2150 5550 2250
Wire Wire Line
	5900 6950 6000 6950
Wire Wire Line
	5900 7050 6000 7050
Wire Wire Line
	3550 6450 3650 6450
Wire Wire Line
	5300 5650 5400 5650
Wire Wire Line
	5300 5750 5400 5750
Text GLabel 3550 6450 0    50   Input ~ 0
Mot1_D2
Wire Wire Line
	5300 7150 5400 7150
Wire Wire Line
	5300 6250 5400 6250
Wire Wire Line
	5300 7050 5400 7050
Wire Wire Line
	10500 2150 10650 2150
Wire Wire Line
	10500 2350 10650 2350
Wire Wire Line
	10650 2350 10650 2250
Wire Wire Line
	10650 2250 10750 2250
Wire Wire Line
	9400 2150 9500 2150
Wire Wire Line
	9400 2350 9500 2350
Wire Wire Line
	9400 2550 9500 2550
$Comp
L power:GND #PWR05
U 1 1 614A206E
P 4900 2950
F 0 "#PWR05" H 4900 2700 50  0001 C CNN
F 1 "GND" V 4905 2822 50  0000 R CNN
F 2 "" H 4900 2950 50  0001 C CNN
F 3 "" H 4900 2950 50  0001 C CNN
	1    4900 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 614A2171
P 4650 2950
F 0 "R3" V 4443 2950 50  0000 C CNN
F 1 "1k" V 4534 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 2950 50  0001 C CNN
F 3 "~" H 4650 2950 50  0001 C CNN
	1    4650 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2950 4500 2950
Wire Wire Line
	4800 2950 4900 2950
$Comp
L Connector_Generic:Conn_01x06 J13
U 1 1 614A2757
P 8350 2050
F 0 "J13" H 8430 2042 50  0000 L CNN
F 1 "Moteur1" H 8430 1951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8350 2050 50  0001 C CNN
F 3 "~" H 8350 2050 50  0001 C CNN
	1    8350 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J15
U 1 1 614A2933
P 10900 6000
F 0 "J15" H 10980 5992 50  0000 L CNN
F 1 "Moteur3" H 10980 5901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10900 6000 50  0001 C CNN
F 3 "~" H 10900 6000 50  0001 C CNN
	1    10900 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J16
U 1 1 614A29C5
P 10850 3200
F 0 "J16" H 10930 3192 50  0000 L CNN
F 1 "Moteur2" H 10930 3101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10850 3200 50  0001 C CNN
F 3 "~" H 10850 3200 50  0001 C CNN
	1    10850 3200
	1    0    0    -1  
$EndComp
Text GLabel 8850 3250 1    50   Input ~ 0
M1_1
Text GLabel 8050 1950 0    50   Input ~ 0
M1_1
Text GLabel 8850 3450 3    50   Input ~ 0
M1_2
Text GLabel 8050 1850 0    50   Input ~ 0
M1_2
$Comp
L power:GND #PWR07
U 1 1 614A392C
P 8050 2050
F 0 "#PWR07" H 8050 1800 50  0001 C CNN
F 1 "GND" V 8055 1922 50  0000 R CNN
F 2 "" H 8050 2050 50  0001 C CNN
F 3 "" H 8050 2050 50  0001 C CNN
	1    8050 2050
	0    1    1    0   
$EndComp
Text GLabel 8050 2250 0    50   Input ~ 0
M1_A
Text GLabel 8050 2350 0    50   Input ~ 0
M1_B
$Comp
L Device:R R5
U 1 1 614A3B2F
P 7200 1950
F 0 "R5" V 6993 1950 50  0000 C CNN
F 1 "1k" V 7084 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 1950 50  0001 C CNN
F 3 "~" H 7200 1950 50  0001 C CNN
	1    7200 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 614A3C00
P 6850 1950
F 0 "R4" V 6643 1950 50  0000 C CNN
F 1 "1k" V 6734 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6780 1950 50  0001 C CNN
F 3 "~" H 6850 1950 50  0001 C CNN
	1    6850 1950
	-1   0    0    1   
$EndComp
Text GLabel 6800 2150 0    50   Input ~ 0
M1_A
Text GLabel 7150 2150 0    50   Input ~ 0
M1_B
Wire Wire Line
	6800 1750 6850 1750
Wire Wire Line
	7200 1750 7200 1800
Wire Wire Line
	6850 1800 6850 1750
Connection ~ 6850 1750
Wire Wire Line
	6850 1750 7200 1750
Wire Wire Line
	6800 2150 6850 2150
Wire Wire Line
	6850 2150 6850 2100
Wire Wire Line
	7150 2150 7200 2150
Wire Wire Line
	7200 2150 7200 2100
Wire Wire Line
	8050 1850 8150 1850
Wire Wire Line
	8050 1950 8150 1950
Wire Wire Line
	8050 2050 8150 2050
Wire Wire Line
	8050 2150 8150 2150
Wire Wire Line
	8050 2250 8150 2250
Wire Wire Line
	8050 2350 8150 2350
Wire Wire Line
	8850 3300 8850 3250
Connection ~ 8850 3300
Wire Wire Line
	8850 3300 9000 3300
Wire Wire Line
	8850 3450 8850 3400
Connection ~ 8850 3400
Wire Wire Line
	8850 3400 9000 3400
Text GLabel 4250 7250 2    50   Input ~ 0
M1_A
Text GLabel 4250 7350 2    50   Input ~ 0
M1_B
Wire Wire Line
	4150 7250 4250 7250
Wire Wire Line
	4150 7350 4250 7350
Text GLabel 10550 3100 0    50   Input ~ 0
M2_1
Text GLabel 10550 3000 0    50   Input ~ 0
M2_2
$Comp
L power:GND #PWR0111
U 1 1 614BB448
P 10550 3200
F 0 "#PWR0111" H 10550 2950 50  0001 C CNN
F 1 "GND" V 10555 3072 50  0000 R CNN
F 2 "" H 10550 3200 50  0001 C CNN
F 3 "" H 10550 3200 50  0001 C CNN
	1    10550 3200
	0    1    1    0   
$EndComp
Text GLabel 10550 3400 0    50   Input ~ 0
M2_A
Text GLabel 10550 3500 0    50   Input ~ 0
M2_B
Wire Wire Line
	10550 3000 10650 3000
Wire Wire Line
	10550 3100 10650 3100
Wire Wire Line
	10550 3200 10650 3200
Wire Wire Line
	10550 3300 10650 3300
Wire Wire Line
	10550 3400 10650 3400
Wire Wire Line
	10550 3500 10650 3500
Text GLabel 10650 2100 1    50   Input ~ 0
M2_2
Text GLabel 10650 2400 3    50   Input ~ 0
M2_1
Wire Wire Line
	10650 2150 10650 2100
Connection ~ 10650 2150
Wire Wire Line
	10650 2150 10750 2150
Wire Wire Line
	10650 2350 10650 2400
Connection ~ 10650 2350
Text GLabel 10600 5900 0    50   Input ~ 0
M3_1
Text GLabel 10600 5800 0    50   Input ~ 0
M3_2
$Comp
L power:GND #PWR0112
U 1 1 614DA020
P 10600 6000
F 0 "#PWR0112" H 10600 5750 50  0001 C CNN
F 1 "GND" V 10605 5872 50  0000 R CNN
F 2 "" H 10600 6000 50  0001 C CNN
F 3 "" H 10600 6000 50  0001 C CNN
	1    10600 6000
	0    1    1    0   
$EndComp
Text GLabel 10600 6200 0    50   Input ~ 0
M3_A
Text GLabel 10600 6300 0    50   Input ~ 0
M3_B
Wire Wire Line
	10600 5800 10700 5800
Wire Wire Line
	10600 5900 10700 5900
Wire Wire Line
	10600 6000 10700 6000
Wire Wire Line
	10600 6100 10700 6100
Wire Wire Line
	10600 6200 10700 6200
Wire Wire Line
	10600 6300 10700 6300
Text GLabel 10600 4100 1    50   Input ~ 0
M3_2
Text GLabel 10600 4400 3    50   Input ~ 0
M3_1
Wire Wire Line
	10600 4100 10600 4150
Connection ~ 10600 4150
Wire Wire Line
	10600 4150 10700 4150
Wire Wire Line
	10600 4350 10600 4400
Connection ~ 10600 4350
Text GLabel 6000 6650 2    50   Input ~ 0
M2_A
Text GLabel 6000 6750 2    50   Input ~ 0
M2_B
Wire Wire Line
	5900 6650 6000 6650
Wire Wire Line
	5900 6750 6000 6750
$Comp
L Device:R R7
U 1 1 615267F2
P 7200 1300
F 0 "R7" V 6993 1300 50  0000 C CNN
F 1 "1k" V 7084 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 1300 50  0001 C CNN
F 3 "~" H 7200 1300 50  0001 C CNN
	1    7200 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 615267F8
P 6850 1300
F 0 "R6" V 6643 1300 50  0000 C CNN
F 1 "1k" V 6734 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6780 1300 50  0001 C CNN
F 3 "~" H 6850 1300 50  0001 C CNN
	1    6850 1300
	-1   0    0    1   
$EndComp
Text GLabel 6800 1500 0    50   Input ~ 0
M2_A
Text GLabel 7150 1500 0    50   Input ~ 0
M2_B
Wire Wire Line
	6800 1100 6850 1100
Wire Wire Line
	7200 1100 7200 1150
Wire Wire Line
	6850 1150 6850 1100
Connection ~ 6850 1100
Wire Wire Line
	6850 1100 7200 1100
Wire Wire Line
	6800 1500 6850 1500
Wire Wire Line
	6850 1500 6850 1450
Wire Wire Line
	7150 1500 7200 1500
Wire Wire Line
	7200 1500 7200 1450
$Comp
L Device:R R9
U 1 1 615428BA
P 8450 5650
F 0 "R9" V 8243 5650 50  0000 C CNN
F 1 "1k" V 8334 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8380 5650 50  0001 C CNN
F 3 "~" H 8450 5650 50  0001 C CNN
	1    8450 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 615428C0
P 8100 5650
F 0 "R8" V 7893 5650 50  0000 C CNN
F 1 "1k" V 7984 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8030 5650 50  0001 C CNN
F 3 "~" H 8100 5650 50  0001 C CNN
	1    8100 5650
	-1   0    0    1   
$EndComp
Text GLabel 8050 5850 0    50   Input ~ 0
M3_A
Text GLabel 8400 5850 0    50   Input ~ 0
M3_B
Wire Wire Line
	8050 5450 8100 5450
Wire Wire Line
	8450 5450 8450 5500
Wire Wire Line
	8100 5500 8100 5450
Connection ~ 8100 5450
Wire Wire Line
	8100 5450 8450 5450
Wire Wire Line
	8050 5850 8100 5850
Wire Wire Line
	8100 5850 8100 5800
Wire Wire Line
	8400 5850 8450 5850
Wire Wire Line
	8450 5850 8450 5800
Text GLabel 5300 6950 0    50   Input ~ 0
M3_A
Text GLabel 5300 6850 0    50   Input ~ 0
M3_B
Wire Wire Line
	5300 6350 5400 6350
Text GLabel 8050 5450 0    50   Input ~ 0
3.3V
Text GLabel 6800 1100 0    50   Input ~ 0
3.3V
Text GLabel 6800 1750 0    50   Input ~ 0
3.3V
Text GLabel 10600 6100 0    50   Input ~ 0
3.3V
Text GLabel 10550 3300 0    50   Input ~ 0
3.3V
Text GLabel 8050 2150 0    50   Input ~ 0
3.3V
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J22
U 1 1 6152D38A
P 3850 1800
F 0 "J22" H 3900 2117 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 3900 2026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 3850 1800 50  0001 C CNN
F 3 "~" H 3850 1800 50  0001 C CNN
	1    3850 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6152EF76
P 3550 1700
F 0 "#PWR0113" H 3550 1450 50  0001 C CNN
F 1 "GND" V 3555 1572 50  0000 R CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	0    1    1    0   
$EndComp
Text GLabel 4250 1700 2    50   Input ~ 0
3.3V
Wire Wire Line
	3550 1700 3650 1700
Wire Wire Line
	4150 1700 4250 1700
Text GLabel 3550 1800 0    50   Input ~ 0
nRF_CE
Text GLabel 3550 1900 0    50   Input ~ 0
nRF_SCK
Text GLabel 3550 2000 0    50   Input ~ 0
nRF_MISO
Text GLabel 4250 2000 2    50   Input ~ 0
nRF_IRQ
Text GLabel 4250 1900 2    50   Input ~ 0
nRF_MOSI
Text GLabel 4250 1800 2    50   Input ~ 0
nRF_CSN
Wire Wire Line
	3550 1800 3650 1800
Wire Wire Line
	3550 1900 3650 1900
Wire Wire Line
	4150 1800 4250 1800
Wire Wire Line
	4150 1900 4250 1900
Wire Wire Line
	4150 2000 4250 2000
Wire Wire Line
	3550 2000 3650 2000
Text GLabel 5300 6250 0    50   Input ~ 0
nRF_MISO
Text GLabel 5300 6150 0    50   Input ~ 0
nRF_SCK
Text GLabel 5300 6350 0    50   Input ~ 0
nRF_MOSI
Wire Wire Line
	5300 7250 5400 7250
Wire Wire Line
	5300 6950 5400 6950
Wire Wire Line
	5300 6850 5400 6850
Wire Wire Line
	5300 6150 5400 6150
Text GLabel 6000 6150 2    50   Input ~ 0
nRF_CSN
Text GLabel 6000 6350 2    50   Input ~ 0
nRF_IRQ
Text GLabel 6000 6250 2    50   Input ~ 0
nRF_CE
Wire Wire Line
	5900 6350 6000 6350
Wire Wire Line
	5900 6250 6000 6250
Wire Wire Line
	5900 6150 6000 6150
Text GLabel 4900 1250 0    50   Input ~ 0
VIN
Text GLabel 4250 6750 2    50   Input ~ 0
NUC_VIN
$Comp
L Connector_Generic:Conn_01x06 J23
U 1 1 615653D9
P 8350 1250
F 0 "J23" H 8430 1242 50  0000 L CNN
F 1 "Moteur1bis" H 8430 1151 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 8350 1250 50  0001 C CNN
F 3 "~" H 8350 1250 50  0001 C CNN
	1    8350 1250
	1    0    0    -1  
$EndComp
Text GLabel 8050 1150 0    50   Input ~ 0
M1_1
Text GLabel 8050 1050 0    50   Input ~ 0
M1_2
$Comp
L power:GND #PWR010
U 1 1 615654DE
P 8050 1250
F 0 "#PWR010" H 8050 1000 50  0001 C CNN
F 1 "GND" V 8055 1122 50  0000 R CNN
F 2 "" H 8050 1250 50  0001 C CNN
F 3 "" H 8050 1250 50  0001 C CNN
	1    8050 1250
	0    1    1    0   
$EndComp
Text GLabel 8050 1450 0    50   Input ~ 0
M1_A
Text GLabel 8050 1550 0    50   Input ~ 0
M1_B
Wire Wire Line
	8050 1050 8150 1050
Wire Wire Line
	8050 1150 8150 1150
Wire Wire Line
	8050 1250 8150 1250
Wire Wire Line
	8050 1350 8150 1350
Wire Wire Line
	8050 1450 8150 1450
Wire Wire Line
	8050 1550 8150 1550
Text GLabel 8050 1350 0    50   Input ~ 0
3.3V
$Comp
L Connector_Generic:Conn_01x06 J24
U 1 1 6157530A
P 9200 6050
F 0 "J24" H 9280 6042 50  0000 L CNN
F 1 "Moteur1bis" H 9280 5951 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 9200 6050 50  0001 C CNN
F 3 "~" H 9200 6050 50  0001 C CNN
	1    9200 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J25
U 1 1 61575476
P 11000 750
F 0 "J25" H 11080 742 50  0000 L CNN
F 1 "Moteur2bis" H 11080 651 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 11000 750 50  0001 C CNN
F 3 "~" H 11000 750 50  0001 C CNN
	1    11000 750 
	1    0    0    -1  
$EndComp
Text GLabel 10700 650  0    50   Input ~ 0
M2_1
Text GLabel 10700 550  0    50   Input ~ 0
M2_2
$Comp
L power:GND #PWR012
U 1 1 61575758
P 10700 750
F 0 "#PWR012" H 10700 500 50  0001 C CNN
F 1 "GND" V 10705 622 50  0000 R CNN
F 2 "" H 10700 750 50  0001 C CNN
F 3 "" H 10700 750 50  0001 C CNN
	1    10700 750 
	0    1    1    0   
$EndComp
Text GLabel 10700 950  0    50   Input ~ 0
M2_A
Text GLabel 10700 1050 0    50   Input ~ 0
M2_B
Wire Wire Line
	10700 550  10800 550 
Wire Wire Line
	10700 650  10800 650 
Wire Wire Line
	10700 750  10800 750 
Wire Wire Line
	10700 850  10800 850 
Wire Wire Line
	10700 950  10800 950 
Wire Wire Line
	10700 1050 10800 1050
Text GLabel 10700 850  0    50   Input ~ 0
3.3V
Text GLabel 8900 5950 0    50   Input ~ 0
M3_1
Text GLabel 8900 5850 0    50   Input ~ 0
M3_2
$Comp
L power:GND #PWR011
U 1 1 61595BD7
P 8900 6050
F 0 "#PWR011" H 8900 5800 50  0001 C CNN
F 1 "GND" V 8905 5922 50  0000 R CNN
F 2 "" H 8900 6050 50  0001 C CNN
F 3 "" H 8900 6050 50  0001 C CNN
	1    8900 6050
	0    1    1    0   
$EndComp
Text GLabel 8900 6250 0    50   Input ~ 0
M3_A
Text GLabel 8900 6350 0    50   Input ~ 0
M3_B
Wire Wire Line
	8900 5850 9000 5850
Wire Wire Line
	8900 5950 9000 5950
Wire Wire Line
	8900 6050 9000 6050
Wire Wire Line
	8900 6150 9000 6150
Wire Wire Line
	8900 6250 9000 6250
Wire Wire Line
	8900 6350 9000 6350
Text GLabel 8900 6150 0    50   Input ~ 0
3.3V
$EndSCHEMATC
