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
Sheet 1 6
Title ""
Date "22 aug 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7950 3350 1000 1500
U 509B0C31
F0 "Motor driver" 60
F1 "motor_driver.sch" 60
F2 "BO2" O R 8950 4300 60 
F3 "BO1" O R 8950 4200 60 
F4 "AO2" O R 8950 4000 60 
F5 "AO1" O R 8950 3900 60 
F6 "STBY" I L 7950 4250 60 
F7 "AIN1" I L 7950 3850 60 
F8 "AIN2" I L 7950 3750 60 
F9 "PWMA" I L 7950 4050 60 
F10 "PWMB" I L 7950 3950 60 
F11 "BIN2" I L 7950 3550 60 
F12 "BIN1" I L 7950 3650 60 
F13 "VMOT" U L 7950 4450 60 
F14 "3V3" U L 7950 4550 60 
F15 "GND" U L 7950 4650 60 
$EndSheet
$Sheet
S 6150 3300 1050 1100
U 509BC4E1
F0 "Bluetooth" 60
F1 "bluetooth.sch" 60
F2 "PIO2" O R 7200 4150 60 
F3 "PIO4" O R 7200 4050 60 
F4 "PIO3" O R 7200 3950 60 
F5 "PIO5" O R 7200 3850 60 
F6 "PIO7" O R 7200 3650 60 
F7 "PIO6" O R 7200 3750 60 
F8 "PIO10" O R 7200 3550 60 
F9 "UART_RXD" I L 6150 3500 60 
F10 "UART_TXD" O L 6150 3600 60 
F11 "3V3" U L 6150 4100 60 
F12 "GND" U L 6150 4200 60 
F13 "AT_MODE" I L 6150 3800 60 
F14 "~RESET" I L 6150 3900 60 
$EndSheet
$Sheet
S 6250 5150 800  700 
U 5212925E
F0 "Oscillator" 50
F1 "oscillator.sch" 50
F2 "GND" U L 6250 5650 60 
F3 "OSC_IN" O L 6250 5350 60 
F4 "OSC_OUT" I L 6250 5450 60 
$EndSheet
$Sheet
S 8200 5300 750  800 
U 521620C8
F0 "Buttons" 50
F1 "buttons.sch" 50
F2 "~RST" O L 8200 5500 60 
F3 "USR" O L 8200 5600 60 
F4 "3V3" U L 8200 5800 60 
F5 "GND" U L 8200 5900 60 
$EndSheet
$Sheet
S 7100 1700 700  900 
U 52163769
F0 "Gyroscope" 50
F1 "gyroscope.sch" 50
F2 "OUTZ" O L 7100 1900 60 
F3 "SLEEP" I L 7100 2100 60 
F4 "3V3" U L 7100 2300 60 
F5 "GND" U L 7100 2400 60 
$EndSheet
$EndSCHEMATC
