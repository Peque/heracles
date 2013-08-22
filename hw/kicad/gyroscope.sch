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
Sheet 6 7
Title "Gyroscope"
Date "22 aug 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LY330ALH U?
U 1 1 5216465D
P 5050 2250
F 0 "U?" H 5350 1800 60  0000 C CNN
F 1 "LY330ALH" H 5050 2700 60  0000 C CNN
F 2 "LGA-10" H 5050 2250 60  0001 C CNN
F 3 "" H 5050 2250 60  0000 C CNN
	1    5050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2100 4400 2100
Wire Wire Line
	5700 2100 6100 2100
Wire Wire Line
	5700 2200 6100 2200
Wire Wire Line
	5700 2400 6100 2400
NoConn ~ 5000 2950
NoConn ~ 5100 2950
$Comp
L C C?
U 1 1 52164767
P 3000 2650
F 0 "C?" H 3000 2750 40  0000 L CNN
F 1 "470nF" H 3006 2565 40  0000 L CNN
F 2 "SM0603" H 3038 2500 30  0001 C CNN
F 3 "~" H 3000 2650 60  0000 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52164776
P 3800 2650
F 0 "C?" H 3800 2750 40  0000 L CNN
F 1 "10nF" H 3806 2565 40  0000 L CNN
F 2 "SM0603" H 3838 2500 30  0001 C CNN
F 3 "~" H 3800 2650 60  0000 C CNN
	1    3800 2650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52164785
P 3400 3000
F 0 "R?" V 3480 3000 40  0000 C CNN
F 1 "10k" V 3407 3001 40  0000 C CNN
F 2 "SM0603" V 3330 3000 30  0001 C CNN
F 3 "~" H 3400 3000 30  0000 C CNN
	1    3400 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2850 3000 3000
Wire Wire Line
	3000 3000 3150 3000
Wire Wire Line
	3800 3000 3800 2850
Connection ~ 3800 3000
Wire Wire Line
	3000 2300 3000 2450
Wire Wire Line
	3800 2450 3800 2300
Connection ~ 3800 2300
Wire Wire Line
	4400 2200 4000 2200
Wire Wire Line
	3650 3000 4200 3000
Text Notes 4100 3950 0    60   ~ 0
* There are four operating modes: normal, sleep, self-test\n  and power-down. We are setting ST pin to 0, allowing only\n  normal/sleep modes (user selectable with "Sleep/PD" pin).
Text Label 6100 2200 2    60   ~ 0
SLEEP
Text Label 4200 3000 2    60   ~ 0
GND
Text Label 4000 2200 0    60   ~ 0
GND
Wire Wire Line
	4400 2400 4000 2400
Text Label 4000 2400 0    60   ~ 0
GND
Wire Wire Line
	4400 2300 3000 2300
Text Label 4000 2100 0    60   ~ 0
3V3
Text Label 6100 2100 2    60   ~ 0
3V3
NoConn ~ 5700 2300
Text Label 6100 2400 2    60   ~ 0
OUTZ
Text HLabel 1600 2200 2    60   Output ~ 0
OUTZ
Wire Wire Line
	1600 2200 1250 2200
Text Label 1250 2200 0    60   ~ 0
OUTZ
Text HLabel 1550 2500 0    60   Input ~ 0
SLEEP
Wire Wire Line
	1550 2500 1900 2500
Text Label 1900 2500 2    60   ~ 0
SLEEP
Text HLabel 1550 2900 0    60   UnSpc ~ 0
3V3
Text HLabel 1550 3050 0    60   UnSpc ~ 0
GND
Wire Wire Line
	1550 2900 1900 2900
Wire Wire Line
	1550 3050 1900 3050
Text Label 1900 3050 2    60   ~ 0
GND
Text Label 1900 2900 2    60   ~ 0
3V3
$EndSCHEMATC
