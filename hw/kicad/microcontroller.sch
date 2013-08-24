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
Sheet 7 9
Title "Microcontroller"
Date "24 aug 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F103CBT6 U?
U 1 1 521666D7
P 6350 3750
F 0 "U?" H 6350 3800 60  0000 C CNN
F 1 "STM32F103CBT6" H 6350 3700 60  0000 C CNN
F 2 "~" H 6350 3750 60  0000 C CNN
F 3 "~" H 6350 3750 60  0000 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3200 8050 3200
Wire Wire Line
	7650 3300 8050 3300
Wire Wire Line
	7650 3400 8050 3400
Wire Wire Line
	7650 3500 8050 3500
Wire Wire Line
	7650 3600 8050 3600
Wire Wire Line
	7650 3700 8050 3700
Wire Wire Line
	7650 3800 8050 3800
Wire Wire Line
	7650 3900 8050 3900
Wire Wire Line
	7650 4000 8050 4000
Wire Wire Line
	7650 4100 8050 4100
Wire Wire Line
	7650 4200 8050 4200
Wire Wire Line
	7650 4300 8050 4300
Wire Wire Line
	5050 3200 4650 3200
Wire Wire Line
	4650 3800 5050 3800
Wire Wire Line
	5050 3900 4650 3900
Wire Wire Line
	4650 4000 5050 4000
Wire Wire Line
	4650 4200 5050 4200
Wire Wire Line
	5050 4300 4650 4300
Wire Wire Line
	5800 2450 5800 2050
Wire Wire Line
	5900 2450 5900 2050
Wire Wire Line
	6000 2050 6000 2450
Wire Wire Line
	6100 2050 6100 2450
Wire Wire Line
	6200 2050 6200 2450
Wire Wire Line
	6300 2050 6300 2450
Wire Wire Line
	6400 2450 6400 2050
Wire Wire Line
	6500 2050 6500 2450
Wire Wire Line
	6600 2450 6600 2050
Wire Wire Line
	6700 2050 6700 2450
Wire Wire Line
	6800 2450 6800 2050
Wire Wire Line
	6900 2050 6900 2450
Wire Wire Line
	5800 5050 5800 5450
Wire Wire Line
	5900 5050 5900 5450
Wire Wire Line
	6000 5450 6000 5050
Wire Wire Line
	6100 5050 6100 5450
Wire Wire Line
	6200 5450 6200 5050
Wire Wire Line
	6300 5050 6300 5450
Wire Wire Line
	6400 5450 6400 5050
Wire Wire Line
	6600 5450 6600 5050
Wire Wire Line
	6700 5050 6700 5450
Wire Wire Line
	6800 5450 6800 5050
Wire Wire Line
	6900 5050 6900 5450
Text HLabel 2050 5850 0    60   UnSpc ~ 0
3V3
Text HLabel 2050 5950 0    60   UnSpc ~ 0
GND
Wire Wire Line
	2050 5850 2450 5850
Wire Wire Line
	2050 5950 2450 5950
Text Label 2450 5850 2    60   ~ 0
3V3
Text Label 2450 5950 2    60   ~ 0
GND
Text Label 6800 5450 1    60   ~ 0
GND
Text Label 8050 3300 2    60   ~ 0
GND
Text Label 5900 2050 3    60   ~ 0
GND
Text Label 4650 3900 0    60   ~ 0
AV-
Text Label 8050 3200 2    60   ~ 0
3V3
Text Label 5800 2050 3    60   ~ 0
3V3
Text Label 4650 4000 0    60   ~ 0
AV+
Text Label 6900 5450 1    60   ~ 0
3V3
Text HLabel 2050 6050 0    60   UnSpc ~ 0
AV+
Text HLabel 2050 6150 0    60   UnSpc ~ 0
AV-
Wire Wire Line
	2050 6050 2450 6050
Wire Wire Line
	2050 6150 2450 6150
Text Label 2450 6050 2    60   ~ 0
AV+
Text Label 2450 6150 2    60   ~ 0
AV-
$Comp
L C C?
U 1 1 52168BD8
P 9100 4350
F 0 "C?" H 9100 4450 40  0000 L CNN
F 1 "100nF" H 9106 4265 40  0000 L CNN
F 2 "SM0603" H 9138 4200 30  0001 C CNN
F 3 "~" H 9100 4350 60  0000 C CNN
	1    9100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4150 9100 4050
Wire Wire Line
	9100 4050 10200 4050
Wire Wire Line
	9100 4550 9100 4650
Wire Wire Line
	9100 4650 10200 4650
Wire Wire Line
	9450 4150 9450 4050
Connection ~ 9450 4050
Wire Wire Line
	9800 4150 9800 4050
Connection ~ 9800 4050
Wire Wire Line
	9450 4550 9450 4650
Connection ~ 9450 4650
Wire Wire Line
	9800 4550 9800 4650
Connection ~ 9800 4650
Text Label 10200 4050 2    60   ~ 0
3V3
Text Label 10200 4650 2    60   ~ 0
GND
$Comp
L C C?
U 1 1 52168F3F
P 9450 4350
F 0 "C?" H 9450 4450 40  0000 L CNN
F 1 "100nF" H 9456 4265 40  0000 L CNN
F 2 "SM0603" H 9488 4200 30  0001 C CNN
F 3 "~" H 9450 4350 60  0000 C CNN
	1    9450 4350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52168F45
P 9800 4350
F 0 "C?" H 9800 4450 40  0000 L CNN
F 1 "100nF" H 9806 4265 40  0000 L CNN
F 2 "SM0603" H 9838 4200 30  0001 C CNN
F 3 "~" H 9800 4350 60  0000 C CNN
	1    9800 4350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 52168F4B
P 9800 3300
F 0 "C?" H 9800 3400 40  0000 L CNN
F 1 "100nF" H 9806 3215 40  0000 L CNN
F 2 "SM0603" H 9838 3150 30  0001 C CNN
F 3 "~" H 9800 3300 60  0000 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3500 9800 3600
Wire Wire Line
	9800 3600 10200 3600
Wire Wire Line
	9800 3100 9800 3000
Wire Wire Line
	9800 3000 10200 3000
Text Label 10200 3000 2    60   ~ 0
AV+
Text Label 10200 3600 2    60   ~ 0
AV-
Text Notes 7800 6100 0    60   ~ 0
* Capacitors should be place ceramic (good quality) and should\n  be placed as close as possible to the IC.\n
Text HLabel 1400 1950 0    60   BiDi ~ 0
PA0-WKUP
Text HLabel 1400 2050 0    60   BiDi ~ 0
PA1
Text HLabel 1400 2150 0    60   BiDi ~ 0
PA2
Text HLabel 1400 2250 0    60   BiDi ~ 0
PA3
Text HLabel 1400 2350 0    60   BiDi ~ 0
PA4
Text HLabel 1400 2450 0    60   BiDi ~ 0
PA5
Text HLabel 1400 2550 0    60   BiDi ~ 0
PA6
Text HLabel 1400 2650 0    60   BiDi ~ 0
PA7
Text HLabel 1400 2750 0    60   BiDi ~ 0
PA8
Text HLabel 1400 2850 0    60   BiDi ~ 0
PA9
Text HLabel 1400 2950 0    60   BiDi ~ 0
PA10
Text HLabel 1400 3050 0    60   BiDi ~ 0
PA11
Text HLabel 1400 3150 0    60   BiDi ~ 0
PA12
Text HLabel 1400 3250 0    60   BiDi ~ 0
PA13
Text HLabel 1400 3350 0    60   BiDi ~ 0
PA14
Text HLabel 1400 3450 0    60   BiDi ~ 0
PA15
Wire Wire Line
	1400 2050 1800 2050
Wire Wire Line
	1800 2150 1400 2150
Wire Wire Line
	1400 2250 1800 2250
Wire Wire Line
	1800 2350 1400 2350
Wire Wire Line
	1400 2450 1800 2450
Wire Wire Line
	1800 2550 1400 2550
Wire Wire Line
	1400 2650 1800 2650
Wire Wire Line
	1800 2750 1400 2750
Wire Wire Line
	1400 2850 1800 2850
Wire Wire Line
	1400 2950 1800 2950
Wire Wire Line
	1800 3050 1400 3050
Wire Wire Line
	1400 3150 1800 3150
Wire Wire Line
	1800 3250 1400 3250
Wire Wire Line
	1400 3350 1800 3350
Wire Wire Line
	1800 3450 1400 3450
Text Label 2000 1950 2    60   ~ 0
PA0-WKUP
Text Label 1800 2050 2    60   ~ 0
PA1
Text Label 1800 2150 2    60   ~ 0
PA2
Text Label 1800 2250 2    60   ~ 0
PA3
Text Label 1800 2350 2    60   ~ 0
PA4
Text Label 1800 2450 2    60   ~ 0
PA5
Text Label 1800 2550 2    60   ~ 0
PA6
Text Label 1800 2650 2    60   ~ 0
PA7
Text Label 1800 2750 2    60   ~ 0
PA8
Text Label 1800 2850 2    60   ~ 0
PA9
Text Label 1800 2950 2    60   ~ 0
PA10
Text Label 1800 3050 2    60   ~ 0
PA11
Text Label 1800 3150 2    60   ~ 0
PA12
Text Label 1800 3250 2    60   ~ 0
PA13
Text Label 1800 3350 2    60   ~ 0
PA14
Text Label 1800 3450 2    60   ~ 0
PA15
Text Label 4450 4100 0    60   ~ 0
PA0-WKUP
Text Label 4650 4200 0    60   ~ 0
PA1
Text Label 4650 4300 0    60   ~ 0
PA2
Text Label 5800 5450 1    60   ~ 0
PA3
Text Label 5900 5450 1    60   ~ 0
PA4
Text Label 6000 5450 1    60   ~ 0
PA5
Text Label 6100 5450 1    60   ~ 0
PA6
Text Label 6200 5450 1    60   ~ 0
PA7
Text Label 8050 3900 2    60   ~ 0
PA8
Text Label 8050 3800 2    60   ~ 0
PA9
Text Label 8050 3700 2    60   ~ 0
PA10
Text Label 8050 3600 2    60   ~ 0
PA11
Text Label 8050 3500 2    60   ~ 0
PA12
Text Label 8050 3400 2    60   ~ 0
PA13
Text Label 6900 2050 3    60   ~ 0
PA14
Text Label 6800 2050 3    60   ~ 0
PA15
Text HLabel 2900 1950 0    60   BiDi ~ 0
PB0
Text HLabel 2900 2050 0    60   BiDi ~ 0
PB1
Text HLabel 2900 2150 0    60   BiDi ~ 0
PB2-BOOT1
Text HLabel 2900 2250 0    60   BiDi ~ 0
PB3
Text HLabel 2900 2350 0    60   BiDi ~ 0
PB4
Text HLabel 2900 2450 0    60   BiDi ~ 0
PB5
Text HLabel 2900 2550 0    60   BiDi ~ 0
PB6
Text HLabel 2900 2650 0    60   BiDi ~ 0
PB7
Text HLabel 2900 2750 0    60   BiDi ~ 0
PB8
Text HLabel 2900 2850 0    60   BiDi ~ 0
PB9
Text HLabel 2900 2950 0    60   BiDi ~ 0
PB10
Text HLabel 2900 3050 0    60   BiDi ~ 0
PB11
Text HLabel 2900 3150 0    60   BiDi ~ 0
PB12
Text HLabel 2900 3250 0    60   BiDi ~ 0
PB13
Text HLabel 2900 3350 0    60   BiDi ~ 0
PB14
Text HLabel 2900 3450 0    60   BiDi ~ 0
PB15
Wire Wire Line
	2900 1950 3300 1950
Wire Wire Line
	2900 2050 3300 2050
Wire Wire Line
	2900 2250 3300 2250
Wire Wire Line
	3300 2350 2900 2350
Wire Wire Line
	2900 2450 3300 2450
Wire Wire Line
	3300 2550 2900 2550
Wire Wire Line
	2900 2650 3300 2650
Wire Wire Line
	3300 2750 2900 2750
Wire Wire Line
	2900 2850 3300 2850
Wire Wire Line
	2900 2950 3300 2950
Wire Wire Line
	3300 3050 2900 3050
Wire Wire Line
	2900 3150 3300 3150
Wire Wire Line
	3300 3250 2900 3250
Wire Wire Line
	2900 3350 3300 3350
Wire Wire Line
	3300 3450 2900 3450
Text Label 3300 1950 2    60   ~ 0
PB0
Text Label 3300 2050 2    60   ~ 0
PB1
Text Label 3500 2150 2    60   ~ 0
PB2-BOOT1
Text Label 3300 2250 2    60   ~ 0
PB3
Text Label 3300 2350 2    60   ~ 0
PB4
Text Label 3300 2450 2    60   ~ 0
PB5
Text Label 3300 2550 2    60   ~ 0
PB6
Text Label 3300 2650 2    60   ~ 0
PB7
Text Label 3300 2750 2    60   ~ 0
PB8
Text Label 3300 2850 2    60   ~ 0
PB9
Text Label 3300 2950 2    60   ~ 0
PB10
Text Label 3300 3050 2    60   ~ 0
PB11
Text Label 3300 3150 2    60   ~ 0
PB12
Text Label 3300 3250 2    60   ~ 0
PB13
Text Label 3300 3350 2    60   ~ 0
PB14
Text Label 3300 3450 2    60   ~ 0
PB15
Text Label 6300 5450 1    60   ~ 0
PB0
Text Label 6400 5450 1    60   ~ 0
PB1
Text Label 6500 5650 1    60   ~ 0
PB2-BOOT1
Text Label 6700 2050 3    60   ~ 0
PB3
Text Label 6600 2050 3    60   ~ 0
PB4
Text Label 6500 2050 3    60   ~ 0
PB5
Text Label 6400 2050 3    60   ~ 0
PB6
Text Label 6300 2050 3    60   ~ 0
PB7
Text Label 6100 2050 3    60   ~ 0
PB8
Text Label 6000 2050 3    60   ~ 0
PB9
Text Label 6600 5450 1    60   ~ 0
PB10
Text Label 6700 5450 1    60   ~ 0
PB11
Text Label 8050 4300 2    60   ~ 0
PB12
Text Label 8050 4200 2    60   ~ 0
PB13
Text Label 8050 4100 2    60   ~ 0
PB14
Text Label 8050 4000 2    60   ~ 0
PB15
Text HLabel 2050 4100 0    60   Input ~ 0
BOOT0
Wire Wire Line
	2050 4100 2450 4100
Text Label 2450 4100 2    60   ~ 0
BOOT0
Text Label 6200 2050 3    60   ~ 0
BOOT0
Text HLabel 2050 4300 0    60   Input ~ 0
PD0-OSC_IN
Text Label 2750 4300 2    60   ~ 0
PD0-OSC_IN
Wire Wire Line
	1400 1950 2000 1950
Wire Wire Line
	2900 2150 3500 2150
Wire Wire Line
	2050 4300 2750 4300
Text HLabel 2050 4400 0    60   Output ~ 0
PD1-OSC_OUT
Text Label 2750 4400 2    60   ~ 0
PD1-OSC_OUT
Wire Wire Line
	2050 4400 2750 4400
Text HLabel 2050 4600 0    60   BiDi ~ 0
PC13-TAMPER-RTC
Text Label 3050 4600 2    60   ~ 0
PC13-TAMPER-RTC
Wire Wire Line
	2050 4600 3050 4600
Text HLabel 2050 4700 0    60   BiDi ~ 0
PC14-OSC32_IN
Text Label 3050 4700 2    60   ~ 0
PC14-OSC32_IN
Wire Wire Line
	2050 4700 3050 4700
Text HLabel 2050 4800 0    60   BiDi ~ 0
PC15-OSC32_OUT
Text Label 3050 4800 2    60   ~ 0
PC15-OSC32_OUT
Wire Wire Line
	2050 4800 3050 4800
Text Label 4050 3300 0    60   ~ 0
PC13-TAMPER-RTC
Text Label 4050 3400 0    60   ~ 0
PC14-OSC32_IN
Text Label 4050 3500 0    60   ~ 0
PC15-OSC32_OUT
Text Label 4300 3600 0    60   ~ 0
PD0-OSC_IN
Text Label 4300 3700 0    60   ~ 0
PD1-OSC_OUT
Text HLabel 2050 5000 0    60   Input ~ 0
~RST
Wire Wire Line
	2050 5000 2450 5000
Text Label 2450 5000 2    60   ~ 0
~RST
Text Label 4650 3800 0    60   ~ 0
~RST
Text HLabel 2050 5200 0    60   Input ~ 0
VBAT
Wire Wire Line
	2050 5200 2450 5200
Text Label 2450 5200 2    60   ~ 0
VBAT
Text Label 4650 3200 0    60   ~ 0
VBAT
Wire Wire Line
	5050 3300 4050 3300
Wire Wire Line
	4050 3400 5050 3400
Wire Wire Line
	5050 3500 4050 3500
Wire Wire Line
	5050 3700 4300 3700
Wire Wire Line
	5050 3600 4300 3600
Wire Wire Line
	6500 5050 6500 5650
Wire Wire Line
	5050 4100 4450 4100
$EndSCHEMATC
