#!/bin/bash

gnome-open "$1"
var=`pwd`
date=`date`
# the " " is needed for the case of whitespaces in a folder of filename
echo "$date"" : ""$1"" : ""$var" >> ~/.term_log
