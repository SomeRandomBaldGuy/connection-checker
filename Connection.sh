#!/bin/bash
# This scipt acts a connectivity check for my lab devices.
units=("Device 01" "Device 02" "Device 03" "Device 04" "Device 05" "Device 06" "Device 07" "Device 08" "Device 09" "Device 10" "Device 11" "Device 12" "Device 13" "Device 14")
output=/dev/null

#Functions for testing connection on each device.
device01() { ping 192.168.1.1 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[0]} is unreachable."; else echo "${units[0]} is online."; fi }
device02() { ping 192.168.1.2 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[1]} is unreachable."; else echo "${units[1]} is online."; fi }
device03() { ping 192.168.1.3 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[2]} is unreachable."; else echo "${units[2]} is online."; fi }
device04() { ping 192.168.1.4 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[3]} is unreachable."; else echo "${units[3]} is online."; fi }
device05() { ping 192.168.1.5 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[4]} is unreachable."; else echo "${units[4]} is online."; fi }
device06() { ping 192.168.1.6 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[5]} is unreachable."; else echo "${units[5]} is online."; fi }
device07() { ping 192.168.1.7 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[6]} is unreachable."; else echo "${units[6]} is online."; fi }
device08() { ping 192.168.1.8 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[7]} is unreachable."; else echo "${units[7]} is online."; fi }
device09() { ping 192.168.1.11 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[8]} is unreachable."; else echo "${units[8]} is online."; fi }
device10() { ping 192.168.1.12 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[9]} is unreachable."; else echo "${units[9]} is online."; fi }
device11() { ping 192.168.1.13 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[10]} is unreachable."; else echo "${units[10]} is online."; fi }
device12() { ping 192.168.1.14 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[11]} is unreachable."; else echo "${units[11]} is online."; fi }
device13() { ping 192.168.1.15 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[12]} is unreachable."; else echo "${units[12]} is online."; fi } 
device14() { ping 192.168.1.16 -c 2 > $output; if [ $? -ne 0 ]; then echo "${units[13]} is unreachable."; else echo "${units[13]} is online."; fi }

#Function for checking internet status with a DNS server ping.
internet() { ping 9.9.9.9 -c 4 > /dev/null; if [ $? -ne 0 ]; then echo "The internet is unreachble."; else echo "The internet is connected and reachable."; fi }

echo "The scipt will now test your devices connection status. Please wait..."; echo
device01; device02; device03; device04; device05; device06; device07; device08; device09; device10; device11; device12; device13; device14; internet
echo; echo "The script has now completed."
