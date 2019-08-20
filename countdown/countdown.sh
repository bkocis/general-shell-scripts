#!/bin/bash
countdown_1() {
i=10; 
while [ $i -gt 0 ]; 
do 
	echo $i seconds remaining; 
	i=`expr $i - 1`; 
	sleep 1;  
done
}

countdown_2() {
while true; 
do 
	echo -ne "`date +%H:%M:%S:%N`\r";
done
}

countdown_3() {
  IFS=:
  set -- $*
  secs=$(( ${1#0} * 3600 + ${2#0} * 60 + ${3#0} ))
  while [ $secs -gt 0 ]
  do
    sleep 1 &
    printf "\r%02d:%02d:%02d" $((secs/3600)) $(( (secs/60)%60)) $((secs%60))
    secs=$(( $secs - 1 ))
    wait
  done
  echo "End!"
  echo `date`
}

#countdown_3 "01:30:00"
clear; countdown_3 $1
