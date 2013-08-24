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
Sheet 3 8
Title "Bluetooth"
Date "24 aug 2013"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2150 2300 0    60   Input ~ 0
UART_RXD
Text HLabel 2350 3350 2    60   Output ~ 0
UART_TXD
Text Label 2700 5700 2    60   ~ 0
GND
Text Label 2700 5500 2    60   ~ 0
3V3
Text HLabel 2150 5500 0    60   UnSpc ~ 0
3V3
Text HLabel 2150 5700 0    60   UnSpc ~ 0
GND
Text HLabel 2150 2100 0    60   Input ~ 0
AT_MODE
Text Label 2700 2300 2    60   ~ 0
UART_RDX
Text Label 1800 3350 0    60   ~ 0
UART_TDX
Text Label 2700 2100 2    60   ~ 0
AT_MODE
Wire Wire Line
	2150 5700 2700 5700
Wire Wire Line
	2150 2300 2700 2300
Wire Wire Line
	1800 3350 2350 3350
Wire Wire Line
	2150 5500 2700 5500
Wire Wire Line
	2150 2100 2700 2100
Wire Wire Line
	5800 5000 5800 5050
Text HLabel 2150 2500 0    60   Input ~ 0
~RESET
Text Label 2700 2500 2    60   ~ 0
~RESET
Wire Wire Line
	2150 2500 2700 2500
Text Label 4100 4250 0    60   ~ 0
3V3
Text Label 4100 4350 0    60   ~ 0
GND
Text Label 8600 3450 2    60   ~ 0
GND
$Comp
L LED D4
U 1 1 520D85DB
P 8000 3450
F 0 "D4" H 8000 3550 50  0000 C CNN
F 1 "Work mode LED" H 8000 3350 50  0000 C CNN
F 2 "SM1206" H 8000 3450 60  0001 C CNN
F 3 "" H 8000 3450 60  0001 C CNN
	1    8000 3450
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 520D85E1
P 7400 3450
F 0 "R7" V 7480 3450 50  0000 C CNN
F 1 "470" V 7400 3450 50  0000 C CNN
F 2 "SM0603" H 7400 3450 60  0001 C CNN
F 3 "" H 7400 3450 60  0001 C CNN
	1    7400 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 520D85E7
P 7400 2950
F 0 "R5" V 7480 2950 50  0000 C CNN
F 1 "10K" V 7400 2950 50  0000 C CNN
F 2 "SM0603" H 7400 2950 60  0001 C CNN
F 3 "" H 7400 2950 60  0001 C CNN
	1    7400 2950
	0    -1   -1   0   
$EndComp
NoConn ~ 4500 3550
NoConn ~ 4500 3450
NoConn ~ 4500 3350
NoConn ~ 5700 5000
NoConn ~ 5200 5000
NoConn ~ 5100 5000
NoConn ~ 4500 3850
NoConn ~ 4500 3750
NoConn ~ 4500 3650
Text Label 6750 4350 2    60   ~ 0
GND
Text Label 6150 5050 2    60   ~ 0
GND
Text Label 8600 3150 2    60   ~ 0
AT_MODE
Text Label 4100 3150 0    60   ~ 0
UART_TDX
Text Label 4100 3250 0    60   ~ 0
UART_RDX
Text Label 8600 2950 2    60   ~ 0
GND
Wire Wire Line
	7650 3450 7800 3450
Wire Wire Line
	7650 2950 8600 2950
Wire Wire Line
	8200 3450 8600 3450
Wire Wire Line
	4100 4350 4500 4350
Wire Wire Line
	6400 4350 6750 4350
Wire Wire Line
	4500 3250 4100 3250
Wire Wire Line
	4500 3150 4100 3150
Wire Wire Line
	5800 5050 6150 5050
Wire Wire Line
	4500 4150 4100 4150
Text Label 4100 4150 0    60   ~ 0
~RESET
Wire Wire Line
	6400 4050 6750 4050
Wire Wire Line
	6400 3950 6750 3950
Wire Wire Line
	6400 3850 6750 3850
Wire Wire Line
	6400 3750 6750 3750
Wire Wire Line
	6400 3650 6750 3650
Wire Wire Line
	6400 3550 6750 3550
Wire Wire Line
	6400 3250 6750 3250
$Comp
L HC-05 U4
U 1 1 520D861E
P 5450 3650
F 0 "U4" H 4850 4350 60  0000 C CNN
F 1 "HC-05" H 5950 4350 60  0000 C CNN
F 2 "HC-0X" H 5450 3650 60  0001 C CNN
F 3 "" H 5450 3650 60  0000 C CNN
	1    5450 3650
	1    0    0    -1  
$EndComp
Text Label 6750 4050 2    60   ~ 0
PIO2
Text Label 6750 3950 2    60   ~ 0
PIO3
Text Label 6750 3850 2    60   ~ 0
PIO4
Text Label 6750 3750 2    60   ~ 0
PIO5
Text Label 6750 3650 2    60   ~ 0
PIO6
Text Label 6750 3550 2    60   ~ 0
PIO7
Text Label 6750 3250 2    60   ~ 0
PIO10
Text HLabel 2350 3550 2    60   Output ~ 0
PIO2
Text Label 1800 3550 0    60   ~ 0
PIO2
Wire Wire Line
	1800 3550 2350 3550
Text HLabel 2350 3950 2    60   Output ~ 0
PIO4
Text HLabel 2350 3750 2    60   Output ~ 0
PIO3
Text Label 1800 3950 0    60   ~ 0
PIO4
Text Label 1800 3750 0    60   ~ 0
PIO3
Wire Wire Line
	1800 3950 2350 3950
Wire Wire Line
	1800 3750 2350 3750
Text HLabel 2350 4150 2    60   Output ~ 0
PIO5
Text Label 1800 4150 0    60   ~ 0
PIO5
Wire Wire Line
	1800 4150 2350 4150
Text HLabel 2350 4550 2    60   Output ~ 0
PIO7
Text HLabel 2350 4350 2    60   Output ~ 0
PIO6
Text Label 1800 4550 0    60   ~ 0
PIO7
Text Label 1800 4350 0    60   ~ 0
PIO6
Wire Wire Line
	1800 4550 2350 4550
Wire Wire Line
	1800 4350 2350 4350
Text HLabel 2350 4750 2    60   Output ~ 0
PIO10
Text Label 1800 4750 0    60   ~ 0
PIO10
Wire Wire Line
	1800 4750 2350 4750
Wire Wire Line
	4500 4250 4100 4250
NoConn ~ 6400 4250
NoConn ~ 6400 4150
NoConn ~ 4500 3950
NoConn ~ 4500 4050
NoConn ~ 5600 5000
NoConn ~ 5500 5000
NoConn ~ 5400 5000
NoConn ~ 5300 5000
NoConn ~ 6400 3350
Wire Wire Line
	7050 3150 7050 2950
Wire Wire Line
	7050 2950 7150 2950
Connection ~ 7050 3150
Wire Wire Line
	6400 3450 7150 3450
Wire Wire Line
	6400 3150 8600 3150
Text Notes 7650 5350 0    60   ~ 0
* PIO2-PIO7 and PIO10 are user configurable digital outputs\n  through AT commands.\n\n* PIO9 will not be used as will result in redundant information.\n  (The work mode LED will blink differently after paired with\n  the HC-05 firmware)\n\n* UART_RXD needs a pull up resistor, which should be added\n  if the MCU TXD did not have pull-up function.
$EndSCHEMATC
