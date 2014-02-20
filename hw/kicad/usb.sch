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
Sheet 10 11
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
L R R8
U 1 1 52AC1A72
P 5800 1900
F 0 "R8" V 5880 1900 40  0000 C CNN
F 1 "22" V 5807 1901 40  0000 C CNN
F 2 "~" V 5730 1900 30  0000 C CNN
F 3 "~" H 5800 1900 30  0000 C CNN
	1    5800 1900
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 52AC1A7F
P 5800 2200
F 0 "R10" V 5880 2200 40  0000 C CNN
F 1 "1.5k" V 5807 2201 40  0000 C CNN
F 2 "~" V 5730 2200 30  0000 C CNN
F 3 "~" H 5800 2200 30  0000 C CNN
	1    5800 2200
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 52AC1B32
P 5800 2050
F 0 "R9" V 5880 2050 40  0000 C CNN
F 1 "22" V 5807 2051 40  0000 C CNN
F 2 "~" V 5730 2050 30  0000 C CNN
F 3 "~" H 5800 2050 30  0000 C CNN
	1    5800 2050
	0    -1   -1   0   
$EndComp
$Comp
L MOS_P Q2
U 1 1 52AC1B46
P 6700 1900
AR Path="/52AB11DF/52AC1B46" Ref="Q2"  Part="1" 
AR Path="/521620C8/52AC1B46" Ref="Q2"  Part="1" 
F 0 "Q2" H 6700 2090 60  0000 R CNN
F 1 "FDV304P" H 6700 1720 60  0000 R CNN
F 2 "SOT23" H 6700 1900 60  0000 C CNN
F 3 "~" H 6700 1900 60  0000 C CNN
	1    6700 1900
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 52AC1BEC
P 7100 2250
F 0 "R11" V 7180 2250 40  0000 C CNN
F 1 "10k" V 7107 2251 40  0000 C CNN
F 2 "~" V 7030 2250 30  0000 C CNN
F 3 "~" H 7100 2250 30  0000 C CNN
	1    7100 2250
	-1   0    0    1   
$EndComp
Text Label 3800 1750 0    60   ~ 0
GND
Text Label 3800 1900 0    60   ~ 0
GND
Text Label 3800 2200 0    60   ~ 0
GND
Text Label 3800 2350 0    60   ~ 0
GND
Text Label 5300 2350 2    60   ~ 0
GND
Text Label 7650 1900 2    60   ~ 0
USB_PU
Text Label 6300 2050 2    60   ~ 0
USBP
Text Label 7300 2600 2    60   ~ 0
GND
Text Label 6300 1900 2    60   ~ 0
USBM
NoConn ~ 5100 2200
Text Label 6300 1750 2    60   ~ 0
VUSB
$Comp
L USB-MINI-B J1
U 1 1 52AC19F1
P 4550 2050
F 0 "J1" H 4300 2500 60  0000 C CNN
F 1 "USB-MICRO" H 4500 1550 60  0000 C CNN
F 2 "~" H 4550 2050 60  0000 C CNN
F 3 "~" H 4550 2050 60  0000 C CNN
	1    4550 2050
	-1   0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 52AC3A90
P 5800 1600
F 0 "R7" V 5880 1600 40  0000 C CNN
F 1 "22" V 5807 1601 40  0000 C CNN
F 2 "~" V 5730 1600 30  0000 C CNN
F 3 "~" H 5800 1600 30  0000 C CNN
	1    5800 1600
	0    -1   -1   0   
$EndComp
Text Label 6300 1600 2    60   ~ 0
USBS
Text HLabel 1850 1450 0    60   UnSpc ~ 0
3.3V
Text HLabel 1850 1600 0    60   UnSpc ~ 0
GND
Text HLabel 1850 1750 0    60   UnSpc ~ 0
VUSB
Text HLabel 1850 2050 0    60   BiDi ~ 0
USBP
Text HLabel 1850 2200 0    60   BiDi ~ 0
USBM
Text HLabel 1850 2500 0    60   Output ~ 0
USB_SENSOR
Text HLabel 1850 2750 0    60   Input ~ 0
USB_PU
Wire Wire Line
	4000 1750 3800 1750
Wire Wire Line
	3800 2350 4000 2350
Wire Wire Line
	4000 2200 3800 2200
Wire Wire Line
	4000 1900 3800 1900
Wire Wire Line
	5100 2350 5300 2350
Wire Wire Line
	6600 2200 6600 2100
Wire Wire Line
	7100 2000 7100 1900
Connection ~ 7100 1900
Wire Wire Line
	6050 2050 6300 2050
Wire Wire Line
	6050 1900 6300 1900
Wire Wire Line
	5100 1750 6300 1750
Wire Wire Line
	7100 2500 7100 2600
Wire Wire Line
	7100 2600 7300 2600
Wire Wire Line
	6600 1700 6600 1550
Wire Wire Line
	6900 1900 7650 1900
Wire Wire Line
	6050 2200 6600 2200
Wire Wire Line
	5100 1900 5550 1900
Wire Wire Line
	5100 2050 5550 2050
Wire Wire Line
	5400 2200 5550 2200
Wire Wire Line
	5400 2200 5400 2050
Connection ~ 5400 2050
Wire Wire Line
	5400 1750 5400 1600
Wire Wire Line
	5400 1600 5550 1600
Connection ~ 5400 1750
Wire Wire Line
	6050 1600 6300 1600
Wire Wire Line
	1850 1450 2200 1450
Wire Wire Line
	1850 1600 2200 1600
Wire Wire Line
	1850 1750 2200 1750
Wire Wire Line
	1850 2050 2200 2050
Wire Wire Line
	1850 2200 2200 2200
Wire Wire Line
	1850 2500 2200 2500
Wire Wire Line
	1850 2750 2200 2750
Text Label 2200 1600 2    60   ~ 0
GND
Wire Wire Line
	6600 1550 6800 1550
Text Label 6800 1550 2    60   ~ 0
3.3V
Text Label 2200 1450 2    60   ~ 0
3.3V
Text Label 2200 1750 2    60   ~ 0
VUSB
Text Label 2200 2050 2    60   ~ 0
USBP
Text Label 2200 2200 2    60   ~ 0
USBM
Text Label 2200 2500 2    60   ~ 0
USB_S
Text Label 2200 2750 2    60   ~ 0
USB_PU
$EndSCHEMATC
