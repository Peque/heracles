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
LIBS:special
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
LIBS:reset
LIBS:heracles-cache
EELAYER 27 0
EELAYER END
$Descr User 8268 5827
encoding utf-8
Sheet 9 10
Title "Accelerometer"
Date "13 dec 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MMA6341L U?
U 1 1 5218F95C
P 4600 2750
F 0 "U?" H 5150 3400 60  0000 C CNN
F 1 "MMA6341L" H 4250 3400 60  0000 C CNN
F 2 "LGA-14" H 4600 2750 60  0001 C CNN
F 3 "" H 4600 2750 60  0000 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5218F96B
P 5950 2250
F 0 "C?" H 5950 2350 40  0000 L CNN
F 1 "3.3nF" H 5956 2165 40  0000 L CNN
F 2 "SM0603" H 5988 2100 30  0001 C CNN
F 3 "~" H 5950 2250 60  0000 C CNN
	1    5950 2250
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5218F990
P 5950 2550
F 0 "C?" H 5950 2650 40  0000 L CNN
F 1 "3.3nF" H 5956 2465 40  0000 L CNN
F 2 "SM0603" H 5988 2400 30  0001 C CNN
F 3 "~" H 5950 2550 60  0000 C CNN
	1    5950 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2350 5550 2350
Wire Wire Line
	5650 1850 5650 2350
Wire Wire Line
	5650 2250 5750 2250
Wire Wire Line
	5550 2450 5650 2450
Wire Wire Line
	5650 2450 5650 2950
Wire Wire Line
	5650 2550 5750 2550
Wire Wire Line
	6150 2250 6250 2250
Wire Wire Line
	6250 2250 6250 2550
Wire Wire Line
	6250 2550 6150 2550
Wire Wire Line
	6250 2400 6550 2400
Connection ~ 6250 2400
Text Label 6550 2400 2    60   ~ 0
GND
NoConn ~ 4900 3650
NoConn ~ 4800 3650
NoConn ~ 4700 3650
NoConn ~ 4600 3650
NoConn ~ 4500 3650
NoConn ~ 4400 3650
NoConn ~ 4300 3650
$Comp
L C C?
U 1 1 5219064F
P 3050 2850
F 0 "C?" H 3050 2950 40  0000 L CNN
F 1 "3.3nF" H 3056 2765 40  0000 L CNN
F 2 "SM0603" H 3088 2700 30  0001 C CNN
F 3 "~" H 3050 2850 60  0000 C CNN
	1    3050 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2650 3050 2600
Wire Wire Line
	2650 2600 3400 2600
Wire Wire Line
	3400 2600 3400 2750
Wire Wire Line
	3400 2750 3700 2750
Wire Wire Line
	3700 2950 3400 2950
Wire Wire Line
	3400 3100 3400 2850
Wire Wire Line
	2650 3100 3400 3100
Wire Wire Line
	3050 3100 3050 3050
Wire Wire Line
	3400 2850 3700 2850
Connection ~ 3400 2950
Connection ~ 3050 2600
Connection ~ 3050 3100
Wire Wire Line
	3700 2450 3200 2450
Wire Wire Line
	3200 2350 3700 2350
Text Label 2650 3100 0    60   ~ 0
GND
Text Label 2650 2600 0    60   ~ 0
3V3
Text Label 3200 2450 0    60   ~ 0
g-Select
Text Label 3200 2350 0    60   ~ 0
~SLEEP
Text HLabel 1500 2200 2    60   Output ~ 0
Xout
Text HLabel 1500 2300 2    60   Output ~ 0
Yout
Text HLabel 1250 2500 0    60   Input ~ 0
~SLEEP
Text HLabel 1250 2600 0    60   Input ~ 0
g-Select
Text HLabel 1250 2800 0    60   UnSpc ~ 0
3V3
Text HLabel 1250 2900 0    60   UnSpc ~ 0
GND
Wire Wire Line
	1250 2500 1750 2500
Wire Wire Line
	1250 2600 1750 2600
Wire Wire Line
	1250 2800 1750 2800
Wire Wire Line
	1250 2900 1750 2900
Wire Wire Line
	1500 2300 1000 2300
Wire Wire Line
	1500 2200 1000 2200
Connection ~ 5650 2250
Connection ~ 5650 2550
Text Label 5650 1850 3    60   ~ 0
Xout
Text Label 5650 2950 1    60   ~ 0
Yout
Text Label 1000 2300 0    60   ~ 0
Yout
Text Label 1000 2200 0    60   ~ 0
Xout
Text Label 1750 2500 2    60   ~ 0
~SLEEP
Text Label 1750 2600 2    60   ~ 0
g-Select
Text Label 1750 2800 2    60   ~ 0
3V3
Text Label 1750 2900 2    60   ~ 0
GND
$EndSCHEMATC
