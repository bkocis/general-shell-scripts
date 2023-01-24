#!/bin/bash

echo "Truning_monitor_off!"

export DISPLAY=:0; xset dpms force off
