EESchema Schematic File Version 4
LIBS:master_circuit-cache
EELAYER 26 0
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
L ESP8266:NodeMCU1.0(ESP-12E) U1
U 1 1 5C0CC8E9
P 5300 4050
F 0 "U1" H 5300 5137 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 5300 5031 60  0000 C CNN
F 2 "ESP8266:NodeMCU1.0(12-E)" H 5250 1050 60  0001 C CNN
F 3 "" H 4700 3200 60  0000 C CNN
	1    5300 4050
	1    0    0    -1  
$EndComp
$Comp
L Relay_dung:FINDER-32.21-x300 K1
U 1 1 5C0CCCE1
P 5500 6350
F 0 "K1" H 5930 6350 50  0000 L CNN
F 1 "FINDER-32.21-x300" H 5930 6305 50  0001 L CNN
F 2 "ESP8266:YX209E" H 6770 6320 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 5500 6350 50  0001 C CNN
	1    5500 6350
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 5C0CCEC2
P 4850 6350
F 0 "D1" V 4850 6222 50  0000 R CNN
F 1 "DIODE" V 4805 6222 50  0001 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 4850 6350 50  0001 C CNN
F 3 "" H 4850 6350 50  0001 C CNN
	1    4850 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 6150 4850 6000
Wire Wire Line
	4850 6000 5300 6000
Wire Wire Line
	5300 6000 5300 6050
Wire Wire Line
	4850 6550 4850 6700
Wire Wire Line
	4850 6700 5300 6700
Wire Wire Line
	5300 6700 5300 6650
$Comp
L power:+5V #PWR0101
U 1 1 5C0CD3A2
P 4850 5950
F 0 "#PWR0101" H 4850 5800 50  0001 C CNN
F 1 "+5V" H 4865 6123 50  0000 C CNN
F 2 "" H 4850 5950 50  0001 C CNN
F 3 "" H 4850 5950 50  0001 C CNN
	1    4850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5950 4850 6000
Connection ~ 4850 6000
$Comp
L Device:R R1
U 1 1 5C0CD6C6
P 4300 6900
F 0 "R1" V 4093 6900 50  0000 C CNN
F 1 "1k" V 4184 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4230 6900 50  0001 C CNN
F 3 "~" H 4300 6900 50  0001 C CNN
	1    4300 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C0CD743
P 4500 7100
F 0 "R2" H 4430 7054 50  0000 R CNN
F 1 "10k" H 4430 7145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 7100 50  0001 C CNN
F 3 "~" H 4500 7100 50  0001 C CNN
	1    4500 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 6900 4500 6900
Wire Wire Line
	4500 6950 4500 6900
Connection ~ 4500 6900
Wire Wire Line
	4500 6900 4550 6900
Wire Wire Line
	4500 7250 4500 7300
Wire Wire Line
	4500 7300 4850 7300
Wire Wire Line
	4850 7300 4850 7100
$Comp
L power:GND #PWR0102
U 1 1 5C0CDF2E
P 4850 7350
F 0 "#PWR0102" H 4850 7100 50  0001 C CNN
F 1 "GND" H 4855 7177 50  0000 C CNN
F 2 "" H 4850 7350 50  0001 C CNN
F 3 "" H 4850 7350 50  0001 C CNN
	1    4850 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7350 4850 7300
Connection ~ 4850 7300
Text GLabel 6200 4050 2    50   BiDi ~ 0
IO14
Wire Wire Line
	6100 4050 6200 4050
Text GLabel 4100 6900 0    50   BiDi ~ 0
IO14
Wire Wire Line
	4100 6900 4150 6900
$Comp
L hi-link:Hi-Link U2
U 1 1 5C0CED81
P 9400 5700
F 0 "U2" H 9400 6406 157 0000 C CNN
F 1 "Hi-Link" H 9400 6154 157 0000 C CNN
F 2 "footprints:HLK-PM" H 9400 5700 157 0001 C CNN
F 3 "" H 9400 5700 157 0001 C CNN
	1    9400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C0CF0E1
P 10150 5700
F 0 "C3" H 10265 5746 50  0000 L CNN
F 1 "C" H 10265 5655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 10188 5550 50  0001 C CNN
F 3 "~" H 10150 5700 50  0001 C CNN
	1    10150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5600 8600 5600
$Comp
L Device:Fuse F2
U 1 1 5C0CFEE5
P 8350 5600
F 0 "F2" V 8153 5600 50  0000 C CNN
F 1 "Fuse" V 8244 5600 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" V 8280 5600 50  0001 C CNN
F 3 "~" H 8350 5600 50  0001 C CNN
	1    8350 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 5500 10150 5500
Wire Wire Line
	10150 5500 10150 5550
Wire Wire Line
	10000 5900 10150 5900
Wire Wire Line
	10150 5900 10150 5850
$Comp
L power:+5V #PWR0103
U 1 1 5C0D0E4F
P 10150 5400
F 0 "#PWR0103" H 10150 5250 50  0001 C CNN
F 1 "+5V" H 10165 5573 50  0000 C CNN
F 2 "" H 10150 5400 50  0001 C CNN
F 3 "" H 10150 5400 50  0001 C CNN
	1    10150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5400 10150 5500
Connection ~ 10150 5500
$Comp
L power:GND #PWR0104
U 1 1 5C0D133A
P 10150 5950
F 0 "#PWR0104" H 10150 5700 50  0001 C CNN
F 1 "GND" H 10155 5777 50  0000 C CNN
F 2 "" H 10150 5950 50  0001 C CNN
F 3 "" H 10150 5950 50  0001 C CNN
	1    10150 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5900 10150 5950
Connection ~ 10150 5900
$Comp
L Device:C C1
U 1 1 5C0D190B
P 6700 3850
F 0 "C1" H 6500 3900 50  0000 L CNN
F 1 "10uF" H 6450 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6738 3700 50  0001 C CNN
F 3 "~" H 6700 3850 50  0001 C CNN
	1    6700 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C0D19DD
P 6900 3850
F 0 "C2" H 7015 3896 50  0000 L CNN
F 1 "10uF" H 7015 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6938 3700 50  0001 C CNN
F 3 "~" H 6900 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5C0D1A8B
P 6600 3600
F 0 "#PWR0105" H 6600 3450 50  0001 C CNN
F 1 "+5V" H 6615 3773 50  0000 C CNN
F 2 "" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3650 6700 3700
Wire Wire Line
	6900 3650 6900 3700
$Comp
L power:GND #PWR0106
U 1 1 5C0D26FB
P 6800 4100
F 0 "#PWR0106" H 6800 3850 50  0001 C CNN
F 1 "GND" H 6805 3927 50  0000 C CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "" H 6800 4100 50  0001 C CNN
	1    6800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4000 6700 4050
Wire Wire Line
	6700 4050 6800 4050
Wire Wire Line
	6900 4050 6900 4000
Wire Wire Line
	6800 4100 6800 4050
Connection ~ 6800 4050
Wire Wire Line
	6800 4050 6900 4050
Wire Wire Line
	6700 3650 6900 3650
Wire Wire Line
	6600 3600 6600 3650
Wire Wire Line
	6600 3650 6700 3650
Connection ~ 6700 3650
Text GLabel 6950 3650 2    50   BiDi ~ 0
Vin
Wire Wire Line
	6950 3650 6900 3650
Connection ~ 6900 3650
Text GLabel 4350 4750 0    50   BiDi ~ 0
Vin
$Comp
L Device:Fuse F1
U 1 1 5C0D7054
P 5800 5800
F 0 "F1" H 5860 5846 50  0000 L CNN
F 1 "Fuse" H 5860 5755 50  0000 L CNN
F 2 "footprints:B78108E" V 5730 5800 50  0001 C CNN
F 3 "~" H 5800 5800 50  0001 C CNN
	1    5800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5650 6550 5650
Wire Wire Line
	6550 5750 6200 5750
Wire Wire Line
	6200 5750 6200 6700
Wire Wire Line
	6200 6700 5700 6700
Wire Wire Line
	5700 6700 5700 6650
Wire Wire Line
	5800 5950 5800 6050
$Comp
L Device:Varistor RV1
U 1 1 5C0CE255
P 8600 5800
F 0 "RV1" H 8400 5800 50  0000 L CNN
F 1 "Varistor" H 8703 5755 50  0001 L CNN
F 2 "Capacitor_THT:C_Disc_D10.5mm_W5.0mm_P7.50mm" V 8530 5800 50  0001 C CNN
F 3 "~" H 8600 5800 50  0001 C CNN
	1    8600 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5650 8600 5600
Wire Wire Line
	8600 5600 8800 5600
Connection ~ 8600 5600
Wire Wire Line
	8800 5800 8750 5800
Wire Wire Line
	8750 5800 8750 5950
Wire Wire Line
	8750 5950 8600 5950
Connection ~ 8600 5950
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C0D1678
P 7800 5850
F 0 "J3" H 7880 5842 50  0000 L CNN
F 1 "Motor" H 7700 5650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7800 5850 50  0001 C CNN
F 3 "~" H 7800 5850 50  0001 C CNN
	1    7800 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 5750 8100 5750
Wire Wire Line
	8100 5750 8100 5600
Wire Wire Line
	8100 5600 8200 5600
Wire Wire Line
	8000 5850 8100 5850
Wire Wire Line
	8100 5850 8100 5950
Wire Wire Line
	8100 5950 8600 5950
$Comp
L Transistor:2N7002 Q1
U 1 1 5C0D3A20
P 4750 6900
F 0 "Q1" H 4955 6946 50  0000 L CNN
F 1 "2N7002" H 4955 6855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23" H 4950 7000 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/ST%20Microelectronics%20PDFS/2N7000,%202N7002.pdf" H 4950 6950 50  0001 C CNN
F 4 "2N7002" H 5050 7050 60  0001 C CNN "manf#"
F 5 "AO3400" H 5150 7150 60  0001 C CNN "Compatible"
F 6 "NMOS_GSD" H 5250 7250 60  0001 C CNN "Type"
	1    4750 6900
	1    0    0    -1  
$EndComp
Connection ~ 4850 6700
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5C0D3EF3
P 6750 5650
F 0 "J1" H 6830 5646 50  0000 L CNN
F 1 "Conn_01x01" H 6830 5601 50  0001 L CNN
F 2 "footprints:Hold_Pin_AC_SS" H 6750 5650 50  0001 C CNN
F 3 "~" H 6750 5650 50  0001 C CNN
	1    6750 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5C0D3FFB
P 6750 5750
F 0 "J2" H 6830 5746 50  0000 L CNN
F 1 "Conn_01x01" H 6830 5701 50  0001 L CNN
F 2 "footprints:Hold_Pin_AC_SS" H 6750 5750 50  0001 C CNN
F 3 "~" H 6750 5750 50  0001 C CNN
	1    6750 5750
	1    0    0    -1  
$EndComp
Text Notes 8050 3500 0    157  ~ 31
KHÓA LUẬN TỐT NGHIỆP\n     VÕ TRÍ DŨNG\n     3114490015
Wire Bus Line
	11200 2200 3350 2200
Wire Bus Line
	3350 2200 3350 7800
Wire Bus Line
	3350 7800 3400 7800
Wire Bus Line
	3400 7800 3400 5100
Wire Bus Line
	3400 2250 7400 2250
Wire Bus Line
	11200 2250 11200 2200
Wire Bus Line
	7400 2250 7400 5050
Wire Bus Line
	7400 6550 7450 6550
Wire Bus Line
	7450 6550 7450 4150
Connection ~ 7400 2250
Wire Bus Line
	7400 2250 7450 2250
Connection ~ 7450 2250
Wire Bus Line
	7450 2250 11200 2250
Wire Bus Line
	7450 4100 11200 4100
Wire Bus Line
	11200 4100 11200 4150
Wire Bus Line
	11200 4150 7450 4150
Connection ~ 7450 4100
Wire Bus Line
	7450 4100 7450 2250
Connection ~ 7450 4150
Wire Bus Line
	7450 4150 7450 4100
Wire Bus Line
	3400 5050 7400 5050
Connection ~ 3400 5050
Wire Bus Line
	3400 5050 3400 2250
Connection ~ 7400 5050
Wire Bus Line
	7400 5050 7400 5100
Wire Bus Line
	7400 5100 3400 5100
Connection ~ 7400 5100
Wire Bus Line
	7400 5100 7400 6550
Connection ~ 3400 5100
Wire Bus Line
	3400 5100 3400 5050
Text Notes 8700 4600 0    118  ~ 24
SOURCE BLOCK
Text Notes 4750 2600 0    118  ~ 24
MCU BLOCK
Text Notes 4400 5450 0    118  ~ 24
CONTROL RELAY BLOCK
NoConn ~ 4500 3350
NoConn ~ 4500 3450
NoConn ~ 4500 3550
NoConn ~ 4500 3650
NoConn ~ 4500 3750
NoConn ~ 4500 3850
NoConn ~ 4500 3950
NoConn ~ 4500 4050
NoConn ~ 4500 4150
NoConn ~ 4500 4350
NoConn ~ 4500 4450
NoConn ~ 4500 4550
NoConn ~ 6100 4750
NoConn ~ 6100 4550
NoConn ~ 6100 4450
NoConn ~ 6100 4350
NoConn ~ 6100 4250
NoConn ~ 6100 3850
NoConn ~ 6100 3750
NoConn ~ 6100 3650
NoConn ~ 6100 3550
NoConn ~ 6100 3450
NoConn ~ 6100 3350
$Comp
L power:GND #PWR0107
U 1 1 5C0EE3AC
P 6250 4700
F 0 "#PWR0107" H 6250 4450 50  0001 C CNN
F 1 "GND" H 6255 4527 50  0000 C CNN
F 2 "" H 6250 4700 50  0001 C CNN
F 3 "" H 6250 4700 50  0001 C CNN
	1    6250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4650 6250 4650
Wire Wire Line
	6250 4650 6250 4700
$Comp
L power:GND #PWR0108
U 1 1 5C0EF0DE
P 6250 4200
F 0 "#PWR0108" H 6250 3950 50  0001 C CNN
F 1 "GND" H 6255 4027 50  0000 C CNN
F 2 "" H 6250 4200 50  0001 C CNN
F 3 "" H 6250 4200 50  0001 C CNN
	1    6250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4150 6150 4150
Wire Wire Line
	6250 4150 6250 4200
Wire Wire Line
	6100 3950 6150 3950
Wire Wire Line
	6150 3950 6150 4150
Connection ~ 6150 4150
Wire Wire Line
	6150 4150 6250 4150
$Comp
L power:GND #PWR0109
U 1 1 5C0F0E61
P 4400 4300
F 0 "#PWR0109" H 4400 4050 50  0001 C CNN
F 1 "GND" H 4405 4127 50  0000 C CNN
F 2 "" H 4400 4300 50  0001 C CNN
F 3 "" H 4400 4300 50  0001 C CNN
	1    4400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4300 4400 4250
Wire Wire Line
	4400 4250 4500 4250
$Comp
L power:GND #PWR0110
U 1 1 5C0F203F
P 4450 4800
F 0 "#PWR0110" H 4450 4550 50  0001 C CNN
F 1 "GND" H 4455 4627 50  0000 C CNN
F 2 "" H 4450 4800 50  0001 C CNN
F 3 "" H 4450 4800 50  0001 C CNN
	1    4450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4650 4500 4650
Wire Wire Line
	4450 4650 4450 4750
Wire Wire Line
	4450 4750 4450 4800
Wire Wire Line
	4350 4750 4500 4750
$EndSCHEMATC