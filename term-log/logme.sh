#!/bin/bash

<< C
Logging general user input from the command line.
C

var1=`pwd`
var2=`date`
echo "Write a memo:"
read x
echo "$var2""_____""$var1" >> ~/.logme.txt
echo "Message" >> ~/.logme.txt
echo "$x" >> ~/.logme.txt
echo "+++" >> /~/.logme.txt


