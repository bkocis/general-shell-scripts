#!/bin/bash

# personal logger, adds an entry to a flowing text

#cat >> /home/mnost/.lllogme.txt
var1=`pwd`
var2=`date`
echo "Write a memo:"
read x
echo "$var2""_____""$var1" >> /home/mnost/.lllogme.txt
echo "Message" >> /home/mnost/.lllogme.txt
echo "$x" >> /home/mnost/.lllogme.txt

echo "+" >> /home/mnost/.lllogme.txt
echo "+" >> /home/mnost/.lllogme.txt
echo "+" >> /home/mnost/.lllogme.txt
echo "+" >> /home/mnost/.lllogme.txt

