### Repository for bash shell scripts  
___
## General shell scripts for various purposes 

##### Scripts for command line access to power settings (mainly interesting on laptop)

- `battery-stat` is a `sensors` based script that pretty-prints current power state

- `suspend-if-battery-low.sh` - crontab based script that checks the battery status and in case of power is less then a chosen threshold value, an alarm tune is played, or the system is put to suspend, saving from an unwanted shutdown due to lack of power 

##### Logging - to generate a record of operations - all of which is interesting only for daily command line users 

- `term_log` functions for logging 

##### Fun

- `ascii-image-echo`
