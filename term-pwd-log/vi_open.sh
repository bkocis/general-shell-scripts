#!/bin/bash

var=`pwd`

vi `echo "$var""/""$1"`

# 7.1.2016
#	vi_open.sh is executed in an `alias vi='/bin/mnost_scripts/vi_open.sh` 
#	this piece of code just adds the full path before the file ONLY for
#	the sake of logging. `ps` returns only the filename after the vi command 
#	and not the full path.
#	With the above line the log files store the vi command call together with
#	the full path. 
