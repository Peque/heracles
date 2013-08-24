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
Sheet 4 8
Title ""
Date "24 aug 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2500 2150 3450 2150
Text HLabel 4650 2550 2    60   UnSpc ~ 0
GND
Text HLabel 2500 2150 0    60   Output ~ 0
OSC_IN
Text HLabel 2500 2950 0    60   Input ~ 0
OSC_OUT
Wire Wire Line
	2500 2950 3450 2950
$Comp
L C 18pF
U 1 1 52129888
P 3650 2150
F 0 "18pF" H 3650 2250 40  0000 L CNN
F 1 "C" H 3656 2065 40  0000 L CNN
F 2 "SM0603" H 3688 2000 30  0001 C CNN
F 3 "~" H 3650 2150 60  0000 C CNN
	1    3650 2150
	0    -1   -1   0   
$EndComp
$Comp
L C 18pF
U 1 1 52129895
P 3650 2950
F 0 "18pF" H 3650 3050 40  0000 L CNN
F 1 "C" H 3656 2865 40  0000 L CNN
F 2 "SM0603" H 3688 2800 30  0001 C CNN
F 3 "~" H 3650 2950 60  0000 C CNN
	1    3650 2950
	0    -1   -1   0   
$EndComp
$Comp
L CRYSTAL X?
U 1 1 521298E8
P 3050 2550
F 0 "X?" H 3050 2700 60  0000 C CNN
F 1 "8MHz" H 3050 2400 60  0000 C CNN
F 2 "~" H 3050 2550 60  0000 C CNN
F 3 "~" H 3050 2550 60  0000 C CNN
	1    3050 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 2850 3050 2950
Connection ~ 3050 2950
Wire Wire Line
	3050 2150 3050 2250
Connection ~ 3050 2150
Wire Wire Line
	3850 2150 4200 2150
Wire Wire Line
	4200 2150 4200 2950
Wire Wire Line
	4200 2950 3850 2950
Wire Wire Line
	4200 2550 4650 2550
Connection ~ 4200 2550
Text Notes 4150 3900 0    60   ~ 0
* It is recommended to use high-quality external ceramic capacitors\nin the 5 pF to 25 pF range (typ.), designed for high-frequency\napplications,
$EndSCHEMATC
