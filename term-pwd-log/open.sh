#!/bin/bash

gnome-open $1

#var=`pwd`
date=`date`
echo "$date"" : ""$1" >> /home/mnost/.term_log2
