# This scipt acts a connectivity check for my lab devices.

a="Device 01"
b="Device 02"
c="Device 03"
d="Device 04"
e="Device 05"
f="Device 06"
g="Device 07"
h="Device 08"
i="Device 09"
j="Device 10"
k="Device 11"
l="Device 12"
m="Device 13"
n="Device 14"



#Function for device 1.
device01() {
     ping 192.168.1.1 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$a is unreachable."
     else
          echo "$a is online."
     fi
}

#Function for device 2.
device02() {
     ping 192.168.1.2 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$b is unreachable."
     else
          echo "$b is online."
     fi
}

#Function for device 3.
device03() {
     ping 192.168.1.3 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$c is unreachable."
     else
          echo "$c is online."
     fi
}

#Function for device 4.
device04() {
     ping 192.168.1.4 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$d is unreachable."
     else
          echo "$d is online."
     fi
}

#Function for device 5.
device05() {
     ping 192.168.1.5 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$e is unreachable."
     else
          echo "$e is online."
     fi
}

#Function for device 6.
device06() {
     ping 192.168.1.6 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then 
          echo "$f is unreachable."
     else
          echo "$f is online."
     fi
}

#Function for device 7.
device07() {
     ping 192.168.1.7 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$g is unreachable."
     else
          echo "$g is online."
     fi
}

#Function for device 8.
device08() {
     ping 192.168.1.8 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$h is unreachable."
     else 
          echo "$h is online."
     fi
}

#Function for device 9.
device09() {
     ping 192.168.1.11 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$i is unreachable."
     else 
          echo "$i is online."
     fi
}

#Function for device 10.
device10() {
     ping 192.168.1.12 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$j is unreachable."
     else
          echo "$j is online."
     fi
}

#Function for device 11.
device11() {
     ping 192.168.1.13 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$k is unreachable."
     else 
          echo "$k is online."
     fi
}

#Function for device 12.
device12() {
     ping 192.168.1.14 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$l is unreachable."
     else 
          echo "$l is online."
     fi
}

#Function for device 13.
device13() {
     ping 192.168.1.15 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$m is unreachable."
     else
          echo "$m is online."
     fi
}     
     
#Function for device 14.
device14() {
     ping 192.168.1.252 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "$n is unreachable."
     else
          echo "$n is online."
     fi
}

#Function for checking internet status with a DNS server ping.
internet() {
     ping 9.9.9.9 -c 4 > /dev/null
     if [ $? -ne 0 ]
     then
          echo "The internet is unreachble."
     else
          echo "The internet is connected and reachable."
     fi
}

echo "The scipt will now test your devices connection status. Please wait..."
echo

device01
device02
device03
device04
device05
device06
device07
device08
device09
device10
device11 
device12
device13
device14
internet

echo
echo "The script has now completed."
