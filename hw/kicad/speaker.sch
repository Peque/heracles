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
Sheet 8 8
Title "Speaker"
Date "24 aug 2013"
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
P 4600 3050
F 0 "SP?" H 4750 2650 70  0000 C CNN
F 1 "SMT-0540-S-R" H 4550 3400 70  0000 C CNN
F 2 "SMT-0540-S-R" H 4600 3050 60  0001 C CNN
F 3 "~" H 4600 3050 60  0000 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L MOS_P Q?
U 1 1 5218F9EE
P 3550 2100
F 0 "Q?" H 3550 2290 60  0000 R CNN
F 1 "Si2365EDS" H 3550 1920 60  0000 R CNN
F 2 "SOT-23" H 3550 2100 60  0001 C CNN
F 3 "~" H 3550 2100 60  0000 C CNN
	1    3550 2100
	-1   0    0    1   
$EndComp
Text HLabel 1800 2600 0    60   Input ~ 0
SIGNAL
Text HLabel 1800 3050 0    60   UnSpc ~ 0
GND
Text HLabel 1800 2850 0    60   UnSpc ~ 0
VSPEAKER
Text Notes 4750 4200 0    60   ~ 0
* Square wave (duty 1/2) is always recommended.
$Comp
L R R?
U 1 1 5218FB95
P 4300 1750
F 0 "R?" V 4380 1750 40  0000 C CNN
F 1 "47k" V 4307 1751 40  0000 C CNN
F 2 "SM0603" V 4230 1750 30  0001 C CNN
F 3 "~" H 4300 1750 30  0000 C CNN
	1    4300 1750
	1    0    0    -1  
$EndComp
Text HLabel 1800 2950 0    60   UnSpc ~ 0
3V3
Wire Wire Line
	1800 2950 2200 2950
Wire Wire Line
	1800 3050 2200 3050
Wire Wire Line
	1800 2600 2200 2600
Text Label 2200 2600 2    60   ~ 0
SIGNAL
Text Label 2300 2850 2    60   ~ 0
VSPEAKER
Text Label 2200 2950 2    60   ~ 0
3V3
Text Label 2200 3050 2    60   ~ 0
GND
Wire Wire Line
	1800 2850 2300 2850
Text Label 3450 1350 3    60   ~ 0
VSPEAKER
Wire Wire Line
	3450 1900 3450 1350
Wire Wire Line
	4300 2000 4300 2100
Connection ~ 4300 2100
Wire Wire Line
	4300 1500 4300 1200
Text Label 4300 1200 3    60   ~ 0
3V3
Text Label 4750 2100 2    60   ~ 0
SIGNAL
Wire Wire Line
	3750 2100 4750 2100
$Comp
L ZENER D?
U 1 1 5218FC51
P 3450 3050
F 0 "D?" H 3450 3150 50  0000 C CNN
F 1 "CD0603-Z3" H 3450 2950 40  0000 C CNN
F 2 "SM0603" H 3450 3050 60  0001 C CNN
F 3 "~" H 3450 3050 60  0000 C CNN
	1    3450 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 2850 3450 2300
Wire Wire Line
	3450 2750 3950 2750
Wire Wire Line
	3950 2750 3950 2950
Wire Wire Line
	3950 2950 4300 2950
Connection ~ 3450 2750
Wire Wire Line
	4300 3150 3950 3150
Wire Wire Line
	3950 3150 3950 3350
Wire Wire Line
	3950 3350 3450 3350
Wire Wire Line
	3450 3250 3450 3600
Text Label 3450 3600 1    60   ~ 0
GND
$EndSCHEMATC
