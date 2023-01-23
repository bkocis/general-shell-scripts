#### hacks-in-a-nut_shell

##### Scripts for command line access to power settings (mainly interesting on laptop)

- `batt-stat` is a `sensors` based script that pretty-prints current power state

- `suspend-if-battery-low.sh` - crontab based script that checks the battery status and in case of power is less then a chosen threshold value, an alarm tune is played, or the system is put to suspend, saving from an unwanted shutdown due to lack of power 

##### Logging - to generate a record of operations - all of which is interesting only for daily command line users 

- `save_pwd_at_cdl` at each execution of cd saves the pwd to a log file with time stamp 

- `term_pwd_log` functions for logging 

##### Fun

- `ascii collection` contains asciis-art for any purpose 

                 
      ▀▄   ▄▀     
     ▄█▀███▀█▄    
    █▀███████▀█   
    █ █▀▀▀▀▀█ █   
       ▀▀ ▀▀