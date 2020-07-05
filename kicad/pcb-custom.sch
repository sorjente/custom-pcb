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
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5EF91140
P 3150 1500
F 0 "U1" H 3150 1742 50  0000 C CNN
F 1 "AMS1117-3.3" H 3150 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3150 1700 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3250 1250 50  0001 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L4:STM32L452CEUx U2
U 1 1 5EF921BF
P 7100 4000
F 0 "U2" H 7800 5450 50  0000 C CNN
F 1 "STM32L452CEU6" H 7800 5350 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 6600 2600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00340549.pdf" H 7100 4000 50  0001 C CNN
	1    7100 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5EF94213
P 900 1300
F 0 "#PWR01" H 900 1150 50  0001 C CNN
F 1 "VCC" H 915 1473 50  0000 C CNN
F 2 "" H 900 1300 50  0001 C CNN
F 3 "" H 900 1300 50  0001 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F1
U 1 1 5EF959F7
P 1700 1500
F 0 "F1" H 1700 1685 50  0000 C CNN
F 1 "Fuse_Small" H 1700 1594 50  0000 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" H 1700 1500 50  0001 C CNN
F 3 "~" H 1700 1500 50  0001 C CNN
	1    1700 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D1
U 1 1 5EF9807D
P 1150 1500
F 0 "D1" H 1150 1707 50  0000 C CNN
F 1 "B5819W" H 1150 1616 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 1150 1500 50  0001 C CNN
F 3 "~" V 1150 1500 50  0001 C CNN
	1    1150 1500
	-1   0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5EF99024
P 2450 1500
F 0 "FB2" V 2213 1500 50  0000 C CNN
F 1 "100 @ 100 MHz" V 2304 1500 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 2380 1500 50  0001 C CNN
F 3 "~" H 2450 1500 50  0001 C CNN
	1    2450 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	900  1300 900  1500
Wire Wire Line
	900  1500 1050 1500
Wire Wire Line
	1250 1500 1600 1500
Wire Wire Line
	1800 1500 2350 1500
Wire Wire Line
	2550 1500 2700 1500
$Comp
L power:GND #PWR09
U 1 1 5EF9C57F
P 3150 1900
F 0 "#PWR09" H 3150 1650 50  0001 C CNN
F 1 "GND" H 3155 1727 50  0000 C CNN
F 2 "" H 3150 1900 50  0001 C CNN
F 3 "" H 3150 1900 50  0001 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1900 3150 1800
$Comp
L Device:C_Small C11
U 1 1 5EF9CFCF
P 2700 1700
F 0 "C11" H 2792 1746 50  0000 L CNN
F 1 "10 uF" H 2792 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 1700 50  0001 C CNN
F 3 "~" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5EF9D615
P 3650 1700
F 0 "C12" H 3742 1746 50  0000 L CNN
F 1 "10 uF" H 3742 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3650 1700 50  0001 C CNN
F 3 "~" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1600 2700 1500
Connection ~ 2700 1500
Wire Wire Line
	2700 1500 2850 1500
Wire Wire Line
	3450 1500 3650 1500
Wire Wire Line
	3650 1500 3650 1600
Wire Wire Line
	2700 1800 2700 1900
Wire Wire Line
	2700 1900 3150 1900
Connection ~ 3150 1900
Wire Wire Line
	3650 1800 3650 1900
Wire Wire Line
	3650 1900 3150 1900
$Comp
L power:+3V3 #PWR05
U 1 1 5EF9EA78
P 3650 1500
F 0 "#PWR05" H 3650 1350 50  0001 C CNN
F 1 "+3V3" H 3665 1673 50  0000 C CNN
F 2 "" H 3650 1500 50  0001 C CNN
F 3 "" H 3650 1500 50  0001 C CNN
	1    3650 1500
	1    0    0    -1  
$EndComp
Connection ~ 3650 1500
Wire Notes Line
	4500 2200 4500 1000
Wire Notes Line
	750  1000 750  2200
Text Notes 750  950  0    50   ~ 0
Input Voltage Regulator
Wire Wire Line
	6900 2450 6900 2550
$Comp
L power:+3V3 #PWR010
U 1 1 5EFA06A0
P 6900 2450
F 0 "#PWR010" H 6900 2300 50  0001 C CNN
F 1 "+3V3" H 6915 2623 50  0000 C CNN
F 2 "" H 6900 2450 50  0001 C CNN
F 3 "" H 6900 2450 50  0001 C CNN
	1    6900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2600 7000 2550
Wire Wire Line
	7000 2550 6900 2550
Connection ~ 6900 2550
Wire Wire Line
	6900 2550 6900 2600
Wire Wire Line
	7100 2600 7100 2550
Wire Wire Line
	7100 2550 7000 2550
Connection ~ 7000 2550
Wire Wire Line
	7300 2600 7300 2550
Wire Wire Line
	7300 2550 7100 2550
Connection ~ 7100 2550
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5EFA34D7
P 9850 1450
F 0 "FB1" V 9613 1450 50  0000 C CNN
F 1 "100 @ 100 MHz" V 9704 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 9780 1450 50  0001 C CNN
F 3 "~" H 9850 1450 50  0001 C CNN
	1    9850 1450
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 5EFA3DC8
P 9450 1350
F 0 "#PWR04" H 9450 1200 50  0001 C CNN
F 1 "+3V3" H 9465 1523 50  0000 C CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "" H 9450 1350 50  0001 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5EFA42DE
P 10200 1600
F 0 "C9" H 10292 1646 50  0000 L CNN
F 1 "100 nF" H 10292 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10200 1600 50  0001 C CNN
F 3 "~" H 10200 1600 50  0001 C CNN
	1    10200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5EFA4A81
P 10700 1600
F 0 "C10" H 10792 1646 50  0000 L CNN
F 1 "10 nF" H 10792 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10700 1600 50  0001 C CNN
F 3 "~" H 10700 1600 50  0001 C CNN
	1    10700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1350 9450 1450
Wire Wire Line
	9450 1450 9750 1450
Wire Wire Line
	9950 1450 10200 1450
Wire Wire Line
	10200 1450 10200 1500
Wire Wire Line
	10200 1450 10700 1450
Wire Wire Line
	10700 1450 10700 1500
Connection ~ 10200 1450
$Comp
L power:GND #PWR06
U 1 1 5EFA66EA
P 10200 1700
F 0 "#PWR06" H 10200 1450 50  0001 C CNN
F 1 "GND" H 10205 1527 50  0000 C CNN
F 2 "" H 10200 1700 50  0001 C CNN
F 3 "" H 10200 1700 50  0001 C CNN
	1    10200 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EFA6CFA
P 10700 1700
F 0 "#PWR07" H 10700 1450 50  0001 C CNN
F 1 "GND" H 10705 1527 50  0000 C CNN
F 2 "" H 10700 1700 50  0001 C CNN
F 3 "" H 10700 1700 50  0001 C CNN
	1    10700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR02
U 1 1 5EFA72F4
P 10700 1300
F 0 "#PWR02" H 10700 1150 50  0001 C CNN
F 1 "+3.3VA" H 10715 1473 50  0000 C CNN
F 2 "" H 10700 1300 50  0001 C CNN
F 3 "" H 10700 1300 50  0001 C CNN
	1    10700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1300 10700 1450
Connection ~ 10700 1450
$Comp
L power:+3.3VA #PWR011
U 1 1 5EFA7D9B
P 7200 2450
F 0 "#PWR011" H 7200 2300 50  0001 C CNN
F 1 "+3.3VA" H 7215 2623 50  0000 C CNN
F 2 "" H 7200 2450 50  0001 C CNN
F 3 "" H 7200 2450 50  0001 C CNN
	1    7200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2450 7200 2600
$Comp
L power:GND #PWR022
U 1 1 5EFA8C7C
P 6900 5600
F 0 "#PWR022" H 6900 5350 50  0001 C CNN
F 1 "GND" H 6905 5427 50  0000 C CNN
F 2 "" H 6900 5600 50  0001 C CNN
F 3 "" H 6900 5600 50  0001 C CNN
	1    6900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5600 6900 5550
Wire Wire Line
	7000 5500 7000 5550
Wire Wire Line
	7000 5550 6900 5550
Connection ~ 6900 5550
Wire Wire Line
	6900 5550 6900 5500
Wire Wire Line
	7100 5500 7100 5550
Wire Wire Line
	7100 5550 7000 5550
Connection ~ 7000 5550
Wire Wire Line
	7200 5500 7200 5550
Wire Wire Line
	7200 5550 7100 5550
Connection ~ 7100 5550
Wire Wire Line
	7300 5500 7300 5550
Wire Wire Line
	7300 5550 7200 5550
Connection ~ 7200 5550
$Comp
L Device:C_Small C2
U 1 1 5EFAC8B6
P 5300 1550
F 0 "C2" H 5392 1596 50  0000 L CNN
F 1 "100 nF" H 5392 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5300 1550 50  0001 C CNN
F 3 "~" H 5300 1550 50  0001 C CNN
	1    5300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EFAD2B3
P 5850 1550
F 0 "C3" H 5942 1596 50  0000 L CNN
F 1 "100 nF" H 5942 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5850 1550 50  0001 C CNN
F 3 "~" H 5850 1550 50  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5EFAD577
P 6400 1550
F 0 "C4" H 6492 1596 50  0000 L CNN
F 1 "100 nF" H 6492 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6400 1550 50  0001 C CNN
F 3 "~" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EFAEC88
P 6950 1550
F 0 "C5" H 7042 1596 50  0000 L CNN
F 1 "100 nF" H 7042 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6950 1550 50  0001 C CNN
F 3 "~" H 6950 1550 50  0001 C CNN
	1    6950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EFAEC8E
P 7500 1550
F 0 "C6" H 7592 1596 50  0000 L CNN
F 1 "100 nF" H 7592 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7500 1550 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EFAEC94
P 8050 1550
F 0 "C7" H 8142 1596 50  0000 L CNN
F 1 "100 nF" H 8142 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8050 1550 50  0001 C CNN
F 3 "~" H 8050 1550 50  0001 C CNN
	1    8050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5EFAF45F
P 8600 1550
F 0 "C8" H 8692 1596 50  0000 L CNN
F 1 "100 nF" H 8692 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8600 1550 50  0001 C CNN
F 3 "~" H 8600 1550 50  0001 C CNN
	1    8600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EFB7DE6
P 4800 1550
F 0 "C1" H 4892 1596 50  0000 L CNN
F 1 "10 uF" H 4892 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4800 1550 50  0001 C CNN
F 3 "~" H 4800 1550 50  0001 C CNN
	1    4800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1450 4800 1350
Wire Wire Line
	4800 1350 5300 1350
Wire Wire Line
	8600 1350 8600 1450
Wire Wire Line
	8600 1650 8600 1750
Wire Wire Line
	8600 1750 8050 1750
Wire Wire Line
	4800 1750 4800 1650
Wire Wire Line
	5300 1450 5300 1350
Connection ~ 5300 1350
Wire Wire Line
	5300 1350 5850 1350
Wire Wire Line
	5300 1650 5300 1750
Connection ~ 5300 1750
Wire Wire Line
	5300 1750 4800 1750
Wire Wire Line
	5850 1650 5850 1750
Connection ~ 5850 1750
Wire Wire Line
	5850 1750 5300 1750
Wire Wire Line
	6400 1650 6400 1750
Connection ~ 6400 1750
Wire Wire Line
	6400 1750 5850 1750
Wire Wire Line
	6950 1650 6950 1750
Connection ~ 6950 1750
Wire Wire Line
	6950 1750 6400 1750
Wire Wire Line
	7500 1650 7500 1750
Connection ~ 7500 1750
Wire Wire Line
	7500 1750 6950 1750
Wire Wire Line
	8050 1650 8050 1750
Connection ~ 8050 1750
Wire Wire Line
	8050 1750 7500 1750
Wire Wire Line
	8050 1450 8050 1350
Connection ~ 8050 1350
Wire Wire Line
	8050 1350 8600 1350
Wire Wire Line
	7500 1450 7500 1350
Connection ~ 7500 1350
Wire Wire Line
	7500 1350 8050 1350
Wire Wire Line
	6950 1450 6950 1350
Connection ~ 6950 1350
Wire Wire Line
	6950 1350 7500 1350
Wire Wire Line
	6400 1450 6400 1350
Connection ~ 6400 1350
Wire Wire Line
	6400 1350 6950 1350
Wire Wire Line
	5850 1450 5850 1350
Connection ~ 5850 1350
Wire Wire Line
	5850 1350 6400 1350
$Comp
L power:+3V3 #PWR03
U 1 1 5EFC9017
P 4800 1350
F 0 "#PWR03" H 4800 1200 50  0001 C CNN
F 1 "+3V3" H 4815 1523 50  0000 C CNN
F 2 "" H 4800 1350 50  0001 C CNN
F 3 "" H 4800 1350 50  0001 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
Connection ~ 4800 1350
$Comp
L power:GND #PWR08
U 1 1 5EFC94F2
P 4800 1750
F 0 "#PWR08" H 4800 1500 50  0001 C CNN
F 1 "GND" H 4805 1577 50  0000 C CNN
F 2 "" H 4800 1750 50  0001 C CNN
F 3 "" H 4800 1750 50  0001 C CNN
	1    4800 1750
	1    0    0    -1  
$EndComp
Connection ~ 4800 1750
Text GLabel 6500 2800 0    50   Input ~ 0
NRST
Text GLabel 6500 3200 0    50   Input ~ 0
BOOT0
Text GLabel 1250 7200 0    50   Input ~ 0
BOOT0
Wire Wire Line
	1250 7200 1450 7200
Wire Wire Line
	1450 7200 1450 7250
$Comp
L power:GND #PWR027
U 1 1 5EFCBA3C
P 1450 7250
F 0 "#PWR027" H 1450 7000 50  0001 C CNN
F 1 "GND" H 1455 7077 50  0000 C CNN
F 2 "" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
	1    1450 7250
	1    0    0    -1  
$EndComp
NoConn ~ 6500 3000
NoConn ~ 6500 3100
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 5EFD299E
P 1600 3450
F 0 "J2" H 2100 4000 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 2150 3900 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x07_P1.27mm_Vertical" H 1600 3450 50  0001 C CNN
F 3 "~" H 1600 3450 50  0001 C CNN
	1    1600 3450
	-1   0    0    -1  
$EndComp
NoConn ~ 1800 3150
NoConn ~ 1300 3150
$Comp
L power:GND #PWR015
U 1 1 5EFD9100
P 2300 3550
F 0 "#PWR015" H 2300 3300 50  0001 C CNN
F 1 "GND" H 2305 3377 50  0000 C CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0001 C CNN
	1    2300 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 3550 2300 3350
Wire Wire Line
	2300 3350 1850 3350
Wire Wire Line
	1800 3450 1850 3450
Wire Wire Line
	1850 3450 1850 3350
Connection ~ 1850 3350
Wire Wire Line
	1850 3350 1800 3350
Wire Wire Line
	1800 3650 1850 3650
Wire Wire Line
	1850 3650 1850 3450
Connection ~ 1850 3450
$Comp
L power:+3V3 #PWR013
U 1 1 5EFDE564
P 2000 3250
F 0 "#PWR013" H 2000 3100 50  0001 C CNN
F 1 "+3V3" H 2015 3423 50  0000 C CNN
F 2 "" H 2000 3250 50  0001 C CNN
F 3 "" H 2000 3250 50  0001 C CNN
	1    2000 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 3250 1800 3250
NoConn ~ 1800 3550
Text GLabel 1300 3250 0    50   Input ~ 0
SWDIO
Text GLabel 1300 3350 0    50   Input ~ 0
SWCLK
Text GLabel 1300 3450 0    50   Input ~ 0
SWO
Text GLabel 1300 3650 0    50   Input ~ 0
NRST
NoConn ~ 1300 3550
NoConn ~ 1800 3750
NoConn ~ 1300 3750
Text GLabel 7700 5100 2    50   Input ~ 0
SWDIO
Text GLabel 7700 5200 2    50   Input ~ 0
SWCLK
Text GLabel 6500 4100 0    50   Input ~ 0
SWO
$Comp
L Device:C_Small C13
U 1 1 5EFE7EA6
P 2150 4850
F 0 "C13" H 2242 4896 50  0000 L CNN
F 1 "100 nF" H 2242 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2150 4850 50  0001 C CNN
F 3 "~" H 2150 4850 50  0001 C CNN
	1    2150 4850
	1    0    0    -1  
$EndComp
Text GLabel 1250 4450 0    50   Input ~ 0
NRST
$Comp
L Switch:SW_Push SW1
U 1 1 5EFEA736
P 1500 4850
F 0 "SW1" V 1546 4802 50  0000 R CNN
F 1 "SW_Push" V 1455 4802 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_EVQP0" H 1500 5050 50  0001 C CNN
F 3 "~" H 1500 5050 50  0001 C CNN
	1    1500 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 4450 1500 4450
Wire Wire Line
	1500 4450 1500 4650
Wire Wire Line
	2150 4750 2150 4450
Wire Wire Line
	2150 4450 1500 4450
Connection ~ 1500 4450
Wire Wire Line
	1500 5050 1500 5200
Wire Wire Line
	1500 5200 1800 5200
Wire Wire Line
	2150 5200 2150 4950
$Comp
L power:GND #PWR020
U 1 1 5EFF7A11
P 1800 5200
F 0 "#PWR020" H 1800 4950 50  0001 C CNN
F 1 "GND" H 1805 5027 50  0000 C CNN
F 2 "" H 1800 5200 50  0001 C CNN
F 3 "" H 1800 5200 50  0001 C CNN
	1    1800 5200
	1    0    0    -1  
$EndComp
Connection ~ 1800 5200
Wire Wire Line
	1800 5200 2150 5200
$Comp
L Device:LED_Small D5
U 1 1 5EFF8310
P 3350 6100
F 0 "D5" V 3400 6050 50  0000 R CNN
F 1 "LED_Red" V 3300 6050 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3350 6100 50  0001 C CNN
F 3 "~" V 3350 6100 50  0001 C CNN
	1    3350 6100
	0    1    -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 5EFF9712
P 2850 6100
F 0 "D4" V 2900 5950 50  0000 L CNN
F 1 "LED_Green" V 2800 5650 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2850 6100 50  0001 C CNN
F 3 "~" V 2850 6100 50  0001 C CNN
	1    2850 6100
	0    1    -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5EFF9AD5
P 2150 6100
F 0 "D3" V 2200 5950 50  0000 L CNN
F 1 "LED_Blue" V 2100 5700 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2150 6100 50  0001 C CNN
F 3 "~" V 2150 6100 50  0001 C CNN
	1    2150 6100
	0    1    -1   0   
$EndComp
Wire Wire Line
	3350 6000 3350 5750
Wire Wire Line
	2850 6000 2850 5850
Wire Wire Line
	2150 6000 2150 5950
$Comp
L power:GND #PWR026
U 1 1 5F003870
P 3350 6600
F 0 "#PWR026" H 3350 6350 50  0001 C CNN
F 1 "GND" H 3355 6427 50  0000 C CNN
F 2 "" H 3350 6600 50  0001 C CNN
F 3 "" H 3350 6600 50  0001 C CNN
	1    3350 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5F0043E3
P 2850 6600
F 0 "#PWR025" H 2850 6350 50  0001 C CNN
F 1 "GND" H 2855 6427 50  0000 C CNN
F 2 "" H 2850 6600 50  0001 C CNN
F 3 "" H 2850 6600 50  0001 C CNN
	1    2850 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F00466F
P 2150 6600
F 0 "#PWR024" H 2150 6350 50  0001 C CNN
F 1 "GND" H 2155 6427 50  0000 C CNN
F 2 "" H 2150 6600 50  0001 C CNN
F 3 "" H 2150 6600 50  0001 C CNN
	1    2150 6600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F005028
P 3350 6400
F 0 "R4" H 3400 6450 50  0000 L CNN
F 1 "510" H 3400 6350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 6400 50  0001 C CNN
F 3 "~" H 3350 6400 50  0001 C CNN
	1    3350 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F005A0D
P 2850 6400
F 0 "R3" H 2909 6446 50  0000 L CNN
F 1 "510" H 2909 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2850 6400 50  0001 C CNN
F 3 "~" H 2850 6400 50  0001 C CNN
	1    2850 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F005D31
P 2150 6400
F 0 "R2" H 2209 6446 50  0000 L CNN
F 1 "510" H 2209 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 6400 50  0001 C CNN
F 3 "~" H 2150 6400 50  0001 C CNN
	1    2150 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 6600 3350 6500
Wire Wire Line
	3350 6300 3350 6200
Wire Wire Line
	2850 6300 2850 6200
Wire Wire Line
	2150 6300 2150 6200
Wire Wire Line
	2150 6600 2150 6500
Wire Wire Line
	2850 6600 2850 6500
Wire Wire Line
	3350 5750 1350 5750
Wire Wire Line
	2850 5850 1350 5850
Wire Wire Line
	2150 5950 1350 5950
$Comp
L Connector_Generic:Conn_01x16 J5
U 1 1 5F02DBEF
P 8700 4500
F 0 "J5" H 8780 4492 50  0000 L CNN
F 1 "Conn_PortA" H 8780 4401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8700 4500 50  0001 C CNN
F 3 "~" H 8700 4500 50  0001 C CNN
	1    8700 4500
	1    0    0    -1  
$EndComp
Text GLabel 1350 5750 0    50   Input ~ 0
LED_RED
Text GLabel 1350 5850 0    50   Input ~ 0
LED_GREEN
Text GLabel 1350 5950 0    50   Input ~ 0
LED_BLUE
Text GLabel 6500 3400 0    50   Input ~ 0
LED_RED
Text GLabel 6500 3500 0    50   Input ~ 0
LED_GREEN
Text GLabel 6500 3600 0    50   Input ~ 0
LED_BLUE
$Comp
L Connector_Generic:Conn_01x16 J4
U 1 1 5F048075
P 5700 4500
F 0 "J4" H 5618 5417 50  0000 C CNN
F 1 "Conn_PortB" H 5618 5326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 5700 4500 50  0001 C CNN
F 3 "~" H 5700 4500 50  0001 C CNN
	1    5700 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4000 6500 4000
Wire Wire Line
	5900 4200 6500 4200
Wire Wire Line
	5900 4300 6500 4300
Wire Wire Line
	5900 4400 6500 4400
Wire Wire Line
	5900 4500 6500 4500
Wire Wire Line
	5900 4600 6500 4600
Wire Wire Line
	5900 4700 6500 4700
Wire Wire Line
	5900 4800 6500 4800
Wire Wire Line
	5900 4900 6500 4900
Wire Wire Line
	5900 5000 6500 5000
Wire Wire Line
	5900 5100 6500 5100
Wire Wire Line
	5900 5200 6500 5200
Wire Wire Line
	5900 5300 6500 5300
Wire Wire Line
	7700 3800 8500 3800
Wire Wire Line
	7700 3900 8500 3900
Wire Wire Line
	7700 4000 8500 4000
Wire Wire Line
	7700 4100 8500 4100
Wire Wire Line
	7700 4200 8500 4200
Wire Wire Line
	7700 4300 8500 4300
Wire Wire Line
	7700 4400 8500 4400
Wire Wire Line
	7700 4500 8500 4500
Wire Wire Line
	7700 4600 8500 4600
Wire Wire Line
	7700 4700 8500 4700
Wire Wire Line
	7700 4800 8500 4800
Wire Wire Line
	7700 4900 8500 4900
Wire Wire Line
	7700 5000 8500 5000
Wire Wire Line
	7700 5300 8500 5300
Text GLabel 8500 5100 0    50   Input ~ 0
SWDIO
Text GLabel 8500 5200 0    50   Input ~ 0
SWCLK
Text GLabel 5900 4100 2    50   Input ~ 0
SWO
$Comp
L Device:LED_Small D2
U 1 1 5F103AF4
P 3950 1500
F 0 "D2" H 3750 1750 50  0000 L CNN
F 1 "LED_PWR" H 3600 1650 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3950 1500 50  0001 C CNN
F 3 "~" V 3950 1500 50  0001 C CNN
	1    3950 1500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F103B01
P 4250 1750
F 0 "R1" H 4309 1796 50  0000 L CNN
F 1 "510" H 4309 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 1750 50  0001 C CNN
F 3 "~" H 4250 1750 50  0001 C CNN
	1    4250 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 1900 4250 1900
Wire Wire Line
	4250 1900 4250 1850
Connection ~ 3650 1900
Wire Wire Line
	4050 1500 4250 1500
Wire Wire Line
	4250 1500 4250 1650
Wire Wire Line
	3650 1500 3850 1500
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5F128AB0
P 4450 3100
F 0 "J1" H 4530 3092 50  0000 L CNN
F 1 "Conn_VIN" H 4530 3001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4450 3100 50  0001 C CNN
F 3 "~" H 4450 3100 50  0001 C CNN
	1    4450 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5F12935B
P 4450 3850
F 0 "J3" H 4530 3842 50  0000 L CNN
F 1 "Conn_3V3" H 4530 3751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4450 3850 50  0001 C CNN
F 3 "~" H 4450 3850 50  0001 C CNN
	1    4450 3850
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  2200 4500 2200
Wire Notes Line
	750  1000 4500 1000
$Comp
L power:VCC #PWR012
U 1 1 5F134056
P 4100 3050
F 0 "#PWR012" H 4100 2900 50  0001 C CNN
F 1 "VCC" H 4115 3223 50  0000 C CNN
F 2 "" H 4100 3050 50  0001 C CNN
F 3 "" H 4100 3050 50  0001 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F1348E2
P 4100 3250
F 0 "#PWR014" H 4100 3000 50  0001 C CNN
F 1 "GND" H 4105 3077 50  0000 C CNN
F 2 "" H 4100 3250 50  0001 C CNN
F 3 "" H 4100 3250 50  0001 C CNN
	1    4100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F134BF5
P 4100 4000
F 0 "#PWR017" H 4100 3750 50  0001 C CNN
F 1 "GND" H 4105 3827 50  0000 C CNN
F 2 "" H 4100 4000 50  0001 C CNN
F 3 "" H 4100 4000 50  0001 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5F13533A
P 4100 3800
F 0 "#PWR016" H 4100 3650 50  0001 C CNN
F 1 "+3V3" H 4115 3973 50  0000 C CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3050 4100 3100
Wire Wire Line
	4100 3100 4250 3100
Wire Wire Line
	4100 3250 4100 3200
Wire Wire Line
	4100 3200 4250 3200
Wire Wire Line
	4100 3800 4100 3850
Wire Wire Line
	4100 3850 4250 3850
Wire Wire Line
	4100 4000 4100 3950
Wire Wire Line
	4100 3950 4250 3950
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F14D37A
P 4400 4650
F 0 "H1" V 4354 4800 50  0000 L CNN
F 1 "MountingHole_Pad" V 4445 4800 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 4400 4650 50  0001 C CNN
F 3 "~" H 4400 4650 50  0001 C CNN
	1    4400 4650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F14D827
P 4400 5000
F 0 "H2" V 4354 5150 50  0000 L CNN
F 1 "MountingHole_Pad" V 4445 5150 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 4400 5000 50  0001 C CNN
F 3 "~" H 4400 5000 50  0001 C CNN
	1    4400 5000
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F14D9E2
P 4400 5350
F 0 "H3" V 4354 5500 50  0000 L CNN
F 1 "MountingHole_Pad" V 4445 5500 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 4400 5350 50  0001 C CNN
F 3 "~" H 4400 5350 50  0001 C CNN
	1    4400 5350
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F14DCE0
P 4400 5750
F 0 "H4" V 4354 5900 50  0000 L CNN
F 1 "MountingHole_Pad" V 4445 5900 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 4400 5750 50  0001 C CNN
F 3 "~" H 4400 5750 50  0001 C CNN
	1    4400 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F14DF0D
P 4050 4700
F 0 "#PWR018" H 4050 4450 50  0001 C CNN
F 1 "GND" H 4055 4527 50  0000 C CNN
F 2 "" H 4050 4700 50  0001 C CNN
F 3 "" H 4050 4700 50  0001 C CNN
	1    4050 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F14E133
P 4050 5050
F 0 "#PWR019" H 4050 4800 50  0001 C CNN
F 1 "GND" H 4055 4877 50  0000 C CNN
F 2 "" H 4050 5050 50  0001 C CNN
F 3 "" H 4050 5050 50  0001 C CNN
	1    4050 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F14E36A
P 4050 5450
F 0 "#PWR021" H 4050 5200 50  0001 C CNN
F 1 "GND" H 4055 5277 50  0000 C CNN
F 2 "" H 4050 5450 50  0001 C CNN
F 3 "" H 4050 5450 50  0001 C CNN
	1    4050 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F14E53B
P 4050 5850
F 0 "#PWR023" H 4050 5600 50  0001 C CNN
F 1 "GND" H 4055 5677 50  0000 C CNN
F 2 "" H 4050 5850 50  0001 C CNN
F 3 "" H 4050 5850 50  0001 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5850 4050 5750
Wire Wire Line
	4050 5750 4300 5750
Wire Wire Line
	4050 5450 4050 5350
Wire Wire Line
	4050 5350 4300 5350
Wire Wire Line
	4050 5050 4050 5000
Wire Wire Line
	4050 5000 4300 5000
Wire Wire Line
	4050 4700 4050 4650
Wire Wire Line
	4050 4650 4300 4650
$Comp
L Device:C_Small C14
U 1 1 5F0450E4
P 10500 2900
F 0 "C14" H 10592 2946 50  0000 L CNN
F 1 "100 nF" H 10592 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10500 2900 50  0001 C CNN
F 3 "~" H 10500 2900 50  0001 C CNN
	1    10500 2900
	1    0    0    -1  
$EndComp
Text GLabel 9600 2500 0    50   Input ~ 0
BTN1
$Comp
L Switch:SW_Push SW2
U 1 1 5F0450EB
P 9850 2900
F 0 "SW2" V 9896 2852 50  0000 R CNN
F 1 "SW_Push" V 9805 2852 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_EVQP0" H 9850 3100 50  0001 C CNN
F 3 "~" H 9850 3100 50  0001 C CNN
	1    9850 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 2500 9850 2500
Wire Wire Line
	9850 2500 9850 2700
Wire Wire Line
	10500 2800 10500 2500
Wire Wire Line
	10500 2500 9850 2500
Connection ~ 9850 2500
Wire Wire Line
	9850 3100 9850 3250
Wire Wire Line
	9850 3250 10150 3250
Wire Wire Line
	10500 3250 10500 3000
$Comp
L power:GND #PWR0101
U 1 1 5F0450F9
P 10150 3250
F 0 "#PWR0101" H 10150 3000 50  0001 C CNN
F 1 "GND" H 10155 3077 50  0000 C CNN
F 2 "" H 10150 3250 50  0001 C CNN
F 3 "" H 10150 3250 50  0001 C CNN
	1    10150 3250
	1    0    0    -1  
$EndComp
Connection ~ 10150 3250
Wire Wire Line
	10150 3250 10500 3250
$Comp
L Device:C_Small C15
U 1 1 5F04C4A4
P 10550 4250
F 0 "C15" H 10642 4296 50  0000 L CNN
F 1 "100 nF" H 10642 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10550 4250 50  0001 C CNN
F 3 "~" H 10550 4250 50  0001 C CNN
	1    10550 4250
	1    0    0    -1  
$EndComp
Text GLabel 9650 3850 0    50   Input ~ 0
BTN2
$Comp
L Switch:SW_Push SW3
U 1 1 5F04C4AB
P 9900 4250
F 0 "SW3" V 9946 4202 50  0000 R CNN
F 1 "SW_Push" V 9855 4202 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_EVQP0" H 9900 4450 50  0001 C CNN
F 3 "~" H 9900 4450 50  0001 C CNN
	1    9900 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 3850 9900 3850
Wire Wire Line
	9900 3850 9900 4050
Wire Wire Line
	10550 4150 10550 3850
Wire Wire Line
	10550 3850 9900 3850
Connection ~ 9900 3850
Wire Wire Line
	9900 4450 9900 4600
Wire Wire Line
	9900 4600 10200 4600
Wire Wire Line
	10550 4600 10550 4350
$Comp
L power:GND #PWR0102
U 1 1 5F04C4B9
P 10200 4600
F 0 "#PWR0102" H 10200 4350 50  0001 C CNN
F 1 "GND" H 10205 4427 50  0000 C CNN
F 2 "" H 10200 4600 50  0001 C CNN
F 3 "" H 10200 4600 50  0001 C CNN
	1    10200 4600
	1    0    0    -1  
$EndComp
Connection ~ 10200 4600
Wire Wire Line
	10200 4600 10550 4600
Text GLabel 6500 3800 0    50   Input ~ 0
BTN1
Text GLabel 6500 3900 0    50   Input ~ 0
BTN2
Text GLabel 5900 3800 2    50   Input ~ 0
BTN1
Text GLabel 5900 3900 2    50   Input ~ 0
BTN2
$EndSCHEMATC
