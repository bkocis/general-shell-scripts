#!/bin/bash

<< C

opens a few terminal windows for dashboard like display of cpu/gpu numbers

C

`xfce4-terminal --command "watch -n 1 'df -h | grep Filesystem && df -h | grep /$ && df | grep /$ && echo 'mounted drives:' && df -h | grep dracho && df -h | grep barracuda' " --hide-borders --geometry 165x10+700+100 --hide-scrollbar`

`xfce4-terminal --command "watch -n 1 nvidia-smi" --hide-borders --geometry 85x25+100+100 --hide-scrollbar --hide-borders`

`xfce4-terminal --command "htop -d 8" --hide-borders --geometry 240x18+100+550 --hide-scrollbar`
