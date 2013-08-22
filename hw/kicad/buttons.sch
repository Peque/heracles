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
Sheet 5 6
Title "Buttons"
Date "22 aug 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1600 2050 0    60   Output ~ 0
~RST
Text HLabel 1600 2200 0    60   Output ~ 0
USR
Text HLabel 1600 2750 0    60   UnSpc ~ 0
3V3
Text HLabel 1600 2900 0    60   UnSpc ~ 0
GND
Wire Wire Line
	1600 2050 2150 2050
Wire Wire Line
	1600 2200 2150 2200
Wire Wire Line
	1600 2900 2150 2900
Wire Wire Line
	1600 2750 2150 2750
Text Label 2150 2050 2    60   ~ 0
~RST
Text Label 2150 2200 2    60   ~ 0
USR
Text Label 2150 2750 2    60   ~ 0
3V3
Text Label 2150 2900 2    60   ~ 0
GND
$Comp
L SW_PUSH SW?
U 1 1 52162412
P 4200 2800
F 0 "SW?" H 4350 2910 50  0000 C CNN
F 1 "B3U-1000P" H 4200 2720 50  0000 C CNN
F 2 "SM1206" H 4200 2800 60  0001 C CNN
F 3 "~" H 4200 2800 60  0000 C CNN
	1    4200 2800
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 52162460
P 3550 2800
F 0 "C?" H 3550 2900 40  0000 L CNN
F 1 "100nF" H 3556 2715 40  0000 L CNN
F 2 "SM0603" H 3588 2650 30  0001 C CNN
F 3 "~" H 3550 2800 60  0000 C CNN
	1    3550 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5216248E
P 4200 1950
F 0 "R?" V 4280 1950 40  0000 C CNN
F 1 "100k" V 4207 1951 40  0000 C CNN
F 2 "SM0603" V 4130 1950 30  0001 C CNN
F 3 "~" H 4200 1950 30  0000 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 521624B1
P 6050 1850
F 0 "SW?" H 6200 1960 50  0000 C CNN
F 1 "B3U-1000P" H 6050 1770 50  0000 C CNN
F 2 "SM1206" H 6050 1850 60  0001 C CNN
F 3 "~" H 6050 1850 60  0000 C CNN
	1    6050 1850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 521624B7
P 5400 1850
F 0 "C?" H 5400 1950 40  0000 L CNN
F 1 "100nF" H 5406 1765 40  0000 L CNN
F 2 "SM0603" H 5438 1700 30  0001 C CNN
F 3 "~" H 5400 1850 60  0000 C CNN
	1    5400 1850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 521624BD
P 6050 2700
F 0 "R?" V 6130 2700 40  0000 C CNN
F 1 "100k" V 6057 2701 40  0000 C CNN
F 2 "SM0603" V 5980 2700 30  0001 C CNN
F 3 "~" H 6050 2700 30  0000 C CNN
	1    6050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2500 4200 2200
Wire Wire Line
	6050 2150 6050 2450
Wire Wire Line
	3550 3000 3550 3250
Wire Wire Line
	4200 3100 4200 3250
Connection ~ 4200 3250
Wire Wire Line
	3550 3250 4500 3250
Wire Wire Line
	4200 2350 3250 2350
Connection ~ 4200 2350
Wire Wire Line
	3550 2600 3550 2350
Connection ~ 3550 2350
Wire Wire Line
	4200 1700 4200 1400
Wire Wire Line
	5100 2300 6050 2300
Wire Wire Line
	5400 2300 5400 2050
Connection ~ 6050 2300
Connection ~ 5400 2300
Wire Wire Line
	5400 1400 6350 1400
Wire Wire Line
	5400 1400 5400 1650
Connection ~ 6050 1400
Wire Wire Line
	6050 2950 6050 3250
Wire Wire Line
	6050 1550 6050 1400
Text Label 4200 1400 3    60   ~ 0
3V3
Text Label 6350 1400 2    60   ~ 0
3V3
Text Label 4500 3250 2    60   ~ 0
GND
Text Label 6050 3250 1    60   ~ 0
GND
Text Label 3250 2350 0    60   ~ 0
~RST
Text Label 5100 2300 0    60   ~ 0
USR
Text Notes 4250 4000 0    60   ~ 0
* These are the board integrated buttons. The reset button\n  is set to low when pressed. The user button is set to high\n  when pressed.\n* The condenser are used for debounce.
$EndSCHEMATC
