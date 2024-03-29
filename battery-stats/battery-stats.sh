#!/bin/bash
# pretty print of the `sensors` standard output

clear
echo -e "\e[38;5;160m$PWD\e[0m"

v01=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state"`
v02=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage"`
v03=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "time\ to"`
v1=`sensors | sed -n "3p"`
v2=`sensors | sed -n "7p"`
v3=`sensors | sed -n "11,13p"`

sv01=($v01)
sv02=($v02)
sv03=($v03)
sv1=($v1)
sv2=($v2)
sv3=($v3)
vf=`free -m | sed -n "3p"`
svf=($vf)

echo -e "battery state:          ""\e[38;5;160m${sv01[-1]}\e[0m"
echo -e "        percentage:     ""\e[38;5;160m${sv02[-1]}\e[0m"
echo -e "        ETA till empty: ""\e[38;5;160m${sv03[-2]}\e[0m"" ${sv03[-1]}"

echo -e "Memory       ""     used:\033[0;36m ${svf[-2]}\033[0m"
echo -e "fan1:                   ""\e[38;5;160m${sv2[-2]}\e[0m" "${sv2[-1]}"
echo -e "temp1:                  ""\033[0;33m${sv1[1]}\033[0m"
echo -e "Phys.id.0:              ""\033[0;33m${sv3[3]}\033[0m"
echo -e "Core0:                  ""\033[0;33m${sv3[12]}\033[0m"
echo -e "Core1:                  ""\033[0;33m${sv3[21]}\033[0m"
echo -e "\e[38;5;52m`date +' %A'`""                              \e[38;5;160m`date +'  %T'`"
echo -e "\e[38;5;52m`date +'%D'`\e[0m"
