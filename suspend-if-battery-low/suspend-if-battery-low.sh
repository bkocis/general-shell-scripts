#!/bin/bash

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
if [ $battery_level -le 15 ]
then
    play /usr/share/mint-artwork-cinnamon/sounds/magic_message_3.wav
    for i in `seq 1 7`;
    do
        play /usr/share/mint-artwork-cinnamon/sounds/magic_message_3.wav
	
    done
fi


if [ $battery_level -le 7 ]
then
    sudo pm-suspend
fi
