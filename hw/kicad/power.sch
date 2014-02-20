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
$Descr A4 11693 8268
encoding utf-8
Sheet 11 11
Title ""
Date "20 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TPS62056 T1
U 1 1 52AC5779
P 3950 1300
F 0 "T1" H 3700 1650 60  0000 C CNN
F 1 "TPS62056" H 3950 900 60  0000 C CNN
F 2 "MSOP10" H 3900 1700 60  0000 C CNN
F 3 "~" H 3900 1700 60  0000 C CNN
	1    3950 1300
	1    0    0    -1  
$EndComp
Text Label 2100 1100 0    60   ~ 0
VIN
$Comp
L C C17
U 1 1 52AC605B
P 2400 1800
F 0 "C17" H 2400 1900 40  0000 L CNN
F 1 "10uF" H 2406 1715 40  0000 L CNN
F 2 "~" H 2438 1650 30  0000 C CNN
F 3 "~" H 2400 1800 60  0000 C CNN
	1    2400 1800
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 52AC6437
P 2800 1450
F 0 "R12" V 2880 1450 40  0000 C CNN
F 1 "180k" V 2807 1451 40  0000 C CNN
F 2 "~" V 2730 1450 30  0000 C CNN
F 3 "~" H 2800 1450 30  0000 C CNN
	1    2800 1450
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 52AC6444
P 2800 2100
F 0 "R13" V 2880 2100 40  0000 C CNN
F 1 "100k" V 2807 2101 40  0000 C CNN
F 2 "~" V 2730 2100 30  0000 C CNN
F 3 "~" H 2800 2100 30  0000 C CNN
	1    2800 2100
	1    0    0    -1  
$EndComp
Text Label 2100 2500 0    60   ~ 0
GND
$Comp
L INDUCTOR L1
U 1 1 52AC6531
P 5100 1100
F 0 "L1" V 5050 1100 40  0000 C CNN
F 1 "10uF" V 5200 1100 40  0000 C CNN
F 2 "~" H 5100 1100 60  0000 C CNN
F 3 "~" H 5100 1100 60  0000 C CNN
	1    5100 1100
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 52AC6582
P 5800 1500
F 0 "R14" V 5880 1500 40  0000 C CNN
F 1 "1M" V 5807 1501 40  0000 C CNN
F 2 "~" V 5730 1500 30  0000 C CNN
F 3 "~" H 5800 1500 30  0000 C CNN
	1    5800 1500
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 52AC6588
P 6050 1500
F 0 "R15" V 6130 1500 40  0000 C CNN
F 1 "1M" V 6057 1501 40  0000 C CNN
F 2 "~" V 5980 1500 30  0000 C CNN
F 3 "~" H 6050 1500 30  0000 C CNN
	1    6050 1500
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 52AC66C2
P 6400 1450
F 0 "C20" H 6400 1550 40  0000 L CNN
F 1 "22uF" H 6406 1365 40  0000 L CNN
F 2 "~" H 6438 1300 30  0000 C CNN
F 3 "~" H 6400 1450 60  0000 C CNN
	1    6400 1450
	1    0    0    -1  
$EndComp
Text Label 6700 1100 2    60   ~ 0
LVCC
Text Label 6700 2050 2    60   ~ 0
PGND
Text Label 5450 1850 0    60   ~ 0
PG
Text Label 5450 1950 0    60   ~ 0
LB
Text HLabel 1100 1100 0    60   UnSpc ~ 0
VIN
Text HLabel 1100 1550 0    60   UnSpc ~ 0
GND
Text HLabel 1100 1700 0    60   UnSpc ~ 0
PGND
Text HLabel 1100 1250 0    60   UnSpc ~ 0
LVCC
Text HLabel 1100 1850 0    60   Output ~ 0
LB
Text HLabel 1100 2000 0    60   Output ~ 0
PG
Text Label 1400 1100 2    60   ~ 0
VIN
Text Label 1400 1250 2    60   ~ 0
LVCC
Text Label 1400 1550 2    60   ~ 0
GND
Text Label 1400 1700 2    60   ~ 0
PGND
Text Label 1400 1850 2    60   ~ 0
LB
Text Label 1400 2000 2    60   ~ 0
PG
Text Notes 2800 3000 0    60   ~ 0
All capacitors should be soldered as close as possible to the IC.
Text Notes 2800 3150 0    60   ~ 0
Any coupling to the FB pin may cause additional output voltage ripple.
$Comp
L LM3480 T2
U 1 1 52E3894B
P 4000 4100
F 0 "T2" H 4000 4400 60  0000 C CNN
F 1 "LM3480" H 3850 3850 60  0000 L CNN
F 2 "SOT23" H 4000 4100 60  0000 C CNN
F 3 "~" H 4000 4100 60  0000 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 52E38A34
P 4700 4150
F 0 "C19" H 4700 4250 40  0000 L CNN
F 1 "100nF" H 4706 4065 40  0000 L CNN
F 2 "~" H 4738 4000 30  0000 C CNN
F 3 "~" H 4700 4150 60  0000 C CNN
	1    4700 4150
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 52E38A4B
P 3250 4150
F 0 "C18" H 3250 4250 40  0000 L CNN
F 1 "100nF" H 3256 4065 40  0000 L CNN
F 2 "~" H 3288 4000 30  0000 C CNN
F 3 "~" H 3250 4150 60  0000 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
Text Label 2950 3950 0    60   ~ 0
VIN
Text Label 2950 4350 0    60   ~ 0
GND
Wire Wire Line
	2100 1100 3300 1100
Wire Wire Line
	3300 1200 3150 1200
Wire Wire Line
	3150 1200 3150 1100
Connection ~ 3150 1100
Wire Wire Line
	2800 1200 2800 1100
Connection ~ 2800 1100
Wire Wire Line
	2800 1850 2800 1700
Wire Wire Line
	2800 2350 2800 2500
Wire Wire Line
	2100 2500 3150 2500
Wire Wire Line
	3300 1300 3000 1300
Wire Wire Line
	3000 1300 3000 1750
Wire Wire Line
	3000 1750 2800 1750
Connection ~ 2800 1750
Wire Wire Line
	3300 1400 3150 1400
Wire Wire Line
	3150 1400 3150 2500
Wire Wire Line
	3150 1500 3300 1500
Connection ~ 2800 2500
Connection ~ 3150 1500
Wire Wire Line
	2400 1600 2400 1100
Connection ~ 2400 1100
Wire Wire Line
	2400 2000 2400 2500
Connection ~ 2400 2500
Wire Wire Line
	4600 1100 4800 1100
Wire Wire Line
	4600 1300 5250 1300
Wire Wire Line
	5250 1300 5250 1850
Wire Wire Line
	5250 1850 5800 1850
Wire Wire Line
	5800 1850 5800 1750
Wire Wire Line
	4600 1400 5150 1400
Wire Wire Line
	5150 1400 5150 1950
Wire Wire Line
	5150 1950 6050 1950
Wire Wire Line
	6050 1950 6050 1750
Wire Wire Line
	4600 1200 5600 1200
Wire Wire Line
	5600 1200 5600 1100
Wire Wire Line
	5400 1100 6700 1100
Wire Wire Line
	5800 1100 5800 1250
Connection ~ 5600 1100
Wire Wire Line
	6050 1100 6050 1250
Connection ~ 5800 1100
Connection ~ 6050 1100
Wire Wire Line
	4600 1500 4600 2050
Wire Wire Line
	4600 2050 6700 2050
Wire Wire Line
	6400 2050 6400 1650
Connection ~ 6400 2050
Wire Wire Line
	6400 1250 6400 1100
Connection ~ 6400 1100
Wire Wire Line
	1100 1100 1400 1100
Wire Wire Line
	1100 1250 1400 1250
Wire Wire Line
	1100 1550 1400 1550
Wire Wire Line
	1100 1700 1400 1700
Wire Wire Line
	1100 1850 1400 1850
Wire Wire Line
	1100 2000 1400 2000
Wire Wire Line
	4400 3950 5050 3950
Wire Wire Line
	2950 3950 3600 3950
Wire Wire Line
	3600 4200 3500 4200
Wire Wire Line
	3500 4200 3500 4350
Wire Wire Line
	3500 4350 2950 4350
Connection ~ 3250 4350
Wire Wire Line
	4700 4350 5050 4350
Text Label 5050 3950 2    60   ~ 0
AVCC
Text Label 5050 4350 2    60   ~ 0
GND
Text HLabel 1100 1400 0    60   UnSpc ~ 0
AVCC
Text Label 1400 1400 2    60   ~ 0
AVCC
Wire Wire Line
	1100 1400 1400 1400
$Comp
L LED D3
U 1 1 52EC1406
P 8150 1250
F 0 "D3" H 8150 1350 50  0000 C CNN
F 1 "Low Bat LED" H 8150 1100 50  0000 C CNN
F 2 "~" H 8150 1250 60  0000 C CNN
F 3 "~" H 8150 1250 60  0000 C CNN
	1    8150 1250
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 52EC1413
P 8150 1800
F 0 "R16" V 8230 1800 40  0000 C CNN
F 1 "470" V 8157 1801 40  0000 C CNN
F 2 "~" V 8080 1800 30  0000 C CNN
F 3 "~" H 8150 1800 30  0000 C CNN
	1    8150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1450 8150 1550
Wire Wire Line
	8150 1050 8150 900 
Wire Wire Line
	8150 900  7950 900 
Wire Wire Line
	8150 2150 8150 2050
Wire Wire Line
	7950 2150 8150 2150
Text Label 7950 2150 0    60   ~ 0
GND
Text Label 7950 900  0    60   ~ 0
LB
$EndSCHEMATC
