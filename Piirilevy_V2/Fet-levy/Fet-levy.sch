EESchema Schematic File Version 4
LIBS:Fet-levy-cache
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
L Transistor_FET:IRF3205 Q1
U 1 1 5BD22061
P 1700 1100
F 0 "Q1" H 1906 1146 50  0000 L CNN
F 1 "IRF3205" H 1906 1055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 1025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 1100 50  0001 L CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q2
U 1 1 5BD2212D
P 1700 1800
F 0 "Q2" H 1906 1846 50  0000 L CNN
F 1 "IRF3205" H 1906 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 1725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 1800 50  0001 L CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 5BD22187
P 1700 2500
F 0 "Q3" H 1906 2546 50  0000 L CNN
F 1 "IRF3205" H 1906 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 2425 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 2500 50  0001 L CNN
	1    1700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5BD227EF
P 1800 1350
F 0 "#PWR0101" H 1800 1100 50  0001 C CNN
F 1 "GND" H 1805 1177 50  0000 C CNN
F 2 "" H 1800 1350 50  0001 C CNN
F 3 "" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BD22839
P 1800 2050
F 0 "#PWR0102" H 1800 1800 50  0001 C CNN
F 1 "GND" H 1805 1877 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BD2286B
P 1800 2750
F 0 "#PWR0103" H 1800 2500 50  0001 C CNN
F 1 "GND" H 1805 2577 50  0000 C CNN
F 2 "" H 1800 2750 50  0001 C CNN
F 3 "" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BD2289D
P 1800 3500
F 0 "#PWR0104" H 1800 3250 50  0001 C CNN
F 1 "GND" H 1805 3327 50  0000 C CNN
F 2 "" H 1800 3500 50  0001 C CNN
F 3 "" H 1800 3500 50  0001 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 5BD221E6
P 1700 3250
F 0 "Q4" H 1906 3296 50  0000 L CNN
F 1 "IRF3205" H 1906 3205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 3175 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 3250 50  0001 L CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1300 1800 1350
Wire Wire Line
	1800 2000 1800 2050
Wire Wire Line
	1800 3450 1800 3500
Wire Wire Line
	1800 2700 1800 2750
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5BD2503A
P 2900 1050
F 0 "J1" H 2980 1092 50  0000 L CNN
F 1 "Conn_01x05" H 2980 1001 50  0000 L CNN
F 2 "Connector_JST:JST_VH_B5P-VH-B_1x05_P3.96mm_Vertical" H 2900 1050 50  0001 C CNN
F 3 "~" H 2900 1050 50  0001 C CNN
	1    2900 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5BD2517B
P 950 1200
F 0 "J5" H 870 1517 50  0000 C CNN
F 1 "Conn_01x04" H 870 1426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 950 1200 50  0001 C CNN
F 3 "~" H 950 1200 50  0001 C CNN
	1    950  1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 1800 1450 1800
Wire Wire Line
	1450 1800 1450 1200
Wire Wire Line
	1350 2500 1350 1300
Wire Wire Line
	1350 2500 1500 2500
Wire Wire Line
	1500 3250 1250 3250
Wire Wire Line
	1250 3250 1250 1400
Wire Wire Line
	1150 1100 1500 1100
Wire Wire Line
	1150 1200 1450 1200
Wire Wire Line
	1150 1300 1350 1300
Wire Wire Line
	1150 1400 1250 1400
Wire Wire Line
	1800 900  1800 850 
Wire Wire Line
	1800 1600 1800 1550
Wire Wire Line
	1800 1550 2300 1550
Wire Wire Line
	2300 1550 2300 950 
Wire Wire Line
	1800 2300 1800 2250
Wire Wire Line
	1800 2250 2400 2250
Wire Wire Line
	2400 2250 2400 1050
Wire Wire Line
	1800 3050 2500 3050
Wire Wire Line
	2500 3050 2500 1150
Wire Wire Line
	2700 1250 2600 1250
Wire Wire Line
	2500 1150 2700 1150
Wire Wire Line
	2400 1050 2700 1050
Wire Wire Line
	2300 950  2700 950 
Wire Wire Line
	1800 850  2700 850 
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 5BD27A02
P 700 1100
F 0 "J11" V 666 1012 50  0000 R CNN
F 1 "Conn_01x01" V 575 1012 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 700 1100 50  0001 C CNN
F 3 "~" H 700 1100 50  0001 C CNN
	1    700  1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5BD27AFF
P 700 1400
F 0 "#PWR0105" H 700 1150 50  0001 C CNN
F 1 "GND" H 705 1227 50  0000 C CNN
F 2 "" H 700 1400 50  0001 C CNN
F 3 "" H 700 1400 50  0001 C CNN
	1    700  1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5BD27F64
P 2850 3250
F 0 "#PWR0106" H 2850 3100 50  0001 C CNN
F 1 "+12V" H 2865 3423 50  0000 C CNN
F 2 "" H 2850 3250 50  0001 C CNN
F 3 "" H 2850 3250 50  0001 C CNN
	1    2850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3250 2850 3350
Wire Wire Line
	2600 3350 2850 3350
Wire Wire Line
	2600 1250 2600 3350
$Comp
L Transistor_FET:IRF3205 Q9
U 1 1 5BD29384
P 4450 1150
F 0 "Q9" H 4656 1196 50  0000 L CNN
F 1 "IRF3205" H 4656 1105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 1075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 1150 50  0001 L CNN
	1    4450 1150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q10
U 1 1 5BD2938B
P 4450 1850
F 0 "Q10" H 4656 1896 50  0000 L CNN
F 1 "IRF3205" H 4656 1805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 1775 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 1850 50  0001 L CNN
	1    4450 1850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q11
U 1 1 5BD29392
P 4450 2550
F 0 "Q11" H 4656 2596 50  0000 L CNN
F 1 "IRF3205" H 4656 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 2475 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 2550 50  0001 L CNN
	1    4450 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5BD29399
P 4550 1400
F 0 "#PWR0107" H 4550 1150 50  0001 C CNN
F 1 "GND" H 4555 1227 50  0000 C CNN
F 2 "" H 4550 1400 50  0001 C CNN
F 3 "" H 4550 1400 50  0001 C CNN
	1    4550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BD2939F
P 4550 2100
F 0 "#PWR0108" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4555 1927 50  0000 C CNN
F 2 "" H 4550 2100 50  0001 C CNN
F 3 "" H 4550 2100 50  0001 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5BD293A5
P 4550 2800
F 0 "#PWR0109" H 4550 2550 50  0001 C CNN
F 1 "GND" H 4555 2627 50  0000 C CNN
F 2 "" H 4550 2800 50  0001 C CNN
F 3 "" H 4550 2800 50  0001 C CNN
	1    4550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5BD293AB
P 4550 3550
F 0 "#PWR0110" H 4550 3300 50  0001 C CNN
F 1 "GND" H 4555 3377 50  0000 C CNN
F 2 "" H 4550 3550 50  0001 C CNN
F 3 "" H 4550 3550 50  0001 C CNN
	1    4550 3550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q12
U 1 1 5BD293B1
P 4450 3300
F 0 "Q12" H 4656 3346 50  0000 L CNN
F 1 "IRF3205" H 4656 3255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 3225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 3300 50  0001 L CNN
	1    4450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1350 4550 1400
Wire Wire Line
	4550 2050 4550 2100
Wire Wire Line
	4550 3500 4550 3550
Wire Wire Line
	4550 2750 4550 2800
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5BD293BC
P 5650 1100
F 0 "J3" H 5730 1142 50  0000 L CNN
F 1 "Conn_01x05" H 5730 1051 50  0000 L CNN
F 2 "Connector_JST:JST_VH_B5P-VH-B_1x05_P3.96mm_Vertical" H 5650 1100 50  0001 C CNN
F 3 "~" H 5650 1100 50  0001 C CNN
	1    5650 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 5BD293C3
P 3700 1250
F 0 "J7" H 3620 1567 50  0000 C CNN
F 1 "Conn_01x04" H 3620 1476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3700 1250 50  0001 C CNN
F 3 "~" H 3700 1250 50  0001 C CNN
	1    3700 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 1850 4200 1850
Wire Wire Line
	4200 1850 4200 1250
Wire Wire Line
	4100 2550 4100 1350
Wire Wire Line
	4100 2550 4250 2550
Wire Wire Line
	4250 3300 4000 3300
Wire Wire Line
	4000 3300 4000 1450
Wire Wire Line
	3900 1150 4250 1150
Wire Wire Line
	3900 1250 4200 1250
Wire Wire Line
	3900 1350 4100 1350
Wire Wire Line
	3900 1450 4000 1450
Wire Wire Line
	4550 950  4550 900 
Wire Wire Line
	4550 1650 4550 1600
Wire Wire Line
	4550 1600 5050 1600
Wire Wire Line
	5050 1600 5050 1000
Wire Wire Line
	4550 2350 4550 2300
Wire Wire Line
	4550 2300 5150 2300
Wire Wire Line
	5150 2300 5150 1100
Wire Wire Line
	4550 3100 5250 3100
Wire Wire Line
	5250 3100 5250 1200
Wire Wire Line
	5450 1300 5350 1300
Wire Wire Line
	5250 1200 5450 1200
Wire Wire Line
	5150 1100 5450 1100
Wire Wire Line
	5050 1000 5450 1000
Wire Wire Line
	4550 900  5450 900 
$Comp
L power:+12V #PWR0112
U 1 1 5BD293F0
P 5600 3300
F 0 "#PWR0112" H 5600 3150 50  0001 C CNN
F 1 "+12V" H 5615 3473 50  0000 C CNN
F 2 "" H 5600 3300 50  0001 C CNN
F 3 "" H 5600 3300 50  0001 C CNN
	1    5600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3300 5600 3400
Wire Wire Line
	5350 3400 5600 3400
Wire Wire Line
	5350 1300 5350 3400
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 5BD2A6F7
P 1700 4300
F 0 "Q5" H 1906 4346 50  0000 L CNN
F 1 "IRF3205" H 1906 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 4225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 4300 50  0001 L CNN
	1    1700 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 5BD2A6FE
P 1700 5000
F 0 "Q6" H 1906 5046 50  0000 L CNN
F 1 "IRF3205" H 1906 4955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 4925 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 5000 50  0001 L CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q7
U 1 1 5BD2A705
P 1700 5700
F 0 "Q7" H 1906 5746 50  0000 L CNN
F 1 "IRF3205" H 1906 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 5700 50  0001 L CNN
	1    1700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5BD2A70C
P 1800 4550
F 0 "#PWR0113" H 1800 4300 50  0001 C CNN
F 1 "GND" H 1805 4377 50  0000 C CNN
F 2 "" H 1800 4550 50  0001 C CNN
F 3 "" H 1800 4550 50  0001 C CNN
	1    1800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5BD2A712
P 1800 5250
F 0 "#PWR0114" H 1800 5000 50  0001 C CNN
F 1 "GND" H 1805 5077 50  0000 C CNN
F 2 "" H 1800 5250 50  0001 C CNN
F 3 "" H 1800 5250 50  0001 C CNN
	1    1800 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5BD2A718
P 1800 5950
F 0 "#PWR0115" H 1800 5700 50  0001 C CNN
F 1 "GND" H 1805 5777 50  0000 C CNN
F 2 "" H 1800 5950 50  0001 C CNN
F 3 "" H 1800 5950 50  0001 C CNN
	1    1800 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5BD2A71E
P 1800 6700
F 0 "#PWR0116" H 1800 6450 50  0001 C CNN
F 1 "GND" H 1805 6527 50  0000 C CNN
F 2 "" H 1800 6700 50  0001 C CNN
F 3 "" H 1800 6700 50  0001 C CNN
	1    1800 6700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q8
U 1 1 5BD2A724
P 1700 6450
F 0 "Q8" H 1906 6496 50  0000 L CNN
F 1 "IRF3205" H 1906 6405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1950 6375 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 1700 6450 50  0001 L CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4500 1800 4550
Wire Wire Line
	1800 5200 1800 5250
Wire Wire Line
	1800 6650 1800 6700
Wire Wire Line
	1800 5900 1800 5950
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5BD2A72F
P 2900 4250
F 0 "J2" H 2980 4292 50  0000 L CNN
F 1 "Conn_01x05" H 2980 4201 50  0000 L CNN
F 2 "Connector_JST:JST_VH_B5P-VH-B_1x05_P3.96mm_Vertical" H 2900 4250 50  0001 C CNN
F 3 "~" H 2900 4250 50  0001 C CNN
	1    2900 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5BD2A736
P 950 4400
F 0 "J6" H 870 4717 50  0000 C CNN
F 1 "Conn_01x04" H 870 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 950 4400 50  0001 C CNN
F 3 "~" H 950 4400 50  0001 C CNN
	1    950  4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1500 5000 1450 5000
Wire Wire Line
	1450 5000 1450 4400
Wire Wire Line
	1350 5700 1350 4500
Wire Wire Line
	1350 5700 1500 5700
Wire Wire Line
	1500 6450 1250 6450
Wire Wire Line
	1250 6450 1250 4600
Wire Wire Line
	1150 4300 1500 4300
Wire Wire Line
	1150 4400 1450 4400
Wire Wire Line
	1150 4500 1350 4500
Wire Wire Line
	1150 4600 1250 4600
Wire Wire Line
	1800 4100 1800 4050
Wire Wire Line
	1800 4800 1800 4750
Wire Wire Line
	1800 4750 2300 4750
Wire Wire Line
	2300 4750 2300 4150
Wire Wire Line
	1800 5500 1800 5450
Wire Wire Line
	1800 5450 2400 5450
Wire Wire Line
	2400 5450 2400 4250
Wire Wire Line
	1800 6250 2500 6250
Wire Wire Line
	2500 6250 2500 4350
Wire Wire Line
	2700 4450 2600 4450
Wire Wire Line
	2500 4350 2700 4350
Wire Wire Line
	2400 4250 2700 4250
Wire Wire Line
	2300 4150 2700 4150
Wire Wire Line
	1800 4050 2700 4050
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 5BD2A755
P 950 4750
F 0 "J13" V 916 4662 50  0000 R CNN
F 1 "Conn_01x01" V 825 4662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 950 4750 50  0001 C CNN
F 3 "~" H 950 4750 50  0001 C CNN
	1    950  4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5BD2A75C
P 950 5000
F 0 "#PWR0117" H 950 4750 50  0001 C CNN
F 1 "GND" H 955 4827 50  0000 C CNN
F 2 "" H 950 5000 50  0001 C CNN
F 3 "" H 950 5000 50  0001 C CNN
	1    950  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4950 950  5000
$Comp
L power:+12V #PWR0118
U 1 1 5BD2A763
P 2850 6450
F 0 "#PWR0118" H 2850 6300 50  0001 C CNN
F 1 "+12V" H 2865 6623 50  0000 C CNN
F 2 "" H 2850 6450 50  0001 C CNN
F 3 "" H 2850 6450 50  0001 C CNN
	1    2850 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6450 2850 6550
Wire Wire Line
	2600 6550 2850 6550
Wire Wire Line
	2600 4450 2600 6550
$Comp
L Transistor_FET:IRF3205 Q13
U 1 1 5BD2E1FC
P 4450 4300
F 0 "Q13" H 4656 4346 50  0000 L CNN
F 1 "IRF3205" H 4656 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 4225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 4300 50  0001 L CNN
	1    4450 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q14
U 1 1 5BD2E203
P 4450 5000
F 0 "Q14" H 4656 5046 50  0000 L CNN
F 1 "IRF3205" H 4656 4955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 4925 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 5000 50  0001 L CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q15
U 1 1 5BD2E20A
P 4450 5700
F 0 "Q15" H 4656 5746 50  0000 L CNN
F 1 "IRF3205" H 4656 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 5625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 5700 50  0001 L CNN
	1    4450 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5BD2E211
P 4550 4550
F 0 "#PWR0119" H 4550 4300 50  0001 C CNN
F 1 "GND" H 4555 4377 50  0000 C CNN
F 2 "" H 4550 4550 50  0001 C CNN
F 3 "" H 4550 4550 50  0001 C CNN
	1    4550 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5BD2E217
P 4550 5250
F 0 "#PWR0120" H 4550 5000 50  0001 C CNN
F 1 "GND" H 4555 5077 50  0000 C CNN
F 2 "" H 4550 5250 50  0001 C CNN
F 3 "" H 4550 5250 50  0001 C CNN
	1    4550 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5BD2E21D
P 4550 5950
F 0 "#PWR0121" H 4550 5700 50  0001 C CNN
F 1 "GND" H 4555 5777 50  0000 C CNN
F 2 "" H 4550 5950 50  0001 C CNN
F 3 "" H 4550 5950 50  0001 C CNN
	1    4550 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5BD2E223
P 4550 6700
F 0 "#PWR0122" H 4550 6450 50  0001 C CNN
F 1 "GND" H 4555 6527 50  0000 C CNN
F 2 "" H 4550 6700 50  0001 C CNN
F 3 "" H 4550 6700 50  0001 C CNN
	1    4550 6700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q16
U 1 1 5BD2E229
P 4450 6450
F 0 "Q16" H 4656 6496 50  0000 L CNN
F 1 "IRF3205" H 4656 6405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 6375 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4450 6450 50  0001 L CNN
	1    4450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4500 4550 4550
Wire Wire Line
	4550 5200 4550 5250
Wire Wire Line
	4550 6650 4550 6700
Wire Wire Line
	4550 5900 4550 5950
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5BD2E234
P 5650 4250
F 0 "J4" H 5730 4292 50  0000 L CNN
F 1 "Conn_01x05" H 5730 4201 50  0000 L CNN
F 2 "Connector_JST:JST_VH_B5P-VH-B_1x05_P3.96mm_Vertical" H 5650 4250 50  0001 C CNN
F 3 "~" H 5650 4250 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J8
U 1 1 5BD2E23B
P 3700 4400
F 0 "J8" H 3620 4717 50  0000 C CNN
F 1 "Conn_01x04" H 3620 4626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3700 4400 50  0001 C CNN
F 3 "~" H 3700 4400 50  0001 C CNN
	1    3700 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 5000 4200 5000
Wire Wire Line
	4200 5000 4200 4400
Wire Wire Line
	4100 5700 4100 4500
Wire Wire Line
	4100 5700 4250 5700
Wire Wire Line
	4250 6450 4000 6450
Wire Wire Line
	4000 6450 4000 4600
Wire Wire Line
	3900 4300 4250 4300
Wire Wire Line
	3900 4400 4200 4400
Wire Wire Line
	3900 4500 4100 4500
Wire Wire Line
	3900 4600 4000 4600
Wire Wire Line
	4550 4100 4550 4050
Wire Wire Line
	4550 4800 4550 4750
Wire Wire Line
	4550 4750 5050 4750
Wire Wire Line
	5050 4750 5050 4150
Wire Wire Line
	4550 5500 4550 5450
Wire Wire Line
	4550 5450 5150 5450
Wire Wire Line
	5150 5450 5150 4250
Wire Wire Line
	4550 6250 5250 6250
Wire Wire Line
	5250 6250 5250 4350
Wire Wire Line
	5450 4450 5350 4450
Wire Wire Line
	5250 4350 5450 4350
Wire Wire Line
	5150 4250 5450 4250
Wire Wire Line
	5050 4150 5450 4150
Wire Wire Line
	4550 4050 5450 4050
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 5BD2E25A
P 3700 4750
F 0 "J14" V 3666 4662 50  0000 R CNN
F 1 "Conn_01x01" V 3575 4662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3700 4750 50  0001 C CNN
F 3 "~" H 3700 4750 50  0001 C CNN
	1    3700 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5BD2E261
P 3700 5000
F 0 "#PWR0123" H 3700 4750 50  0001 C CNN
F 1 "GND" H 3705 4827 50  0000 C CNN
F 2 "" H 3700 5000 50  0001 C CNN
F 3 "" H 3700 5000 50  0001 C CNN
	1    3700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4950 3700 5000
$Comp
L power:+12V #PWR0124
U 1 1 5BD2E268
P 5600 6450
F 0 "#PWR0124" H 5600 6300 50  0001 C CNN
F 1 "+12V" H 5615 6623 50  0000 C CNN
F 2 "" H 5600 6450 50  0001 C CNN
F 3 "" H 5600 6450 50  0001 C CNN
	1    5600 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6450 5600 6550
Wire Wire Line
	5350 6550 5600 6550
Wire Wire Line
	5350 4450 5350 6550
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5BD27FA9
P 2850 3650
F 0 "J9" V 2723 3730 50  0000 L CNN
F 1 "Conn_01x01" V 2814 3730 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2850 3650 50  0001 C CNN
F 3 "~" H 2850 3650 50  0001 C CNN
	1    2850 3650
	0    1    1    0   
$EndComp
Connection ~ 2850 3350
Wire Wire Line
	2850 3350 2850 3450
Wire Wire Line
	700  1300 700  1400
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5BDF8545
P 3150 3350
F 0 "J10" H 3230 3392 50  0000 L CNN
F 1 "Conn_01x01" H 3230 3301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3150 3350 50  0001 C CNN
F 3 "~" H 3150 3350 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5BDF8D0F
P 550 1100
F 0 "J12" V 650 1150 50  0000 R CNN
F 1 "Conn_01x01" V 425 1012 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 550 1100 50  0001 C CNN
F 3 "~" H 550 1100 50  0001 C CNN
	1    550  1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	550  1300 700  1300
Connection ~ 700  1300
Wire Wire Line
	2950 3350 2850 3350
$Comp
L Connector_Generic:Conn_01x05 J15
U 1 1 5BE02456
P 8000 2400
F 0 "J15" V 7966 2680 50  0000 L CNN
F 1 "Conn_01x05" V 7875 2680 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8000 2400 50  0001 C CNN
F 3 "~" H 8000 2400 50  0001 C CNN
	1    8000 2400
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J16
U 1 1 5BE02568
P 9700 2400
F 0 "J16" V 9666 2680 50  0000 L CNN
F 1 "Conn_01x05" V 9575 2680 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9700 2400 50  0001 C CNN
F 3 "~" H 9700 2400 50  0001 C CNN
	1    9700 2400
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J17
U 1 1 5BE02FAB
P 8000 3250
F 0 "J17" V 7873 3530 50  0000 L CNN
F 1 "Conn_01x05" V 7964 3530 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8000 3250 50  0001 C CNN
F 3 "~" H 8000 3250 50  0001 C CNN
	1    8000 3250
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J18
U 1 1 5BE0304D
P 9700 3250
F 0 "J18" V 9573 3530 50  0000 L CNN
F 1 "Conn_01x05" V 9664 3530 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B05B-XH-A_1x05_P2.50mm_Vertical" H 9700 3250 50  0001 C CNN
F 3 "~" H 9700 3250 50  0001 C CNN
	1    9700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2600 7800 2850
Wire Wire Line
	8200 2600 8200 3050
Wire Wire Line
	8100 3050 8100 2600
Wire Wire Line
	8000 2600 8000 3050
Wire Wire Line
	7900 3050 7900 2600
Wire Wire Line
	9500 2600 9500 2800
Wire Wire Line
	9600 2600 9600 3050
Wire Wire Line
	9700 2600 9700 3050
Wire Wire Line
	9800 2600 9800 3050
Wire Wire Line
	9900 2600 9900 3050
$Comp
L power:GND #PWR?
U 1 1 5BE45C5D
P 9300 2800
F 0 "#PWR?" H 9300 2550 50  0001 C CNN
F 1 "GND" H 9305 2627 50  0000 C CNN
F 2 "" H 9300 2800 50  0001 C CNN
F 3 "" H 9300 2800 50  0001 C CNN
	1    9300 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE4A588
P 7650 2850
F 0 "#PWR?" H 7650 2600 50  0001 C CNN
F 1 "GND" H 7655 2677 50  0000 C CNN
F 2 "" H 7650 2850 50  0001 C CNN
F 3 "" H 7650 2850 50  0001 C CNN
	1    7650 2850
	1    0    0    -1  
$EndComp
Connection ~ 9500 2800
Wire Wire Line
	9500 2800 9500 3050
Wire Wire Line
	9300 2800 9500 2800
Wire Wire Line
	7650 2850 7800 2850
Connection ~ 7800 2850
Wire Wire Line
	7800 2850 7800 3050
$EndSCHEMATC
