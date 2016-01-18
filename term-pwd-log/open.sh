#!/bin/bash

gnome-open "$1"
# the " " is needed for the case of whitespaces in a folder of filename 
#var=`pwd`
date=`date`
echo "$date"" : ""$1" >> /home/mnost/.term_log2
