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
Wire Wire Line
	2000 1300 2100 1300
Wire Wire Line
	2000 1400 2100 1400
Wire Wire Line
	2000 1500 2100 1500
Wire Wire Line
	2000 1600 2100 1600
Wire Wire Line
	2000 1700 2100 1700
Wire Wire Line
	2000 1800 2100 1800
Wire Wire Line
	2000 1900 2100 1900
Wire Wire Line
	2000 2000 2100 2000
Text GLabel 1600 2900 2    50   Input ~ 0
V_MOT
$Comp
L power:GND #PWR0102
U 1 1 5E5E55B7
P 1600 2800
F 0 "#PWR0102" H 1600 2550 50  0001 C CNN
F 1 "GND" H 1605 2627 50  0000 C CNN
F 2 "" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
	1    1600 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 2800 1600 2800
Wire Wire Line
	1500 2900 1600 2900
Wire Wire Line
	2000 2100 2100 2100
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FB7D87F
P 1300 2900
F 0 "J1" H 1218 2575 50  0000 C CNN
F 1 "Alim_MOT" H 1218 2666 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 1300 2900 50  0001 C CNN
F 3 "~" H 1300 2900 50  0001 C CNN
	1    1300 2900
	-1   0    0    1   
$EndComp
Text GLabel 3800 1050 0    50   Input ~ 0
5V
Text GLabel 4000 1050 2    50   Input ~ 0
V_MOT
$Comp
L power:GND #PWR05
U 1 1 5FB96096
P 3850 2600
F 0 "#PWR05" H 3850 2350 50  0001 C CNN
F 1 "GND" H 3855 2427 50  0000 C CNN
F 2 "" H 3850 2600 50  0001 C CNN
F 3 "" H 3850 2600 50  0001 C CNN
	1    3850 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5FB9609C
P 6850 1850
F 0 "J3" H 6930 1842 50  0000 L CNN
F 1 "TO_M1" H 6930 1751 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-4-5.08_1x04_P5.08mm_Horizontal" H 6850 1850 50  0001 C CNN
F 3 "~" H 6850 1850 50  0001 C CNN
	1    6850 1850
	1    0    0    1   
$EndComp
$Comp
L Driver_Motor:L298HN U1
U 1 1 5FB960A2
P 3850 1800
F 0 "U1" H 3850 1900 50  0000 C CNN
F 1 "L298HN" H 3850 1800 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_P2.54x2.54mm_StaggerOdd_Lead4.58mm_Vertical" H 3900 1150 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 4000 2050 50  0001 C CNN
	1    3850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1050 3850 1050
Wire Wire Line
	3850 1050 3850 1100
Wire Wire Line
	4000 1050 3950 1050
Wire Wire Line
	3950 1050 3950 1100
Wire Wire Line
	3850 2600 3850 2550
$Comp
L Device:D D1
U 1 1 5FB960B4
P 4750 1350
F 0 "D1" V 4704 1429 50  0000 L CNN
F 1 "D" V 4795 1429 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4750 1350 50  0001 C CNN
F 3 "~" H 4750 1350 50  0001 C CNN
	1    4750 1350
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5FB960BA
P 4750 2250
F 0 "D2" V 4704 2329 50  0000 L CNN
F 1 "D" V 4795 2329 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4750 2250 50  0001 C CNN
F 3 "~" H 4750 2250 50  0001 C CNN
	1    4750 2250
	0    1    1    0   
$EndComp
$Comp
L Device:D D3
U 1 1 5FB960C0
P 5000 1350
F 0 "D3" V 4954 1429 50  0000 L CNN
F 1 "D" V 5045 1429 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5000 1350 50  0001 C CNN
F 3 "~" H 5000 1350 50  0001 C CNN
	1    5000 1350
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5FB960C6
P 5000 2250
F 0 "D4" V 4954 2329 50  0000 L CNN
F 1 "D" V 5045 2329 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5000 2250 50  0001 C CNN
F 3 "~" H 5000 2250 50  0001 C CNN
	1    5000 2250
	0    1    1    0   
$EndComp
$Comp
L Device:D D5
U 1 1 5FB960CC
P 5250 1350
F 0 "D5" V 5204 1429 50  0000 L CNN
F 1 "D" V 5295 1429 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5250 1350 50  0001 C CNN
F 3 "~" H 5250 1350 50  0001 C CNN
	1    5250 1350
	0    1    1    0   
$EndComp
$Comp
L Device:D D6
U 1 1 5FB960D2
P 5250 2250
F 0 "D6" V 5204 2329 50  0000 L CNN
F 1 "D" V 5295 2329 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5250 2250 50  0001 C CNN
F 3 "~" H 5250 2250 50  0001 C CNN
	1    5250 2250
	0    1    1    0   
$EndComp
$Comp
L Device:D D7
U 1 1 5FB960D8
P 5500 1350
F 0 "D7" V 5454 1429 50  0000 L CNN
F 1 "D" V 5545 1429 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5500 1350 50  0001 C CNN
F 3 "~" H 5500 1350 50  0001 C CNN
	1    5500 1350
	0    1    1    0   
$EndComp
$Comp
L Device:D D8
U 1 1 5FB960DE
P 5500 2250
F 0 "D8" V 5454 2329 50  0000 L CNN
F 1 "D" V 5545 2329 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5500 2250 50  0001 C CNN
F 3 "~" H 5500 2250 50  0001 C CNN
	1    5500 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 1600 4750 1600
Wire Wire Line
	4750 1600 4750 1500
Wire Wire Line
	4750 1600 4750 2100
Connection ~ 4750 1600
Wire Wire Line
	4450 1700 5000 1700
Wire Wire Line
	5000 1700 5000 1500
Wire Wire Line
	5000 1700 5000 2100
Connection ~ 5000 1700
Wire Wire Line
	4450 1900 5250 1900
Wire Wire Line
	5250 1900 5250 1500
Wire Wire Line
	5250 1900 5250 2100
Connection ~ 5250 1900
Wire Wire Line
	4450 2000 5500 2000
Wire Wire Line
	5500 2000 5500 1500
Wire Wire Line
	5500 2000 5500 2100
Connection ~ 5500 2000
Wire Wire Line
	3850 2550 4750 2550
Wire Wire Line
	4750 2550 4750 2400
Connection ~ 3850 2550
Wire Wire Line
	3850 2550 3850 2500
Wire Wire Line
	4750 2550 5000 2550
Wire Wire Line
	5000 2550 5000 2400
Connection ~ 4750 2550
Wire Wire Line
	5000 2550 5250 2550
Wire Wire Line
	5250 2550 5250 2400
Connection ~ 5000 2550
Wire Wire Line
	5250 2550 5500 2550
Wire Wire Line
	5500 2550 5500 2400
Connection ~ 5250 2550
Text GLabel 4650 1050 0    50   Input ~ 0
V_MOT
Wire Wire Line
	4650 1050 4750 1050
Wire Wire Line
	4750 1050 4750 1200
Wire Wire Line
	4750 1050 5000 1050
Wire Wire Line
	5000 1050 5000 1200
Connection ~ 4750 1050
Wire Wire Line
	5000 1050 5250 1050
Wire Wire Line
	5250 1050 5250 1200
Connection ~ 5000 1050
Wire Wire Line
	5250 1050 5500 1050
Wire Wire Line
	5500 1050 5500 1200
Connection ~ 5250 1050
Wire Wire Line
	5250 1900 5800 1900
Wire Wire Line
	5800 1700 5800 1650
Wire Wire Line
	5000 1700 5800 1700
Wire Wire Line
	5750 1600 5750 1750
Wire Wire Line
	4750 1600 5750 1600
Text Label 5900 1650 0    50   ~ 0
BobA1
Text Label 5900 1750 0    50   ~ 0
BobA2
$Comp
L Device:R R2
U 1 1 5FB96127
P 3650 2750
F 0 "R2" V 3443 2750 50  0000 C CNN
F 1 "0.5" V 3534 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W6.4mm_P27.94mm" V 3580 2750 50  0001 C CNN
F 3 "~" H 3650 2750 50  0001 C CNN
	1    3650 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FB9612D
P 3550 2750
F 0 "R1" V 3343 2750 50  0000 C CNN
F 1 "0.5" V 3434 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W6.4mm_P27.94mm" V 3480 2750 50  0001 C CNN
F 3 "~" H 3550 2750 50  0001 C CNN
	1    3550 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FB96133
P 3550 3050
F 0 "#PWR03" H 3550 2800 50  0001 C CNN
F 1 "GND" H 3555 2877 50  0000 C CNN
F 2 "" H 3550 3050 50  0001 C CNN
F 3 "" H 3550 3050 50  0001 C CNN
	1    3550 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FB96139
P 3650 3050
F 0 "#PWR04" H 3650 2800 50  0001 C CNN
F 1 "GND" H 3655 2877 50  0000 C CNN
F 2 "" H 3650 3050 50  0001 C CNN
F 3 "" H 3650 3050 50  0001 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2600 3550 2550
Wire Wire Line
	3650 2600 3650 2550
Wire Wire Line
	3550 2900 3550 3050
Wire Wire Line
	3650 2900 3650 3050
Wire Wire Line
	5750 1750 6650 1750
Wire Wire Line
	5800 1650 6650 1650
Text GLabel 3000 1500 0    50   Input ~ 0
EnA
Text GLabel 3000 1400 0    50   Input ~ 0
IN2
Text GLabel 3000 1300 0    50   Input ~ 0
IN1
Text GLabel 3000 1900 0    50   Input ~ 0
EnB
Text GLabel 3000 1800 0    50   Input ~ 0
IN4
Text GLabel 3000 1700 0    50   Input ~ 0
IN3
Wire Wire Line
	3000 1300 3250 1300
Wire Wire Line
	3000 1400 3250 1400
Wire Wire Line
	3000 1500 3250 1500
Wire Wire Line
	3000 1700 3250 1700
Wire Wire Line
	3000 1800 3250 1800
Wire Wire Line
	3000 1900 3250 1900
Text GLabel 2100 1400 2    50   Input ~ 0
IN1
Text GLabel 2100 1600 2    50   Input ~ 0
IN2
Text GLabel 2100 1500 2    50   Input ~ 0
EnA
Text GLabel 3400 2550 0    50   Input ~ 0
SenseA
Wire Wire Line
	3400 2550 3550 2550
Connection ~ 3550 2550
Wire Wire Line
	3550 2550 3550 2500
Text GLabel 3850 2900 2    50   Input ~ 0
SenseB
Wire Wire Line
	3650 2550 3750 2550
Wire Wire Line
	3750 2550 3750 2900
Wire Wire Line
	3750 2900 3850 2900
Connection ~ 3650 2550
Wire Wire Line
	3650 2550 3650 2500
Text GLabel 2100 1300 2    50   Input ~ 0
SenseA
Text GLabel 2100 2200 2    50   Input ~ 0
SenseB
$Comp
L power:GND #PWR02
U 1 1 5FB8B83A
P 2100 1700
F 0 "#PWR02" H 2100 1450 50  0001 C CNN
F 1 "GND" V 2105 1572 50  0000 R CNN
F 2 "" H 2100 1700 50  0001 C CNN
F 3 "" H 2100 1700 50  0001 C CNN
	1    2100 1700
	0    -1   -1   0   
$EndComp
Text GLabel 2100 1800 2    50   Input ~ 0
5V
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5FB8BD7E
P 1700 1700
F 0 "J2" H 1750 2317 50  0000 C CNN
F 1 "Commande_P" H 1750 2226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 1700 1700 50  0001 C CNN
F 3 "~" H 1700 1700 50  0001 C CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
Text GLabel 2100 1900 2    50   Input ~ 0
IN3
Text GLabel 2100 2100 2    50   Input ~ 0
IN4
Text GLabel 2100 2000 2    50   Input ~ 0
EnB
Wire Wire Line
	2000 2200 2100 2200
Text GLabel 1400 1400 0    50   Input ~ 0
IN1
Text GLabel 1400 1600 0    50   Input ~ 0
IN2
Text GLabel 1400 1500 0    50   Input ~ 0
EnA
Text GLabel 1400 1300 0    50   Input ~ 0
SenseA
Text GLabel 1400 2200 0    50   Input ~ 0
SenseB
$Comp
L power:GND #PWR01
U 1 1 5FB93548
P 1400 1700
F 0 "#PWR01" H 1400 1450 50  0001 C CNN
F 1 "GND" V 1405 1572 50  0000 R CNN
F 2 "" H 1400 1700 50  0001 C CNN
F 3 "" H 1400 1700 50  0001 C CNN
	1    1400 1700
	0    1    -1   0   
$EndComp
Text GLabel 1400 1800 0    50   Input ~ 0
5V
Text GLabel 1400 1900 0    50   Input ~ 0
IN3
Text GLabel 1400 2100 0    50   Input ~ 0
IN4
Text GLabel 1400 2000 0    50   Input ~ 0
EnB
Wire Wire Line
	1400 1300 1500 1300
Wire Wire Line
	1400 1400 1500 1400
Wire Wire Line
	1400 1500 1500 1500
Wire Wire Line
	1400 1600 1500 1600
Wire Wire Line
	1400 1700 1500 1700
Wire Wire Line
	1400 1800 1500 1800
Wire Wire Line
	1400 1900 1500 1900
Wire Wire Line
	1400 2000 1500 2000
Wire Wire Line
	1400 2100 1500 2100
Wire Wire Line
	1400 2200 1500 2200
Text Label 5900 1850 0    50   ~ 0
BobB1
Text Label 5900 1950 0    50   ~ 0
BobB2
Wire Wire Line
	5800 1900 5800 1850
Wire Wire Line
	5800 1850 6650 1850
Wire Wire Line
	5850 2000 5850 1950
Wire Wire Line
	5850 1950 6650 1950
Wire Wire Line
	5500 2000 5850 2000
$Comp
L Driver_Motor:L297 U2
U 1 1 5FB6C580
P 3950 4600
F 0 "U2" H 3950 3711 50  0000 C CNN
F 1 "L297" H 3950 3620 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 3700 5250 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/cd00000063.pdf" H 3700 5250 50  0001 C CNN
	1    3950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4200 7000 4200
Wire Wire Line
	6900 4300 7000 4300
Wire Wire Line
	6900 4400 7000 4400
Wire Wire Line
	6900 4500 7000 4500
Wire Wire Line
	6900 4600 7000 4600
Wire Wire Line
	6900 4700 7000 4700
Wire Wire Line
	6900 4800 7000 4800
Wire Wire Line
	6900 4900 7000 4900
Wire Wire Line
	6900 5000 7000 5000
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J5
U 1 1 5FB715A3
P 6600 4600
F 0 "J5" H 6650 5217 50  0000 C CNN
F 1 "Commande_CP" H 6650 5126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 6600 4600 50  0001 C CNN
F 3 "~" H 6600 4600 50  0001 C CNN
	1    6600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5100 7000 5100
Text GLabel 6300 4300 0    50   Input ~ 0
IN1_C
Text GLabel 6300 4500 0    50   Input ~ 0
IN2_C
Text GLabel 6300 4400 0    50   Input ~ 0
EnA_C
Text GLabel 6300 4200 0    50   Input ~ 0
SenseA_C
Text GLabel 6300 5100 0    50   Input ~ 0
SenseB_C
Text GLabel 6300 4700 0    50   Input ~ 0
5V_C
Text GLabel 6300 4800 0    50   Input ~ 0
IN3_C
Text GLabel 6300 5000 0    50   Input ~ 0
IN4_C
Text GLabel 6300 4900 0    50   Input ~ 0
EnB_C
Wire Wire Line
	6300 4200 6400 4200
Wire Wire Line
	6300 4300 6400 4300
Wire Wire Line
	6300 4400 6400 4400
Wire Wire Line
	6300 4500 6400 4500
Wire Wire Line
	6300 4600 6400 4600
Wire Wire Line
	6300 4700 6400 4700
Wire Wire Line
	6300 4800 6400 4800
Wire Wire Line
	6300 4900 6400 4900
Wire Wire Line
	6300 5000 6400 5000
Wire Wire Line
	6300 5100 6400 5100
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J4
U 1 1 5FB7714A
P 1450 4550
F 0 "J4" H 1500 5167 50  0000 C CNN
F 1 "Commande_C" H 1500 5076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 1450 4550 50  0001 C CNN
F 3 "~" H 1450 4550 50  0001 C CNN
	1    1450 4550
	1    0    0    -1  
$EndComp
Text GLabel 6300 4600 0    50   Input ~ 0
GND_C
Text GLabel 7000 4200 2    50   Input ~ 0
SenseA_C
Text GLabel 7000 4300 2    50   Input ~ 0
IN1_C
Text GLabel 7000 4400 2    50   Input ~ 0
EnA_C
Text GLabel 7000 4500 2    50   Input ~ 0
IN2_C
Text GLabel 7000 4600 2    50   Input ~ 0
GND_C
Text GLabel 7000 4700 2    50   Input ~ 0
5V_C
Text GLabel 7000 4800 2    50   Input ~ 0
IN3_C
Text GLabel 7000 4900 2    50   Input ~ 0
EnB_C
Text GLabel 7000 5000 2    50   Input ~ 0
IN4_C
Text GLabel 7000 5100 2    50   Input ~ 0
SenseB_C
Text GLabel 4750 4300 2    50   Input ~ 0
IN1_C
Text GLabel 4750 4400 2    50   Input ~ 0
IN2_C
Text GLabel 4750 4800 2    50   Input ~ 0
EnA_C
Text GLabel 4750 4900 2    50   Input ~ 0
EnB_C
Text GLabel 4750 4500 2    50   Input ~ 0
IN3_C
Text GLabel 4750 4600 2    50   Input ~ 0
IN4_C
Text GLabel 1850 4250 2    50   Input ~ 0
HALF
Text GLabel 3150 4100 0    50   Input ~ 0
HALF
Text GLabel 1850 4350 2    50   Input ~ 0
CLOCK
Text GLabel 1850 4450 2    50   Input ~ 0
CW
Text GLabel 3150 4300 0    50   Input ~ 0
CW
Text GLabel 3150 4200 0    50   Input ~ 0
CLOCK
$Comp
L Device:R R3
U 1 1 5FB87973
P 2900 5000
F 0 "R3" V 3107 5000 50  0000 C CNN
F 1 "22k" V 3016 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 2830 5000 50  0001 C CNN
F 3 "~" H 2900 5000 50  0001 C CNN
	1    2900 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FB88421
P 3100 5450
F 0 "C1" H 3215 5496 50  0000 L CNN
F 1 "3.3nF" H 3215 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W4.5mm_P5.00mm" H 3138 5300 50  0001 C CNN
F 3 "~" H 3100 5450 50  0001 C CNN
	1    3100 5450
	1    0    0    -1  
$EndComp
Text GLabel 3050 4800 0    50   Input ~ 0
GND_C
Wire Wire Line
	3050 4800 3150 4800
Wire Wire Line
	3250 4900 3150 4900
Wire Wire Line
	3150 4900 3150 4800
Connection ~ 3150 4800
Wire Wire Line
	3150 4800 3250 4800
Wire Wire Line
	3050 5000 3100 5000
Wire Wire Line
	3100 5300 3100 5000
Connection ~ 3100 5000
Wire Wire Line
	3100 5000 3250 5000
Text GLabel 4050 3700 0    50   Input ~ 0
5V_C
Text GLabel 1850 4650 2    50   Input ~ 0
GND_C
Text GLabel 1850 4750 2    50   Input ~ 0
5V_C
Text GLabel 1850 4550 2    50   Input ~ 0
VREF_C
Text GLabel 4300 3700 2    50   Input ~ 0
VREF_C
Text GLabel 1850 4850 2    50   Input ~ 0
CONTROL
Text GLabel 1850 4150 2    50   Input ~ 0
RESET
Text GLabel 1850 4950 2    50   Input ~ 0
ENABLE
Text GLabel 3150 4600 0    50   Input ~ 0
CONTROL
Text GLabel 3150 4500 0    50   Input ~ 0
RESET
Text GLabel 3150 4400 0    50   Input ~ 0
ENABLE
Text GLabel 1150 4150 0    50   Input ~ 0
RESET
Text GLabel 1150 4250 0    50   Input ~ 0
HALF
Text GLabel 1150 4350 0    50   Input ~ 0
CLOCK
Text GLabel 1150 4450 0    50   Input ~ 0
CW
Text GLabel 1150 4550 0    50   Input ~ 0
VREF_C
Text GLabel 1150 4650 0    50   Input ~ 0
GND_C
Text GLabel 1150 4750 0    50   Input ~ 0
5V_C
Text GLabel 1150 4850 0    50   Input ~ 0
CONTROL
Text GLabel 1150 4950 0    50   Input ~ 0
ENABLE
Text GLabel 1850 5050 2    50   Input ~ 0
SenseB_C
Text GLabel 1150 5050 0    50   Input ~ 0
SenseA_C
Text GLabel 2650 5000 0    50   Input ~ 0
5V_C
Text GLabel 3850 5450 0    50   Input ~ 0
GND_C
Text GLabel 3000 5700 0    50   Input ~ 0
GND_C
Wire Wire Line
	4050 3700 4150 3700
Wire Wire Line
	4150 3700 4150 3800
Wire Wire Line
	4250 3800 4250 3700
Wire Wire Line
	4250 3700 4300 3700
Wire Wire Line
	4650 4300 4750 4300
Wire Wire Line
	4650 4400 4750 4400
Wire Wire Line
	4650 4500 4750 4500
Wire Wire Line
	4650 4600 4750 4600
Wire Wire Line
	4650 4800 4750 4800
Wire Wire Line
	4650 4900 4750 4900
Wire Wire Line
	2750 5000 2650 5000
Wire Wire Line
	3000 5700 3100 5700
Wire Wire Line
	3100 5700 3100 5600
Wire Wire Line
	3850 5450 3950 5450
Wire Wire Line
	3950 5450 3950 5400
Wire Wire Line
	3250 4100 3150 4100
Wire Wire Line
	3250 4200 3150 4200
Wire Wire Line
	3250 4300 3150 4300
Wire Wire Line
	3150 4400 3250 4400
Wire Wire Line
	3150 4500 3250 4500
Wire Wire Line
	3150 4600 3250 4600
Wire Wire Line
	1750 4150 1850 4150
Wire Wire Line
	1750 4250 1850 4250
Wire Wire Line
	1750 4350 1850 4350
Wire Wire Line
	1750 4450 1850 4450
Wire Wire Line
	1750 4550 1850 4550
Wire Wire Line
	1750 4650 1850 4650
Wire Wire Line
	1750 4750 1850 4750
Wire Wire Line
	1750 4850 1850 4850
Wire Wire Line
	1750 4950 1850 4950
Wire Wire Line
	1750 5050 1850 5050
Wire Wire Line
	1150 4150 1250 4150
Wire Wire Line
	1150 4250 1250 4250
Wire Wire Line
	1150 4350 1250 4350
Wire Wire Line
	1150 4450 1250 4450
Wire Wire Line
	1150 4550 1250 4550
Wire Wire Line
	1150 4650 1250 4650
Wire Wire Line
	1150 4750 1250 4750
Wire Wire Line
	1150 4850 1250 4850
Wire Wire Line
	1150 4950 1250 4950
Wire Wire Line
	1150 5050 1250 5050
Wire Notes Line
	850  850  7250 850 
Wire Notes Line
	7250 850  7250 3300
Wire Notes Line
	7250 3300 850  3300
Wire Notes Line
	850  3300 850  850 
Text Notes 6750 3250 0    50   ~ 0
Carte L298
Wire Notes Line
	700  3550 7550 3550
Wire Notes Line
	7550 3550 7550 5850
Wire Notes Line
	7550 5850 700  5850
Wire Notes Line
	700  5850 700  3550
Text Notes 7050 5800 0    50   ~ 0
Carte L297
$EndSCHEMATC
