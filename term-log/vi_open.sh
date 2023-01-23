#!/bin/bash

<< C

When using `ps` for the system process tree,
the file opened with `vi` is not shown with full path.
This little scripts is meant to be used with an alias, (`alias vi=vi_open.sh`).

When a file is opened with vi thorough the command line,
the whole path of the file will be displayed in the system processes tree (`ps`)

C


# case 1 - when a file in opened in the pwd - then no full path is forwarded to vi
var1=`pwd`
# case 1 forwards this line to vi
#echo "$var1""/""$1"

# case 2 - when a file is openned that is away from the pwd - then a full path is
#	forwarded to vi 
var2="$1"

#====execution of the command with correct path 


if [[ $var2 == *"/"* ]]
then
#yes - execute case 2
vi "`echo "$var2"`"   # the " " is very much needed for the case of empty spaces in folder names!!!
else
#no - execute case 1
vi "`echo "$var1""/""$1"`"  # the "`.....`" forwards all, regardless of empty space on the pathname
fi
