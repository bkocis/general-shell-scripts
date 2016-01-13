#!/bin/bash

# case 1 - when a file in opened in the pwd - then no full path is forwarded to vi
var1=`pwd`
# case 1 forwards this line to vi
#echo "$var1""/""$1"


# case 2 - when a file is openned that is away from the pwd - then a full path is 
#	forwarded to vi 

var2=$1


#====execution of the command with correct path 


if [[ $var2 == *"/"* ]]
then
#yes - execute case 2
vi `echo "$var2"`
else
#no - execute case 1
vi `echo "$var1""/""$1"`
fi

# 7.1.2016
#	vi_open.sh is executed in an `alias vi='/bin/mnost_scripts/vi_open.sh` 
#	this piece of code just adds the full path before the file ONLY for
#	the sake of logging. `ps` returns only the filename after the vi command 
#	and not the full path.
#	With the above line the log files store the vi command call together with
#	the full path. 
# 9.1.2016
#	corrected with the if loop
# problem remains for case `../file` and `../../file` 
# the above code forwards to `ps` only the vi ../file, and not the full path 
