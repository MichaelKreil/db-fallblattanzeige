EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ok-ic-com
LIBS:power_sources
LIBS:additional-logic
LIBS:additional-opto
LIBS:db-fallblattanzeige-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Fallblattfahrzielanzeige / Device Board"
Date "2016-01-26"
Rev ""
Comp "c-base e.V."
Comment1 "coon"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X09 P?
U 1 1 56A9072C
P 4550 2350
F 0 "P?" H 4550 2850 50  0000 C CNN
F 1 "CONN_02X09" V 4550 2350 50  0000 C CNN
F 2 "" H 4550 1150 50  0000 C CNN
F 3 "" H 4550 1150 50  0000 C CNN
	1    4550 2350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X05 P?
U 1 1 56A9083B
P 3350 2350
F 0 "P?" H 3350 2650 50  0000 C CNN
F 1 "CONN_02X05" H 3350 2050 50  0000 C CNN
F 2 "" H 3350 1150 50  0000 C CNN
F 3 "" H 3350 1150 50  0000 C CNN
	1    3350 2350
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 56A90B3F
P 4950 2950
F 0 "R?" V 5030 2950 50  0000 C CNN
F 1 "100K" V 4950 2950 50  0000 C CNN
F 2 "" V 4880 2950 50  0000 C CNN
F 3 "" H 4950 2950 50  0000 C CNN
	1    4950 2950
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y?
U 1 1 56A90C41
P 4700 4700
F 0 "Y?" H 4700 4850 50  0000 C CNN
F 1 "500Hz" H 4700 4550 50  0000 C CNN
F 2 "" H 4700 4700 50  0000 C CNN
F 3 "" H 4700 4700 50  0000 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56A90E45
P 4350 4350
F 0 "#PWR?" H 4350 4200 50  0001 C CNN
F 1 "VCC" H 4350 4500 50  0000 C CNN
F 2 "" H 4350 4350 50  0000 C CNN
F 3 "" H 4350 4350 50  0000 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
Text Label 4250 3300 3    60   ~ 0
SR_CP
Text Label 4150 3300 3    60   ~ 0
SR_DATA
$Comp
L R R?
U 1 1 56A91072
P 4150 2950
F 0 "R?" V 4230 2950 50  0000 C CNN
F 1 "51K" V 4150 2950 50  0000 C CNN
F 2 "" V 4080 2950 50  0000 C CNN
F 3 "" H 4150 2950 50  0000 C CNN
	1    4150 2950
	1    0    0    -1  
$EndComp
Text Label 4150 1900 1    60   ~ 0
~SR_LATCH
Text Label 3350 2850 3    60   ~ 0
SR_DATA
Text Label 3450 1800 1    60   ~ 0
SR_CP
Text Label 3550 2850 3    60   ~ 0
~SR_LATCH
$Comp
L GND #PWR?
U 1 1 56A91995
P 5250 1900
F 0 "#PWR?" H 5250 1650 50  0001 C CNN
F 1 "GND" H 5250 1750 50  0000 C CNN
F 2 "" H 5250 1900 50  0000 C CNN
F 3 "" H 5250 1900 50  0000 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
Text Label 4950 3300 3    60   ~ 0
BUS_DATA
$Comp
L GND #PWR?
U 1 1 56A91F79
P 2900 1700
F 0 "#PWR?" H 2900 1450 50  0001 C CNN
F 1 "GND" H 2900 1550 50  0000 C CNN
F 2 "" H 2900 1700 50  0000 C CNN
F 3 "" H 2900 1700 50  0000 C CNN
	1    2900 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56A921CA
P 3350 1300
F 0 "#PWR?" H 3350 1150 50  0001 C CNN
F 1 "VCC" H 3350 1450 50  0000 C CNN
F 2 "" H 3350 1300 50  0000 C CNN
F 3 "" H 3350 1300 50  0000 C CNN
	1    3350 1300
	1    0    0    -1  
$EndComp
Text Label 3550 1450 1    60   ~ 0
BUS_DATA
Text Label 4450 1850 1    60   ~ 0
SCL
Text Label 4350 1850 1    60   ~ 0
SDA
$Comp
L 24C512 U?
U 1 1 56A92A0C
P 6400 2350
F 0 "U?" H 6550 2700 50  0000 C CNN
F 1 "CSI 24WC04JI" H 6679 2000 50  0000 C CNN
F 2 "" H 6400 2350 50  0000 C CNN
F 3 "" H 6400 2350 50  0000 C CNN
	1    6400 2350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56A92C4E
P 6400 1400
F 0 "#PWR?" H 6400 1250 50  0001 C CNN
F 1 "VCC" H 6400 1550 50  0000 C CNN
F 2 "" H 6400 1400 50  0000 C CNN
F 3 "" H 6400 1400 50  0000 C CNN
	1    6400 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56A92CF2
P 6400 2850
F 0 "#PWR?" H 6400 2600 50  0001 C CNN
F 1 "GND" H 6400 2700 50  0000 C CNN
F 2 "" H 6400 2850 50  0000 C CNN
F 3 "" H 6400 2850 50  0000 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56A92DFC
P 5700 2600
F 0 "#PWR?" H 5700 2350 50  0001 C CNN
F 1 "GND" H 5700 2450 50  0000 C CNN
F 2 "" H 5700 2600 50  0000 C CNN
F 3 "" H 5700 2600 50  0000 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56A92F97
P 8200 2350
F 0 "#PWR?" H 8200 2100 50  0001 C CNN
F 1 "GND" H 8200 2200 50  0000 C CNN
F 2 "" H 8200 2350 50  0000 C CNN
F 3 "" H 8200 2350 50  0000 C CNN
	1    8200 2350
	1    0    0    -1  
$EndComp
Text Label 7650 2450 0    60   ~ 0
SCL
Text Label 7650 2550 0    60   ~ 0
SDA
$Comp
L 4N25 U?
U 1 1 56A9466C
P 3350 4050
F 0 "U?" H 3150 4250 50  0000 L CNN
F 1 "4N25" H 3350 4250 50  0000 L CNN
F 2 "DIP-6" H 3150 3850 50  0000 L CIN
F 3 "" H 3350 4050 50  0000 L CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56A946C6
P 3950 5250
F 0 "#PWR?" H 3950 5000 50  0001 C CNN
F 1 "GND" H 3950 5100 50  0000 C CNN
F 2 "" H 3950 5250 50  0000 C CNN
F 3 "" H 3950 5250 50  0000 C CNN
	1    3950 5250
	1    0    0    -1  
$EndComp
$Sheet
S 900  3100 800  700 
U 56ABCE6E
F0 "Address Board" 60
F1 "address_board.sch" 60
$EndSheet
$Comp
L R R?
U 1 1 56AC19CC
P 6750 4400
F 0 "R?" V 6830 4400 50  0000 C CNN
F 1 "270" V 6750 4400 50  0000 C CNN
F 2 "" V 6680 4400 50  0000 C CNN
F 3 "" H 6750 4400 50  0000 C CNN
	1    6750 4400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56AC1A5E
P 6350 4550
F 0 "#PWR?" H 6350 4300 50  0001 C CNN
F 1 "GND" H 6350 4400 50  0000 C CNN
F 2 "" H 6350 4550 50  0000 C CNN
F 3 "" H 6350 4550 50  0000 C CNN
	1    6350 4550
	1    0    0    -1  
$EndComp
$Comp
L TLP3502 U?
U 1 1 56AC4A29
P 7500 4250
F 0 "U?" H 7180 4332 50  0000 L CNN
F 1 "TLP3502" H 7180 3932 50  0000 L CNN
F 2 "" H 7440 4227 50  0000 L CIN
F 3 "" H 7360 4237 50  0000 L CNN
	1    7500 4250
	1    0    0    -1  
$EndComp
$Comp
L +10V #PWR?
U 1 1 56AC567E
P 3250 1850
F 0 "#PWR?" H 3250 1700 50  0001 C CNN
F 1 "+10V" H 3250 1990 50  0000 C CNN
F 2 "" H 3250 1850 50  0000 C CNN
F 3 "" H 3250 1850 50  0000 C CNN
	1    3250 1850
	1    0    0    -1  
$EndComp
Text Label 3450 2850 3    60   ~ 0
BUS_UNKNOWN
$Comp
L R R?
U 1 1 56B14552
P 7150 1850
F 0 "R?" V 7230 1850 50  0000 C CNN
F 1 "10K" V 7150 1850 50  0000 C CNN
F 2 "" V 7080 1850 50  0000 C CNN
F 3 "" H 7150 1850 50  0000 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56B1472E
P 7350 1850
F 0 "R?" V 7430 1850 50  0000 C CNN
F 1 "10K" V 7350 1850 50  0000 C CNN
F 2 "" V 7280 1850 50  0000 C CNN
F 3 "" H 7350 1850 50  0000 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B14A8D
P 6000 1600
F 0 "C?" H 6025 1700 50  0000 L CNN
F 1 "C" H 6025 1500 50  0000 L CNN
F 2 "" H 6038 1450 50  0000 C CNN
F 3 "" H 6000 1600 50  0000 C CNN
	1    6000 1600
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56B19F78
P 750 1250
F 0 "R?" V 830 1250 50  0000 C CNN
F 1 "4.7K" V 750 1250 50  0000 C CNN
F 2 "" V 680 1250 50  0000 C CNN
F 3 "" H 750 1250 50  0000 C CNN
	1    750  1250
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 56B1A049
P 1150 1850
F 0 "Q?" H 1450 1900 50  0000 R CNN
F 1 "Q_NPN_BCE" H 1750 1800 50  0000 R CNN
F 2 "" H 1350 1950 50  0000 C CNN
F 3 "" H 1150 1850 50  0000 C CNN
	1    1150 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56B1A3F9
P 1250 2600
F 0 "#PWR?" H 1250 2350 50  0001 C CNN
F 1 "GND" H 1250 2450 50  0000 C CNN
F 2 "" H 1250 2600 50  0000 C CNN
F 3 "" H 1250 2600 50  0000 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56B1A53B
P 2650 2200
F 0 "R?" V 2730 2200 50  0000 C CNN
F 1 "1K" V 2650 2200 50  0000 C CNN
F 2 "" V 2580 2200 50  0000 C CNN
F 3 "" H 2650 2200 50  0000 C CNN
	1    2650 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56B1AB7C
P 2250 2750
F 0 "R?" V 2330 2750 50  0000 C CNN
F 1 "470K" V 2250 2750 50  0000 C CNN
F 2 "" V 2180 2750 50  0000 C CNN
F 3 "" H 2250 2750 50  0000 C CNN
	1    2250 2750
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 56B1B006
P 1550 2300
F 0 "C?" H 1575 2400 50  0000 L CNN
F 1 "C" H 1575 2200 50  0000 L CNN
F 2 "" H 1588 2150 50  0000 C CNN
F 3 "" H 1550 2300 50  0000 C CNN
	1    1550 2300
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 56B268C2
P 1900 2600
F 0 "#PWR?" H 1900 2450 50  0001 C CNN
F 1 "VCC" H 1900 2750 50  0000 C CNN
F 2 "" H 1900 2600 50  0000 C CNN
F 3 "" H 1900 2600 50  0000 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L +10V #PWR?
U 1 1 56B414E6
P 1250 4350
F 0 "#PWR?" H 1250 4200 50  0001 C CNN
F 1 "+10V" H 1250 4490 50  0000 C CNN
F 2 "" H 1250 4350 50  0000 C CNN
F 3 "" H 1250 4350 50  0000 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56B41625
P 1250 5450
F 0 "#PWR?" H 1250 5200 50  0001 C CNN
F 1 "GND" H 1250 5300 50  0000 C CNN
F 2 "" H 1250 5450 50  0000 C CNN
F 3 "" H 1250 5450 50  0000 C CNN
	1    1250 5450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B4165B
P 1250 5050
F 0 "C?" H 1275 5150 50  0000 L CNN
F 1 "C" H 1275 4950 50  0000 L CNN
F 2 "" H 1288 4900 50  0000 C CNN
F 3 "" H 1250 5050 50  0000 C CNN
	1    1250 5050
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 56B41B52
P 1800 4750
F 0 "D?" H 1800 4850 50  0000 C CNN
F 1 "D" H 1800 4650 50  0000 C CNN
F 2 "" H 1800 4750 50  0000 C CNN
F 3 "" H 1800 4750 50  0000 C CNN
	1    1800 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 2800 4950 2600
Wire Wire Line
	4650 2600 4650 4450
Wire Wire Line
	4650 4450 4550 4450
Wire Wire Line
	4550 4450 4550 4700
Wire Wire Line
	4850 4450 4850 4700
Wire Wire Line
	4850 4450 4750 4450
Wire Wire Line
	4750 4450 4750 2600
Wire Wire Line
	4550 2600 4550 4400
Wire Wire Line
	4550 4400 4350 4400
Wire Wire Line
	4350 4400 4350 4350
Wire Wire Line
	4250 2600 4250 3300
Wire Wire Line
	4150 2600 4150 2800
Wire Wire Line
	4150 3100 4150 3300
Wire Wire Line
	4950 3100 4950 3300
Wire Wire Line
	3550 2600 3550 2850
Wire Wire Line
	3350 2600 3350 2850
Wire Wire Line
	3450 1800 3450 2100
Wire Wire Line
	4150 1900 4150 2100
Wire Wire Line
	2900 1700 2900 1600
Wire Wire Line
	2900 1600 3150 1600
Wire Wire Line
	3150 1600 3150 2100
Wire Wire Line
	3350 1300 3350 2100
Wire Wire Line
	3550 2100 3550 1450
Wire Wire Line
	4450 2100 4450 1850
Wire Wire Line
	4350 2100 4350 1850
Wire Wire Line
	5700 1600 5700 2600
Connection ~ 5700 2250
Connection ~ 5700 2350
Wire Wire Line
	7100 2250 8200 2250
Wire Wire Line
	8200 2250 8200 2350
Wire Wire Line
	7100 2450 7650 2450
Wire Wire Line
	7100 2550 7650 2550
Wire Wire Line
	3650 4150 3900 4150
Wire Wire Line
	3950 4950 3950 5250
Wire Wire Line
	6600 4400 6350 4400
Wire Wire Line
	6350 4400 6350 4550
Wire Wire Line
	6900 4400 7100 4400
Wire Wire Line
	3250 2100 3250 1850
Wire Wire Line
	3450 2600 3450 2850
Wire Wire Line
	6400 1400 6400 1850
Wire Wire Line
	6150 1600 7350 1600
Connection ~ 6400 1600
Wire Wire Line
	7150 2000 7150 2450
Connection ~ 7150 2450
Wire Wire Line
	7150 1700 7150 1600
Wire Wire Line
	7350 1600 7350 1700
Connection ~ 7150 1600
Wire Wire Line
	7350 2000 7350 2550
Connection ~ 7350 2550
Wire Wire Line
	5850 1600 5700 1600
Connection ~ 5700 2150
Connection ~ 3450 2750
Wire Wire Line
	750  1400 750  1850
Wire Wire Line
	750  700  750  1100
Wire Wire Line
	750  1850 950  1850
Wire Wire Line
	1250 2050 1250 2600
Wire Wire Line
	1250 1650 1250 1350
Wire Wire Line
	2400 2750 3450 2750
Wire Wire Line
	1900 1350 1900 2300
Connection ~ 1250 2300
Connection ~ 2650 2750
Wire Wire Line
	2100 2750 1900 2750
Wire Wire Line
	1900 2750 1900 2600
Wire Wire Line
	2650 2350 2650 2750
Wire Wire Line
	1250 2300 1400 2300
Wire Wire Line
	1900 2300 1700 2300
Wire Wire Line
	2650 1750 2650 2050
Wire Wire Line
	1250 1350 1900 1350
Wire Wire Line
	2650 1750 1900 1750
Connection ~ 1900 1750
Wire Wire Line
	4850 700  4850 2100
Wire Wire Line
	4750 2100 4750 1800
Wire Wire Line
	4750 1800 5250 1800
Wire Wire Line
	750  700  4850 700 
Wire Wire Line
	5250 1800 5250 1900
Wire Wire Line
	1250 4350 1250 4900
Wire Wire Line
	1250 5200 1250 5450
Wire Wire Line
	1250 4750 1650 4750
Connection ~ 1250 4750
Wire Wire Line
	3650 4050 4350 4050
Wire Wire Line
	4350 4050 4350 2600
$Comp
L MAX810 U?
U 1 1 56BAA88A
P 8850 3450
F 0 "U?" H 8850 3450 60  0000 C CNN
F 1 "MAX810" H 8850 3450 60  0000 C CNN
F 2 "" H 8850 3450 60  0000 C CNN
F 3 "" H 8850 3450 60  0000 C CNN
	1    8850 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
