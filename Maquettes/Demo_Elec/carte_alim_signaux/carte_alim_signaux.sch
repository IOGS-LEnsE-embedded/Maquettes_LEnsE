EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Conn_Coaxial J1
U 1 1 604B22C5
P 1800 1400
F 0 "J1" H 1900 1375 50  0000 L CNN
F 1 "IN1_BNC" H 1900 1284 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 1800 1400 50  0001 C CNN
F 3 " ~" H 1800 1400 50  0001 C CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 604B41F3
P 1800 2200
F 0 "J2" H 1900 2175 50  0000 L CNN
F 1 "IN2_BNC" H 1900 2084 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 1800 2200 50  0001 C CNN
F 3 " ~" H 1800 2200 50  0001 C CNN
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 604B4C67
P 1800 1700
F 0 "#PWR0101" H 1800 1450 50  0001 C CNN
F 1 "GND" H 1805 1527 50  0000 C CNN
F 2 "" H 1800 1700 50  0001 C CNN
F 3 "" H 1800 1700 50  0001 C CNN
	1    1800 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 604B5201
P 1800 2500
F 0 "#PWR0102" H 1800 2250 50  0001 C CNN
F 1 "GND" H 1805 2327 50  0000 C CNN
F 2 "" H 1800 2500 50  0001 C CNN
F 3 "" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
Text GLabel 1500 1400 0    50   Input ~ 0
IN1
Text GLabel 1500 2200 0    50   Input ~ 0
IN2
Wire Wire Line
	1500 1400 1600 1400
Wire Wire Line
	1500 2200 1600 2200
$Comp
L Connector:Conn_Coaxial J3
U 1 1 604C0165
P 1800 3450
F 0 "J3" H 1900 3425 50  0000 L CNN
F 1 "OUT1_BNC" H 1900 3334 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 1800 3450 50  0001 C CNN
F 3 " ~" H 1800 3450 50  0001 C CNN
	1    1800 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 604C016B
P 1800 4250
F 0 "J4" H 1900 4225 50  0000 L CNN
F 1 "OUT2_BNC" H 1900 4134 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 1800 4250 50  0001 C CNN
F 3 " ~" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 604C0171
P 1800 3750
F 0 "#PWR0103" H 1800 3500 50  0001 C CNN
F 1 "GND" H 1805 3577 50  0000 C CNN
F 2 "" H 1800 3750 50  0001 C CNN
F 3 "" H 1800 3750 50  0001 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 604C0177
P 1800 4550
F 0 "#PWR0104" H 1800 4300 50  0001 C CNN
F 1 "GND" H 1805 4377 50  0000 C CNN
F 2 "" H 1800 4550 50  0001 C CNN
F 3 "" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
Text GLabel 1500 3450 0    50   Input ~ 0
OUT1
Text GLabel 1500 4250 0    50   Input ~ 0
OUT2
Wire Wire Line
	1500 3450 1600 3450
Wire Wire Line
	1500 4250 1600 4250
$Comp
L Connector:Conn_Coaxial J5
U 1 1 604C15A9
P 1800 5050
F 0 "J5" H 1900 5025 50  0000 L CNN
F 1 "OUT3_BNC" H 1900 4934 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 1800 5050 50  0001 C CNN
F 3 " ~" H 1800 5050 50  0001 C CNN
	1    1800 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J6
U 1 1 604C15AF
P 1800 5850
F 0 "J6" H 1900 5825 50  0000 L CNN
F 1 "OUT4_BNC" H 1900 5734 50  0000 L CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 1800 5850 50  0001 C CNN
F 3 " ~" H 1800 5850 50  0001 C CNN
	1    1800 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 604C15B5
P 1800 5350
F 0 "#PWR0105" H 1800 5100 50  0001 C CNN
F 1 "GND" H 1805 5177 50  0000 C CNN
F 2 "" H 1800 5350 50  0001 C CNN
F 3 "" H 1800 5350 50  0001 C CNN
	1    1800 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 604C15BB
P 1800 6150
F 0 "#PWR0106" H 1800 5900 50  0001 C CNN
F 1 "GND" H 1805 5977 50  0000 C CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "" H 1800 6150 50  0001 C CNN
	1    1800 6150
	1    0    0    -1  
$EndComp
Text GLabel 1500 5050 0    50   Input ~ 0
OUT3
Text GLabel 1500 5850 0    50   Input ~ 0
OUT4
Wire Wire Line
	1500 5050 1600 5050
Wire Wire Line
	1500 5850 1600 5850
Wire Wire Line
	1800 1700 1800 1600
Wire Wire Line
	1800 2500 1800 2400
Wire Wire Line
	1800 3750 1800 3650
Wire Wire Line
	1800 4550 1800 4450
Wire Wire Line
	1800 5350 1800 5250
Wire Wire Line
	1800 6150 1800 6050
$Comp
L power:GND #PWR0107
U 1 1 604C20D4
P 6750 2100
F 0 "#PWR0107" H 6750 1850 50  0001 C CNN
F 1 "GND" V 6755 1972 50  0000 R CNN
F 2 "" H 6750 2100 50  0001 C CNN
F 3 "" H 6750 2100 50  0001 C CNN
	1    6750 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 604C2ACC
P 6750 2300
F 0 "#PWR0108" H 6750 2050 50  0001 C CNN
F 1 "GND" V 6755 2172 50  0000 R CNN
F 2 "" H 6750 2300 50  0001 C CNN
F 3 "" H 6750 2300 50  0001 C CNN
	1    6750 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 604C2BF4
P 6750 2800
F 0 "#PWR0109" H 6750 2550 50  0001 C CNN
F 1 "GND" V 6755 2672 50  0000 R CNN
F 2 "" H 6750 2800 50  0001 C CNN
F 3 "" H 6750 2800 50  0001 C CNN
	1    6750 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 604C2EF8
P 6750 3100
F 0 "#PWR0110" H 6750 2850 50  0001 C CNN
F 1 "GND" V 6755 2972 50  0000 R CNN
F 2 "" H 6750 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	0    1    1    0   
$EndComp
Text GLabel 6750 2700 0    50   Input ~ 0
OUT1
Text GLabel 6750 2600 0    50   Input ~ 0
OUT2
Text GLabel 6750 2500 0    50   Input ~ 0
OUT3
Text GLabel 6750 2400 0    50   Input ~ 0
OUT4
Text GLabel 6750 3000 0    50   Input ~ 0
IN1
Text GLabel 6750 2900 0    50   Input ~ 0
IN2
Text GLabel 6750 2200 0    50   Input ~ 0
-15V
Text GLabel 6750 3200 0    50   Input ~ 0
SEL1
Text GLabel 6750 3300 0    50   Input ~ 0
SEL2
Wire Wire Line
	6750 2000 6850 2000
Wire Wire Line
	6750 2100 6850 2100
Wire Wire Line
	6750 2200 6850 2200
Wire Wire Line
	6750 2300 6850 2300
Wire Wire Line
	6750 2400 6850 2400
Wire Wire Line
	6750 2500 6850 2500
Wire Wire Line
	6750 2600 6850 2600
Wire Wire Line
	6750 2700 6850 2700
Wire Wire Line
	6750 2800 6850 2800
Wire Wire Line
	6750 2900 6850 2900
Wire Wire Line
	6750 3000 6850 3000
Wire Wire Line
	6750 3100 6850 3100
Wire Wire Line
	6750 3200 6850 3200
Wire Wire Line
	6750 3300 6850 3300
$Comp
L Regulator_Linear:L7805 U1
U 1 1 604C672D
P 4100 3100
F 0 "U1" H 4100 3342 50  0000 C CNN
F 1 "L7805" H 4100 3251 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4125 2950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4100 3050 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 604C8242
P 4600 3350
F 0 "C5" H 4718 3396 50  0000 L CNN
F 1 "10u" H 4718 3305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4638 3200 50  0001 C CNN
F 3 "~" H 4600 3350 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 604C9062
P 3550 3350
F 0 "C3" H 3668 3396 50  0000 L CNN
F 1 "10u" H 3668 3305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3588 3200 50  0001 C CNN
F 3 "~" H 3550 3350 50  0001 C CNN
	1    3550 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 604C99D6
P 3200 3350
F 0 "C1" H 3315 3396 50  0000 L CNN
F 1 "10n" H 3315 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 3238 3200 50  0001 C CNN
F 3 "~" H 3200 3350 50  0001 C CNN
	1    3200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 604C9C3C
P 4950 3350
F 0 "C7" H 5065 3396 50  0000 L CNN
F 1 "10n" H 5065 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 4988 3200 50  0001 C CNN
F 3 "~" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 604CA17A
P 4100 3750
F 0 "#PWR0111" H 4100 3500 50  0001 C CNN
F 1 "GND" H 4105 3577 50  0000 C CNN
F 2 "" H 4100 3750 50  0001 C CNN
F 3 "" H 4100 3750 50  0001 C CNN
	1    4100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3200 3200 3100
Wire Wire Line
	3200 3100 3550 3100
Wire Wire Line
	3550 3200 3550 3100
Connection ~ 3550 3100
Wire Wire Line
	3550 3100 3800 3100
Wire Wire Line
	4600 3200 4600 3100
Wire Wire Line
	4600 3100 4400 3100
Wire Wire Line
	4950 3200 4950 3100
Wire Wire Line
	4950 3100 4600 3100
Connection ~ 4600 3100
Wire Wire Line
	4950 3500 4950 3650
Wire Wire Line
	4950 3650 4600 3650
Wire Wire Line
	4600 3650 4600 3500
Wire Wire Line
	4600 3650 4100 3650
Wire Wire Line
	4100 3650 4100 3750
Connection ~ 4600 3650
Wire Wire Line
	4100 3650 4100 3400
Connection ~ 4100 3650
Wire Wire Line
	4100 3650 3550 3650
Wire Wire Line
	3550 3650 3550 3500
Wire Wire Line
	3550 3650 3200 3650
Wire Wire Line
	3200 3650 3200 3500
Connection ~ 3550 3650
Text GLabel 3000 3100 0    50   Input ~ 0
+15V
Text GLabel 5100 3100 2    50   Input ~ 0
5V
Wire Wire Line
	3000 3100 3200 3100
Connection ~ 3200 3100
Wire Wire Line
	4950 3100 5100 3100
Connection ~ 4950 3100
Text GLabel 6750 1800 0    50   Input ~ 0
5V
Text GLabel 6750 1700 0    50   Input ~ 0
3.3V
$Comp
L Device:CP C6
U 1 1 604D3D70
P 4600 4700
F 0 "C6" H 4718 4746 50  0000 L CNN
F 1 "10u" H 4718 4655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4638 4550 50  0001 C CNN
F 3 "~" H 4600 4700 50  0001 C CNN
	1    4600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 604D3D82
P 4950 4700
F 0 "C8" H 5065 4746 50  0000 L CNN
F 1 "10n" H 5065 4655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 4988 4550 50  0001 C CNN
F 3 "~" H 4950 4700 50  0001 C CNN
	1    4950 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 604D3D88
P 4100 5100
F 0 "#PWR0112" H 4100 4850 50  0001 C CNN
F 1 "GND" H 4105 4927 50  0000 C CNN
F 2 "" H 4100 5100 50  0001 C CNN
F 3 "" H 4100 5100 50  0001 C CNN
	1    4100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4450 3800 4450
Wire Wire Line
	4600 4550 4600 4450
Wire Wire Line
	4600 4450 4400 4450
Wire Wire Line
	4950 4550 4950 4450
Wire Wire Line
	4950 4450 4600 4450
Connection ~ 4600 4450
Wire Wire Line
	4950 4850 4950 5000
Wire Wire Line
	4950 5000 4600 5000
Wire Wire Line
	4600 5000 4600 4850
Wire Wire Line
	4600 5000 4100 5000
Wire Wire Line
	4100 5000 4100 5100
Connection ~ 4600 5000
Wire Wire Line
	4100 5000 4100 4750
Connection ~ 4100 5000
Text GLabel 3550 4450 0    50   Input ~ 0
+15V
Text GLabel 5100 4450 2    50   Input ~ 0
3.3V
Wire Wire Line
	4950 4450 5100 4450
Connection ~ 4950 4450
$Comp
L Regulator_Linear:L78L33_TO92 U2
U 1 1 604D53AA
P 4100 4450
F 0 "U2" H 4100 4692 50  0000 C CNN
F 1 "L78L33_TO92" H 4100 4601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4100 4675 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 4100 4400 50  0001 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x18 J9
U 1 1 604D7334
P 7050 2500
F 0 "J9" H 7130 2492 50  0000 L CNN
F 1 "ToBoard" H 7130 2401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x18_P2.54mm_Horizontal" H 7050 2500 50  0001 C CNN
F 3 "~" H 7050 2500 50  0001 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 604D95B0
P 6750 1900
F 0 "#PWR0113" H 6750 1650 50  0001 C CNN
F 1 "GND" V 6755 1772 50  0000 R CNN
F 2 "" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0001 C CNN
	1    6750 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1900 6850 1900
Wire Wire Line
	6750 1800 6850 1800
Wire Wire Line
	6750 1700 6850 1700
Text GLabel 6750 3400 0    50   Input ~ 0
SEL3
Wire Wire Line
	6750 3400 6850 3400
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 604E00B2
P 3050 1800
F 0 "J7" H 2968 1475 50  0000 C CNN
F 1 "Conn_01x02" H 2968 1566 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 3050 1800 50  0001 C CNN
F 3 "~" H 3050 1800 50  0001 C CNN
	1    3050 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 604E1C26
P 3050 2300
F 0 "J8" H 2968 1975 50  0000 C CNN
F 1 "Conn_01x02" H 2968 2066 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 3050 2300 50  0001 C CNN
F 3 "~" H 3050 2300 50  0001 C CNN
	1    3050 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 604E1EDE
P 3350 2300
F 0 "#PWR0114" H 3350 2050 50  0001 C CNN
F 1 "GND" V 3355 2172 50  0000 R CNN
F 2 "" H 3350 2300 50  0001 C CNN
F 3 "" H 3350 2300 50  0001 C CNN
	1    3350 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 604E264C
P 3350 1800
F 0 "#PWR0115" H 3350 1550 50  0001 C CNN
F 1 "GND" V 3355 1672 50  0000 R CNN
F 2 "" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	0    -1   -1   0   
$EndComp
Text GLabel 6750 2000 0    50   Input ~ 0
+15V
Text GLabel 3350 1700 2    50   Input ~ 0
+15V
Text GLabel 3350 2200 2    50   Input ~ 0
-15V
Wire Wire Line
	3250 1700 3350 1700
Wire Wire Line
	3250 1800 3350 1800
Wire Wire Line
	3250 2200 3350 2200
Wire Wire Line
	3250 2300 3350 2300
$Comp
L Device:C C2
U 1 1 60513C60
P 4100 2200
F 0 "C2" H 4215 2246 50  0000 L CNN
F 1 "10n" H 4215 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 4138 2050 50  0001 C CNN
F 3 "~" H 4100 2200 50  0001 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 6051431D
P 4500 2200
F 0 "C4" H 4618 2246 50  0000 L CNN
F 1 "10u" H 4618 2155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4538 2050 50  0001 C CNN
F 3 "~" H 4500 2200 50  0001 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
Text GLabel 4000 2400 0    50   Input ~ 0
-15V
$Comp
L power:GND #PWR01
U 1 1 60514A9B
P 4000 2000
F 0 "#PWR01" H 4000 1750 50  0001 C CNN
F 1 "GND" V 4005 1872 50  0000 R CNN
F 2 "" H 4000 2000 50  0001 C CNN
F 3 "" H 4000 2000 50  0001 C CNN
	1    4000 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2400 4100 2400
Wire Wire Line
	4100 2400 4100 2350
Wire Wire Line
	4100 2400 4500 2400
Wire Wire Line
	4500 2400 4500 2350
Connection ~ 4100 2400
Wire Wire Line
	4000 2000 4100 2000
Wire Wire Line
	4100 2000 4100 2050
Wire Wire Line
	4100 2000 4500 2000
Wire Wire Line
	4500 2000 4500 2050
Connection ~ 4100 2000
$EndSCHEMATC