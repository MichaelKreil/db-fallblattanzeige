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
Sheet 3 3
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
L CONN_02X10 P5
U 1 1 56ABCFC0
P 5250 2000
F 0 "P5" H 5250 2550 50  0000 C CNN
F 1 "CONN_02X10" V 5250 2000 50  0000 C CNN
F 2 "" H 5250 800 50  0000 C CNN
F 3 "" H 5250 800 50  0000 C CNN
	1    5250 2000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR032
U 1 1 56ABD0B5
P 6050 1650
F 0 "#PWR032" H 6050 1400 50  0001 C CNN
F 1 "GND" H 6050 1500 50  0000 C CNN
F 2 "" H 6050 1650 50  0000 C CNN
F 3 "" H 6050 1650 50  0000 C CNN
	1    6050 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P6
U 1 1 56ABD109
P 5350 3300
F 0 "P6" H 5350 3600 50  0000 C CNN
F 1 "CONN_02X05" H 5350 3000 50  0000 C CNN
F 2 "" H 5350 2100 50  0000 C CNN
F 3 "" H 5350 2100 50  0000 C CNN
	1    5350 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR033
U 1 1 56ABD1AC
P 4700 3050
F 0 "#PWR033" H 4700 2800 50  0001 C CNN
F 1 "GND" H 4700 2900 50  0000 C CNN
F 2 "" H 4700 3050 50  0000 C CNN
F 3 "" H 4700 3050 50  0000 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR034
U 1 1 56ABD1D0
P 5350 2700
F 0 "#PWR034" H 5350 2550 50  0001 C CNN
F 1 "VCC" H 5350 2850 50  0000 C CNN
F 2 "" H 5350 2700 50  0000 C CNN
F 3 "" H 5350 2700 50  0000 C CNN
	1    5350 2700
	1    0    0    -1  
$EndComp
$Comp
L +10V #PWR035
U 1 1 56ABE249
P 4350 1950
F 0 "#PWR035" H 4350 1800 50  0001 C CNN
F 1 "+10V" H 4350 2090 50  0000 C CNN
F 2 "" H 4350 1950 50  0000 C CNN
F 3 "" H 4350 1950 50  0000 C CNN
	1    4350 1950
	1    0    0    -1  
$EndComp
$Comp
L 42VAC #PWR036
U 1 1 56ABE3C9
P 3950 1850
F 0 "#PWR036" H 3950 1700 50  0001 C CNN
F 1 "42VAC" H 3725 1850 50  0000 C CNN
F 2 "" H 3950 1850 50  0000 C CNN
F 3 "" H 3950 1850 50  0000 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
$Comp
L 74HC165 U5
U 1 1 56ABF20D
P 7050 3300
F 0 "U5" H 7050 2800 60  0000 C CNN
F 1 "74HC165" H 7050 3800 60  0000 C CNN
F 2 "" H 7050 3300 60  0000 C CNN
F 3 "" H 7050 3300 60  0000 C CNN
	1    7050 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 56ABF55E
P 6350 3800
F 0 "#PWR037" H 6350 3550 50  0001 C CNN
F 1 "GND" H 6350 3650 50  0000 C CNN
F 2 "" H 6350 3800 50  0000 C CNN
F 3 "" H 6350 3800 50  0000 C CNN
	1    6350 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR038
U 1 1 56ABF5AA
P 7750 2750
F 0 "#PWR038" H 7750 2600 50  0001 C CNN
F 1 "VCC" H 7750 2900 50  0000 C CNN
F 2 "" H 7750 2750 50  0000 C CNN
F 3 "" H 7750 2750 50  0000 C CNN
	1    7750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1750 5700 1750
Connection ~ 5600 1750
Wire Wire Line
	5600 1750 5600 1450
Wire Wire Line
	5600 1450 6050 1450
Wire Wire Line
	4800 1750 5000 1750
Connection ~ 4900 1750
Wire Wire Line
	5150 3050 5150 2900
Wire Wire Line
	5150 2900 4700 2900
Wire Wire Line
	4700 2900 4700 3050
Wire Wire Line
	5350 3050 5350 2700
Wire Wire Line
	5100 1750 5300 1750
Connection ~ 5200 1750
Wire Wire Line
	3950 2250 5000 2250
Connection ~ 4900 2250
Wire Wire Line
	5100 2250 5300 2250
Connection ~ 5200 2250
Wire Wire Line
	4900 1750 4900 3700
Wire Wire Line
	4900 3700 5150 3700
Wire Wire Line
	5150 3700 5150 3550
Wire Wire Line
	5250 3550 5250 3650
Wire Wire Line
	5250 3650 4950 3650
Wire Wire Line
	4950 3650 4950 2350
Wire Wire Line
	4950 2350 5200 2350
Wire Wire Line
	5200 2350 5200 1450
Wire Wire Line
	4800 1750 4800 2250
Wire Wire Line
	5000 2250 5000 1750
Wire Wire Line
	5100 1750 5100 2250
Wire Wire Line
	5300 2250 5300 1750
Wire Wire Line
	5400 2450 5400 1600
Wire Wire Line
	5400 2250 5500 2250
Wire Wire Line
	5400 1600 4550 1600
Wire Wire Line
	4550 1600 4550 2450
Wire Wire Line
	4550 2450 5400 2450
Connection ~ 5400 2250
Connection ~ 5400 1750
Wire Wire Line
	4350 1950 4350 2000
Connection ~ 4550 2000
Wire Wire Line
	4350 2000 4550 2000
Wire Wire Line
	3950 1750 3950 1450
Wire Wire Line
	3950 1450 5200 1450
Wire Wire Line
	3950 1950 3950 2250
Connection ~ 4800 2250
Wire Wire Line
	5250 3050 5250 2450
Connection ~ 5250 2450
Wire Wire Line
	6050 1450 6050 1650
Wire Wire Line
	6450 3650 6350 3650
Wire Wire Line
	6350 3650 6350 3800
Wire Wire Line
	7650 2950 7750 2950
Wire Wire Line
	7750 2950 7750 2750
Wire Wire Line
	7650 3450 7750 3450
Wire Wire Line
	7650 3350 7750 3350
Wire Wire Line
	7650 3250 7750 3250
Wire Wire Line
	7650 3150 7750 3150
Wire Wire Line
	6450 3150 6300 3150
Wire Wire Line
	6450 3250 6300 3250
Wire Wire Line
	6450 3350 6300 3350
Wire Wire Line
	6450 3450 6300 3450
Text Label 7750 3450 0    60   ~ 0
SR_D0
Text Label 7750 3350 0    60   ~ 0
SR_D1
Text Label 7750 3250 0    60   ~ 0
SR_D2
Text Label 7750 3150 0    60   ~ 0
SR_D3
Text Label 6300 3150 2    60   ~ 0
SR_D4
Text Label 6300 3250 2    60   ~ 0
SR_D5
Text Label 6300 3350 2    60   ~ 0
SR_D6
Text Label 6300 3450 2    60   ~ 0
SR_D7
Wire Wire Line
	6450 3050 6300 3050
Text Label 6300 3050 2    60   ~ 0
SR_CP
Text Label 6300 2950 2    60   ~ 0
~SR_LATCH
Wire Wire Line
	6450 2950 6300 2950
Wire Wire Line
	7650 3650 7750 3650
Text Label 7750 3650 0    60   ~ 0
SR_DATA
NoConn ~ 6450 3550
$Comp
L GND #PWR039
U 1 1 56AC0847
P 8300 3150
F 0 "#PWR039" H 8300 2900 50  0001 C CNN
F 1 "GND" H 8300 3000 50  0000 C CNN
F 2 "" H 8300 3150 50  0000 C CNN
F 3 "" H 8300 3150 50  0000 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3050 8300 3050
Wire Wire Line
	8300 3050 8300 3150
Text Label 5450 2950 1    60   ~ 0
SR_CP
Wire Wire Line
	5450 3050 5450 2950
Wire Wire Line
	5550 2650 5550 3050
Text Label 5350 3650 3    60   ~ 0
SR_DATA
Wire Wire Line
	5350 3550 5350 3650
Wire Wire Line
	5450 3550 5450 4200
Wire Wire Line
	5550 3550 5550 3650
Text Label 5550 3650 3    60   ~ 0
~SR_LATCH
Text Label 5800 2700 0    60   ~ 0
BUS_UNKNOWN
Wire Wire Line
	5700 2250 5700 4200
Wire Wire Line
	5600 2650 5550 2650
Wire Wire Line
	5600 2250 5600 2650
Wire Wire Line
	5700 4200 5450 4200
Text Label 5800 2550 0    60   ~ 0
BUS_DATA
Wire Wire Line
	5600 2550 5800 2550
Connection ~ 5600 2550
Wire Wire Line
	5800 2700 5700 2700
Connection ~ 5700 2700
$EndSCHEMATC
