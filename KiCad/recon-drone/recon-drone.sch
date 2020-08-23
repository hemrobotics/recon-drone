EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 7874 6693
encoding utf-8
Sheet 1 1
Title "recon-drone"
Date "2020-06-24"
Rev "V1"
Comp "HemRobotics"
Comment1 "https://youtu.be/NfWd9Kn30i0"
Comment2 "https://github.com/hemrobotics/recon-drone"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2750 1300 2750 1250
$Comp
L power:GND #PWR0106
U 1 1 5EF38C96
P 2750 1300
F 0 "#PWR0106" H 2750 1050 50  0001 C CNN
F 1 "GND" H 2755 1127 50  0000 C CNN
F 2 "" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
Connection ~ 3500 1250
Wire Wire Line
	3500 1250 3600 1250
Wire Wire Line
	3300 1250 3500 1250
Connection ~ 3300 1250
Connection ~ 3200 1250
Wire Wire Line
	3200 1250 3300 1250
Wire Wire Line
	2750 1250 3200 1250
Text Label 5400 3300 0    50   ~ 0
3.3V
Text Label 5400 2600 0    50   ~ 0
5V
Text Label 4900 3650 0    50   ~ 0
3.3V
Wire Wire Line
	5350 3800 5650 3800
Connection ~ 5350 3800
Connection ~ 5350 3550
Wire Wire Line
	5350 3550 5350 3800
Wire Wire Line
	5350 4100 5650 4100
Connection ~ 5350 4100
Wire Wire Line
	5350 4200 5350 4100
Wire Wire Line
	5000 4100 5350 4100
Wire Wire Line
	5000 3800 5350 3800
$Comp
L Device:Battery_Cell BT?
U 1 1 5EF315CF
P 5000 4000
F 0 "BT?" H 5118 4096 50  0000 L CNN
F 1 "Battery_Cell" H 5118 4005 50  0000 L CNN
F 2 "" V 5000 4060 50  0001 C CNN
F 3 "https://www.ineltro.ch/media/downloads/SAAItem/45/45958/36e3e7f3-2049-4adb-a2a7-79c654d92915.pdf" V 5000 4060 50  0001 C CNN
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5EF2F53C
P 5650 4000
F 0 "BT?" H 5768 4096 50  0000 L CNN
F 1 "Battery_Cell" H 5768 4005 50  0000 L CNN
F 2 "" V 5650 4060 50  0001 C CNN
F 3 "https://www.ineltro.ch/media/downloads/SAAItem/45/45958/36e3e7f3-2049-4adb-a2a7-79c654d92915.pdf" V 5650 4060 50  0001 C CNN
	1    5650 4000
	1    0    0    -1  
$EndComp
Text Label 3950 3650 0    50   ~ 0
5V
Wire Wire Line
	2900 2850 2900 2650
Wire Wire Line
	1700 2850 2900 2850
Wire Wire Line
	1700 2350 2900 2350
Wire Wire Line
	2900 2350 2900 2450
Wire Wire Line
	2900 2150 2900 2050
Wire Wire Line
	1750 2150 2900 2150
Wire Wire Line
	2900 1650 2900 1850
Wire Wire Line
	1750 1650 2900 1650
$Comp
L Motor:Motor_DC M?
U 1 1 5EF6AC76
P 1700 2550
F 0 "M?" H 1858 2546 50  0000 L CNN
F 1 "Motor_DC" H 1858 2455 50  0000 L CNN
F 2 "" H 1700 2460 50  0001 C CNN
F 3 "~" H 1700 2460 50  0001 C CNN
	1    1700 2550
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 5EF6978D
P 1750 1850
F 0 "M?" H 1908 1846 50  0000 L CNN
F 1 "Motor_DC" H 1908 1755 50  0000 L CNN
F 2 "" H 1750 1760 50  0001 C CNN
F 3 "~" H 1750 1760 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2450 4600 2250
Wire Wire Line
	5350 2450 4600 2450
Wire Wire Line
	5350 2550 5350 2450
$Comp
L 4xxx:ESP32CAM U?
U 1 1 5EF2471F
P 5150 1850
F 0 "U?" H 5150 2565 50  0000 C CNN
F 1 "ESP32CAM" H 5150 2474 50  0000 C CNN
F 2 "" H 4750 2450 50  0001 C CNN
F 3 "https://loboris.eu/ESP32/ESP32-CAM%20Product%20Specification.pdf" H 4750 2450 50  0001 C CNN
	1    5150 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EF66B89
P 5350 4200
F 0 "#PWR0105" H 5350 3950 50  0001 C CNN
F 1 "GND" H 5355 4027 50  0000 C CNN
F 2 "" H 5350 4200 50  0001 C CNN
F 3 "" H 5350 4200 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
Connection ~ 3900 2450
Wire Wire Line
	3900 3050 3550 3050
Wire Wire Line
	3900 2450 3900 3050
Wire Wire Line
	3900 2350 3900 2450
Connection ~ 5050 3300
Wire Wire Line
	5200 3300 5050 3300
Wire Wire Line
	4950 3300 5050 3300
$Comp
L power:GND #PWR0104
U 1 1 5EF633C4
P 5050 3300
F 0 "#PWR0104" H 5050 3050 50  0001 C CNN
F 1 "GND" H 5050 3350 50  0000 C CNN
F 2 "" H 5050 3300 50  0001 C CNN
F 3 "" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3550 5350 3300
Wire Wire Line
	4950 3550 5350 3550
Wire Wire Line
	4900 2550 4900 2600
Wire Wire Line
	5200 2550 4900 2550
Wire Wire Line
	4400 2150 4600 2150
Wire Wire Line
	4400 2200 4400 2150
$Comp
L power:GND #PWR0103
U 1 1 5EF624CF
P 4900 2600
F 0 "#PWR0103" H 4900 2350 50  0001 C CNN
F 1 "GND" H 4905 2427 50  0000 C CNN
F 2 "" H 4900 2600 50  0001 C CNN
F 3 "" H 4900 2600 50  0001 C CNN
	1    4900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EF61D01
P 4400 2200
F 0 "#PWR0102" H 4400 1950 50  0001 C CNN
F 1 "GND" H 4405 2027 50  0000 C CNN
F 2 "" H 4400 2200 50  0001 C CNN
F 3 "" H 4400 2200 50  0001 C CNN
	1    4400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EF5BB71
P 4000 3300
F 0 "#PWR0101" H 4000 3050 50  0001 C CNN
F 1 "GND" H 4005 3127 50  0000 C CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Connection ~ 3550 3050
Wire Wire Line
	3550 3550 4000 3550
Wire Wire Line
	3550 3050 3550 3550
$Comp
L 4xxx:Powerbank_Module U?
U 1 1 5EF536C4
P 5300 2950
F 0 "U?" V 5229 3088 50  0000 L CNN
F 1 "Powerbank_Module" V 5320 3088 50  0000 L CNN
F 2 "" H 5300 3100 50  0001 C CNN
F 3 "" H 5300 3100 50  0001 C CNN
	1    5300 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3050 3550 3050
$Comp
L 4xxx:DC-DC_Step-up_Module U?
U 1 1 5EF4E221
P 4400 3700
F 0 "U?" H 4325 3085 50  0000 C CNN
F 1 "DC-DC_Step-up_Module" H 4325 3176 50  0000 C CNN
F 2 "" H 3950 3650 50  0001 C CNN
F 3 "https://www.nikom.biz/pdf/XL6009.pdf" H 3950 3650 50  0001 C CNN
	1    4400 3700
	-1   0    0    1   
$EndComp
$Comp
L 4xxx:L293D_R6 U?
U 1 1 5EF42E74
P 4200 -2300
F 0 "U?" H 3000 -7750 50  0000 C CNN
F 1 "L293D_R6" H 3100 -7650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3950 -750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 3700 -7350 50  0001 C CNN
	1    4200 -2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1950 4600 1950
Wire Wire Line
	3900 1850 4600 1850
Wire Wire Line
	3900 1750 4600 1750
Wire Wire Line
	3900 1650 4600 1650
$EndSCHEMATC
