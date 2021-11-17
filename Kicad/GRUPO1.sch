EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Bluetooth:BTM112 U1
U 1 1 618841B7
P 2600 5200
F 0 "U1" H 2600 6581 50  0000 C CNN
F 1 "HC-05" H 2600 6490 50  0000 C CNN
F 2 "" H 2600 5200 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Wireless/Bluetooth/BTM112_wATcommands.pdf" H 2600 5200 50  0001 C CNN
	1    2600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_EBC Q1
U 1 1 618881AE
P 5350 3350
F 0 "Q1" H 5540 3396 50  0000 L CNN
F 1 "pwm" H 5540 3305 50  0000 L CNN
F 2 "" H 5550 3450 50  0001 C CNN
F 3 "~" H 5350 3350 50  0001 C CNN
	1    5350 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_EBC Q2
U 1 1 61888977
P 6300 3350
F 0 "Q2" H 6490 3396 50  0000 L CNN
F 1 "pwm" H 6490 3305 50  0000 L CNN
F 2 "" H 6500 3450 50  0001 C CNN
F 3 "~" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_EBC Q3
U 1 1 61889246
P 7250 3350
F 0 "Q3" H 7440 3396 50  0000 L CNN
F 1 "pwm" H 7440 3305 50  0000 L CNN
F 2 "" H 7450 3450 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
	1    7250 3350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61889B45
P 5450 4800
F 0 "#PWR?" H 5450 4550 50  0001 C CNN
F 1 "Earth" H 5450 4650 50  0001 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "~" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6188A022
P 6400 4800
F 0 "#PWR?" H 6400 4550 50  0001 C CNN
F 1 "Earth" H 6400 4650 50  0001 C CNN
F 2 "" H 6400 4800 50  0001 C CNN
F 3 "~" H 6400 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6188A5E5
P 7350 4800
F 0 "#PWR?" H 7350 4550 50  0001 C CNN
F 1 "Earth" H 7350 4650 50  0001 C CNN
F 2 "" H 7350 4800 50  0001 C CNN
F 3 "~" H 7350 4800 50  0001 C CNN
	1    7350 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6188AC46
P 2600 6700
F 0 "#PWR?" H 2600 6450 50  0001 C CNN
F 1 "Earth" H 2600 6550 50  0001 C CNN
F 2 "" H 2600 6700 50  0001 C CNN
F 3 "~" H 2600 6700 50  0001 C CNN
	1    2600 6700
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61893454
P 8200 1700
F 0 "#PWR?" H 8200 1450 50  0001 C CNN
F 1 "Earth" H 8200 1550 50  0001 C CNN
F 2 "" H 8200 1700 50  0001 C CNN
F 3 "~" H 8200 1700 50  0001 C CNN
	1    8200 1700
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61893E84
P 8300 4800
F 0 "#PWR?" H 8300 4550 50  0001 C CNN
F 1 "Earth" H 8300 4650 50  0001 C CNN
F 2 "" H 8300 4800 50  0001 C CNN
F 3 "~" H 8300 4800 50  0001 C CNN
	1    8300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 618943C8
P 9050 4800
F 0 "#PWR?" H 9050 4550 50  0001 C CNN
F 1 "Earth" H 9050 4650 50  0001 C CNN
F 2 "" H 9050 4800 50  0001 C CNN
F 3 "~" H 9050 4800 50  0001 C CNN
	1    9050 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61894989
P 9850 4800
F 0 "#PWR?" H 9850 4550 50  0001 C CNN
F 1 "Earth" H 9850 4650 50  0001 C CNN
F 2 "" H 9850 4800 50  0001 C CNN
F 3 "~" H 9850 4800 50  0001 C CNN
	1    9850 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_EBC Q4
U 1 1 61896287
P 8200 3400
F 0 "Q4" H 8390 3446 50  0000 L CNN
F 1 "pwm" H 8390 3355 50  0000 L CNN
F 2 "" H 8400 3500 50  0001 C CNN
F 3 "~" H 8200 3400 50  0001 C CNN
	1    8200 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_EBC Q5
U 1 1 6189664F
P 8950 3400
F 0 "Q5" H 9140 3446 50  0000 L CNN
F 1 "pwm" H 9140 3355 50  0000 L CNN
F 2 "" H 9150 3500 50  0001 C CNN
F 3 "~" H 8950 3400 50  0001 C CNN
	1    8950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_EBC Q6
U 1 1 61896A12
P 9750 3400
F 0 "Q6" H 9940 3446 50  0000 L CNN
F 1 "pwm" H 9940 3355 50  0000 L CNN
F 2 "" H 9950 3500 50  0001 C CNN
F 3 "~" H 9750 3400 50  0001 C CNN
	1    9750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6700 2600 6400
Wire Wire Line
	5450 4800 5450 4300
Wire Wire Line
	6400 4800 6400 4350
Wire Wire Line
	7350 4800 7350 4350
Wire Wire Line
	9050 4800 9050 4350
Wire Wire Line
	9850 3850 9850 3600
Wire Wire Line
	9050 3850 9050 3600
Wire Wire Line
	8300 3850 8300 3600
Wire Wire Line
	7350 3850 7350 3550
Wire Wire Line
	6400 3850 6400 3550
Wire Wire Line
	5450 3800 5450 3550
Wire Wire Line
	7050 1700 8200 1700
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 6189E4B4
P 6050 1700
F 0 "A1" V 6004 656 50  0000 R CNN
F 1 "Arduino_Nano_v2.x" V 6095 656 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 6050 1700 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6050 1700 50  0001 C CNN
	1    6050 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	8300 4800 8300 4350
Wire Wire Line
	9850 4800 9850 4350
Wire Wire Line
	6100 3350 6100 3250
Wire Wire Line
	7050 3350 6650 3350
Wire Wire Line
	6650 3350 6650 3200
$Comp
L Motor:Motor_DC M?
U 1 1 618C2260
P 5450 4000
F 0 "M?" H 5608 3996 50  0000 L CNN
F 1 "Motor_DC" H 5608 3905 50  0000 L CNN
F 2 "" H 5450 3910 50  0001 C CNN
F 3 "~" H 5450 3910 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 618C2B73
P 6400 4050
F 0 "M?" H 6558 4046 50  0000 L CNN
F 1 "Motor_DC" H 6558 3955 50  0000 L CNN
F 2 "" H 6400 3960 50  0001 C CNN
F 3 "~" H 6400 3960 50  0001 C CNN
	1    6400 4050
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 618C3037
P 7350 4050
F 0 "M?" H 7508 4046 50  0000 L CNN
F 1 "Motor_DC" H 7508 3955 50  0000 L CNN
F 2 "" H 7350 3960 50  0001 C CNN
F 3 "~" H 7350 3960 50  0001 C CNN
	1    7350 4050
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 618C3499
P 8300 4050
F 0 "M?" H 8458 4046 50  0000 L CNN
F 1 "Motor_DC" H 8458 3955 50  0000 L CNN
F 2 "" H 8300 3960 50  0001 C CNN
F 3 "~" H 8300 3960 50  0001 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 618C38FB
P 9050 4050
F 0 "M?" H 9208 4046 50  0000 L CNN
F 1 "Motor_DC" H 9208 3955 50  0000 L CNN
F 2 "" H 9050 3960 50  0001 C CNN
F 3 "~" H 9050 3960 50  0001 C CNN
	1    9050 4050
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 618C3D1F
P 9850 4050
F 0 "M?" H 10008 4046 50  0000 L CNN
F 1 "Motor_DC" H 10008 3955 50  0000 L CNN
F 2 "" H 9850 3960 50  0001 C CNN
F 3 "~" H 9850 3960 50  0001 C CNN
	1    9850 4050
	1    0    0    -1  
$EndComp
Text GLabel 5400 2650 0    50   Input ~ 0
3.5V
Text GLabel 6400 2650 0    50   Input ~ 0
3.5V
Text GLabel 7350 2650 0    50   Input ~ 0
3.5V
Text GLabel 8300 2650 0    50   Input ~ 0
3.5V
Text GLabel 9050 2650 0    50   Input ~ 0
3.5V
Text GLabel 9850 2650 0    50   Input ~ 0
3.5V
Wire Wire Line
	5450 3150 5450 2650
Wire Wire Line
	5450 2650 5400 2650
Wire Wire Line
	6400 3150 6400 2650
Wire Wire Line
	7350 3150 7350 2650
Wire Wire Line
	8300 3200 8300 2650
Wire Wire Line
	9050 3200 9050 2650
Wire Wire Line
	9850 3200 9850 2650
Text GLabel 5900 2500 2    50   Input ~ 0
3.5V
Wire Wire Line
	5900 2500 4900 2500
Wire Wire Line
	4900 2500 4900 1900
Wire Wire Line
	4900 1900 5050 1900
Text GLabel 3800 2650 2    50   Input ~ 0
3.5V
Wire Wire Line
	2600 4000 2600 3950
Wire Wire Line
	2600 3950 3800 3950
Wire Wire Line
	3800 3950 3800 2650
Text GLabel 1150 5450 0    50   Input ~ 0
D7
Text GLabel 1150 5600 0    50   Input ~ 0
D8
Wire Wire Line
	1150 5500 1150 5450
Wire Wire Line
	1150 5500 1800 5500
Wire Wire Line
	1150 5600 1800 5600
Wire Wire Line
	8500 900  8500 2000
Wire Wire Line
	5750 1000 5750 1200
Wire Wire Line
	5950 1050 5950 1200
Wire Wire Line
	6050 1150 6050 1200
Wire Wire Line
	8500 900  6350 900 
Wire Wire Line
	6350 900  6350 1200
Wire Wire Line
	6450 1000 6450 1200
Wire Wire Line
	6550 1200 6550 1100
Text GLabel 6100 750  0    50   Input ~ 0
D7
Text GLabel 6350 700  0    50   Input ~ 0
D8
Wire Wire Line
	6150 1200 6150 750 
Wire Wire Line
	6150 750  6100 750 
Wire Wire Line
	6250 1200 6250 700 
Wire Wire Line
	6250 700  6350 700 
$Comp
L Device:R 100k
U 1 1 619426A4
P 7900 2750
F 0 "100k" H 7970 2796 50  0000 L CNN
F 1 "R" H 7970 2705 50  0000 L CNN
F 2 "" V 7830 2750 50  0001 C CNN
F 3 "~" H 7900 2750 50  0001 C CNN
	1    7900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R 100k
U 1 1 61945698
P 8650 2750
F 0 "100k" H 8720 2796 50  0000 L CNN
F 1 "R" H 8720 2705 50  0000 L CNN
F 2 "" V 8580 2750 50  0001 C CNN
F 3 "~" H 8650 2750 50  0001 C CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R 100k
U 1 1 61945CC2
P 9500 2750
F 0 "100k" H 9570 2796 50  0000 L CNN
F 1 "R" H 9570 2705 50  0000 L CNN
F 2 "" V 9430 2750 50  0001 C CNN
F 3 "~" H 9500 2750 50  0001 C CNN
	1    9500 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R 100k
U 1 1 61949921
P 4300 2650
F 0 "100k" H 4370 2696 50  0000 L CNN
F 1 "R" H 4370 2605 50  0000 L CNN
F 2 "" V 4230 2650 50  0001 C CNN
F 3 "~" H 4300 2650 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R 100k
U 1 1 61949D1B
P 4500 2650
F 0 "100k" H 4570 2696 50  0000 L CNN
F 1 "R" H 4570 2605 50  0000 L CNN
F 2 "" V 4430 2650 50  0001 C CNN
F 3 "~" H 4500 2650 50  0001 C CNN
	1    4500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6194A110
P 4700 2650
F 0 "R?" H 4770 2696 50  0000 L CNN
F 1 "R" H 4770 2605 50  0000 L CNN
F 2 "" V 4630 2650 50  0001 C CNN
F 3 "~" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2500 4300 1000
Wire Wire Line
	4300 1000 5750 1000
Wire Wire Line
	4300 3350 4300 2800
Wire Wire Line
	4300 3350 5150 3350
Wire Wire Line
	4500 3250 4500 2800
Wire Wire Line
	4500 3250 6100 3250
Wire Wire Line
	4500 2500 4500 1050
Wire Wire Line
	4500 1050 5950 1050
Wire Wire Line
	4700 3200 4700 2800
Wire Wire Line
	4700 3200 6650 3200
Wire Wire Line
	4700 2500 4700 1150
Wire Wire Line
	4700 1150 6050 1150
Wire Wire Line
	8000 3400 7900 3400
Wire Wire Line
	7900 3400 7900 2900
Wire Wire Line
	7900 2600 7900 2000
Wire Wire Line
	7900 2000 8500 2000
Wire Wire Line
	8650 3400 8650 2900
Wire Wire Line
	8650 3400 8750 3400
Wire Wire Line
	8700 1000 6450 1000
Wire Wire Line
	8650 2600 8650 2300
Wire Wire Line
	8650 2300 8700 2300
Wire Wire Line
	8700 2300 8700 1000
Wire Wire Line
	9550 3400 9500 3400
Wire Wire Line
	9500 3400 9500 2900
Wire Wire Line
	9500 2600 9500 2100
Wire Wire Line
	9500 2100 9600 2100
Wire Wire Line
	9600 2100 9600 1100
Wire Wire Line
	6550 1100 9600 1100
$EndSCHEMATC
