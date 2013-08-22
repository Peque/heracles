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
Sheet 2 5
Title "Motor driver"
Date "22 aug 2013"
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5300 5000 5300 5100
Wire Wire Line
	5850 5450 5850 5350
Wire Wire Line
	5850 5350 4900 5350
Wire Wire Line
	4900 4500 5300 4500
Connection ~ 5300 5950
Wire Wire Line
	5300 5350 5300 5450
Wire Wire Line
	2600 4550 2200 4550
Wire Wire Line
	2600 4150 2200 4150
Wire Wire Line
	2400 3100 2850 3100
Wire Wire Line
	2400 2700 2850 2700
Wire Wire Line
	2400 2300 2850 2300
Wire Wire Line
	6850 3400 7200 3400
Wire Wire Line
	6850 3200 7200 3200
Wire Wire Line
	6850 3000 7200 3000
Wire Wire Line
	6850 2800 7200 2800
Wire Wire Line
	6850 2600 7200 2600
Wire Wire Line
	2400 6050 2850 6050
Wire Wire Line
	2400 5650 2850 5650
Wire Wire Line
	2400 5850 2850 5850
Wire Wire Line
	6850 2700 7200 2700
Wire Wire Line
	6850 2900 7200 2900
Wire Wire Line
	6850 3100 7200 3100
Wire Wire Line
	6850 3300 7200 3300
Wire Wire Line
	2400 2100 2850 2100
Wire Wire Line
	2400 2500 2850 2500
Wire Wire Line
	2400 2900 2850 2900
Wire Wire Line
	2400 3300 2850 3300
Wire Wire Line
	2600 4350 2200 4350
Wire Wire Line
	2600 4750 2200 4750
Wire Wire Line
	5300 5950 5300 5850
Connection ~ 5300 5350
Wire Wire Line
	5300 5100 4900 5100
Wire Wire Line
	4900 5950 5850 5950
Wire Wire Line
	5850 5950 5850 5850
Wire Wire Line
	5300 4500 5300 4600
Text Label 4900 4500 0    60   ~ 0
3V3
Text Label 4900 5350 0    60   ~ 0
VMOT
Text Label 4900 5100 0    60   ~ 0
GND
Text Label 4900 5950 0    60   ~ 0
GND
$Comp
L CP1 C7
U 1 1 509B13AD
P 5850 5650
F 0 "C7" H 5900 5750 50  0000 L CNN
F 1 "10uF , 20V" H 5900 5550 50  0000 L CNN
F 2 "SM1206" H 5850 5650 60  0001 C CNN
F 3 "" H 5850 5650 60  0001 C CNN
	1    5850 5650
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 509B139B
P 5300 5650
F 0 "C6" H 5350 5750 50  0000 L CNN
F 1 "0.1uF" H 5350 5550 50  0000 L CNN
F 2 "SM0603" H 5300 5650 60  0001 C CNN
F 3 "" H 5300 5650 60  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 509B1393
P 5300 4800
F 0 "C5" H 5350 4900 50  0000 L CNN
F 1 "0.1uF" H 5350 4700 50  0000 L CNN
F 2 "SM0603" H 5300 4800 60  0001 C CNN
F 3 "" H 5300 4800 60  0001 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
Text Label 4900 3150 0    60   ~ 0
BO2
Text Label 4900 3550 0    60   ~ 0
BO1
Text Label 4900 2950 0    60   ~ 0
AO2
Text Label 4900 2550 0    60   ~ 0
AO1
Text Label 2200 4750 0    60   ~ 0
BO2
Text Label 2200 4550 0    60   ~ 0
BO1
Text Label 2200 4350 0    60   ~ 0
AO2
Text Label 2200 4150 0    60   ~ 0
AO1
Text Label 7200 2900 2    60   ~ 0
3V3
Text Label 7200 2500 2    60   ~ 0
VMOT
Text HLabel 2600 4750 2    60   Output ~ 0
BO2
Text HLabel 2600 4550 2    60   Output ~ 0
BO1
Text HLabel 2600 4350 2    60   Output ~ 0
AO2
Text HLabel 2600 4150 2    60   Output ~ 0
AO1
Text Label 7200 3000 2    60   ~ 0
STBY
Text Label 7200 3400 2    60   ~ 0
PWMB
Text Label 7200 3300 2    60   ~ 0
BIN2
Text Label 7200 3200 2    60   ~ 0
BIN1
Text Label 7200 2600 2    60   ~ 0
PWMA
Text Label 7200 2700 2    60   ~ 0
AIN2
Text Label 7200 2800 2    60   ~ 0
AIN1
Text Label 2850 3300 2    60   ~ 0
STBY
Text Label 2850 3100 2    60   ~ 0
PWMB
Text Label 2850 2900 2    60   ~ 0
BIN2
Text Label 2850 2700 2    60   ~ 0
BIN1
Text Label 2850 2500 2    60   ~ 0
PWMA
Text Label 2850 2300 2    60   ~ 0
AIN2
Text Label 2850 2100 2    60   ~ 0
AIN1
Text HLabel 2400 3300 0    60   Input ~ 0
STBY
Text HLabel 2400 2100 0    60   Input ~ 0
AIN1
Text HLabel 2400 2300 0    60   Input ~ 0
AIN2
Text HLabel 2400 2500 0    60   Input ~ 0
PWMA
Text HLabel 2400 3100 0    60   Input ~ 0
PWMB
Text HLabel 2400 2900 0    60   Input ~ 0
BIN2
Text HLabel 2400 2700 0    60   Input ~ 0
BIN1
Text Label 4900 2750 0    60   ~ 0
GND
Text Label 4900 3350 0    60   ~ 0
GND
Text Label 7200 3100 2    60   ~ 0
GND
Text Label 2850 6050 2    60   ~ 0
GND
Text Label 2850 5850 2    60   ~ 0
3V3
Text Label 2850 5650 2    60   ~ 0
VMOT
$Comp
L TB6612FNG U6
U 1 1 509B0C77
P 6050 3050
F 0 "U6" H 5600 3850 50  0000 C CNN
F 1 "TB6612FNG" H 5750 2250 50  0000 C CNN
F 2 "SSOP24-P-300.0.65A" H 6050 3050 50  0001 C CNN
F 3 "" H 6050 3050 60  0001 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
Text HLabel 2400 5650 0    60   UnSpc ~ 0
VMOT
Text HLabel 2400 5850 0    60   UnSpc ~ 0
3V3
Text HLabel 2400 6050 0    60   UnSpc ~ 0
GND
Text Notes 7150 4900 0    60   ~ 0
* Condensers should be placed as close as possible to the IC.
Wire Wire Line
	5250 2600 5250 2500
Wire Wire Line
	5250 2700 5250 2800
Wire Wire Line
	5250 2900 5250 3000
Wire Wire Line
	5250 3100 5250 3200
Wire Wire Line
	5250 3300 5250 3400
Wire Wire Line
	5250 3500 5250 3600
Wire Wire Line
	5250 2550 4900 2550
Connection ~ 5250 2550
Wire Wire Line
	5250 2750 4900 2750
Connection ~ 5250 2750
Wire Wire Line
	5250 2950 4900 2950
Connection ~ 5250 2950
Wire Wire Line
	5250 3150 4900 3150
Connection ~ 5250 3150
Wire Wire Line
	5250 3350 4900 3350
Connection ~ 5250 3350
Wire Wire Line
	5250 3550 4900 3550
Connection ~ 5250 3550
Wire Wire Line
	6850 2500 7200 2500
Wire Wire Line
	6850 3500 6850 3600
Wire Wire Line
	6850 3550 7200 3550
Connection ~ 6850 3550
Text Label 7200 3550 2    60   ~ 0
VMOT
$EndSCHEMATC
