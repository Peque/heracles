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
EELAYER 27 0
EELAYER END
$Descr User 8268 5827
encoding utf-8
Sheet 8 9
Title "Speaker"
Date "25 aug 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SMT-0540-S-R SP?
U 1 1 5218E685
P 5400 2250
F 0 "SP?" H 5550 1850 70  0000 C CNN
F 1 "SMT-0540-S-R" H 5350 2600 70  0000 C CNN
F 2 "SMT-0540-S-R" H 5400 2250 60  0001 C CNN
F 3 "~" H 5400 2250 60  0000 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
Text HLabel 1700 2600 0    60   Input ~ 0
SIGNAL
Text HLabel 1700 2950 0    60   UnSpc ~ 0
GND
Text HLabel 1700 2850 0    60   UnSpc ~ 0
VSPEAKER
Text Notes 5100 4350 0    60   ~ 0
* Square wave (duty 1/2) is always recommended.
$Comp
L R R?
U 1 1 5218FB95
P 3600 3350
F 0 "R?" V 3680 3350 40  0000 C CNN
F 1 "47k" V 3607 3351 40  0000 C CNN
F 2 "SM0603" V 3530 3350 30  0001 C CNN
F 3 "~" H 3600 3350 30  0000 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2950 2100 2950
Wire Wire Line
	1700 2600 2100 2600
Text Label 2100 2600 2    60   ~ 0
SIGNAL
Text Label 2200 2850 2    60   ~ 0
VSPEAKER
Text Label 2100 2950 2    60   ~ 0
GND
Wire Wire Line
	1700 2850 2200 2850
Text Label 4250 1400 3    60   ~ 0
VSPEAKER
Text Label 3100 3000 0    60   ~ 0
SIGNAL
Wire Wire Line
	4250 1950 4750 1950
Wire Wire Line
	4750 1950 4750 2150
Wire Wire Line
	4750 2150 5100 2150
Connection ~ 4250 1950
Wire Wire Line
	5100 2350 4750 2350
Wire Wire Line
	4750 2350 4750 2550
Text Label 4600 3700 2    60   ~ 0
GND
Wire Wire Line
	4250 2050 4250 1400
$Comp
L MOS_N Q?
U 1 1 5218EE5A
P 4150 3000
F 0 "Q?" H 4160 3170 60  0000 R CNN
F 1 "FDV301N" H 4160 2850 60  0000 R CNN
F 2 "SOT-23" H 4150 3000 60  0001 C CNN
F 3 "~" H 4150 3000 60  0000 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2800 4250 2450
Wire Wire Line
	3600 3100 3600 3000
Connection ~ 3600 3000
Wire Wire Line
	3600 3600 3600 3700
Wire Wire Line
	3600 3700 4600 3700
Wire Wire Line
	4250 3200 4250 3700
Connection ~ 4250 3700
Wire Wire Line
	3950 3000 3100 3000
NoConn ~ 5400 2550
Wire Wire Line
	4750 2550 4250 2550
Connection ~ 4250 2550
$Comp
L DIODESCH D?
U 1 1 521962A3
P 4250 2250
F 0 "D?" H 4250 2350 40  0000 C CNN
F 1 "CDBU0530" H 4250 2150 40  0000 C CNN
F 2 "SM0603" H 4250 2250 60  0001 C CNN
F 3 "" H 4250 2250 60  0000 C CNN
	1    4250 2250
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
