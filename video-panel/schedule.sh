#!/bin/bash
#-------------------------------------------------------------------------------

<< DESCRIPTION
This script executes a schedule displaying images, video, youtube-videos, etc.
It is executed and closed using crontab and the scripts therein:
	turn_on.sh
	turn_off.sh



DESCRIPTION

#-------------------------------------------------------------------------------

FileToPlay="Lieblingslinks.txt"
FILES='./images/*'
MP4_vids='./videos/'

# MAKE AN ARRAY OF ALL THE IMAGES
fl=( `find $FILES -iname '*.jpg' -or -iname '*.png' ` )
ll=${#fl[@]}
echo "Total number of photos: " $ll
lv=`echo $ll-1 | bc`


number_of_vids=2
number_of_photos_YOU=3  #number of photos between videos 
number_of_photos_MP4_=5  #number of photos between a youtobe video and an mp4 video

number_of_photos_MP4=`echo $number_of_photos_YOU + $number_of_photos_MP4_ | bc`


# DEFINE FUNCTIONS

show_a_pic(){
	#echo "$1"
	mirage -f "$1" 2>/dev/null &
	sleep 30
	killall mirage "$1"
}


play_a_youtube_vid(){
	for LINK in $(cat $FileToPlay | shuf -n $number_of_vids )
	do
		echo "Playing : $LINK"
		omxplayer "$(youtube-dl -g $LINK)"
	done
}

play_an_mp4(){
	var=`find $MP4_vids -iname '*.mp4' | shuf -n1`
	echo "Playing MP4 video: $var"
	omxplayer "$var"
}


startingi_random(){
	number=$RANDOM; let "number %= $lv"; echo $number
}

#startingi=`startingi_random`


# LOOP THROUGH ALL ELEMENTS OF THE LIST 
while true
do
	startingi=`startingi_random`
	k=0
	for i in $(seq $startingi $lv )
	do
		k=`echo "$k + 1" | bc`
		echo $k
		echo $i "th photo is " ${fl[i]}
		if [ $k = $number_of_photos_YOU ]; then
			echo 'showing a video'
			play_a_youtube_vid
			#k=0
		fi
		echo "showing a pic"
		show_a_pic "${fl[i]}"
		
		if [ $k = $number_of_photos_MP4 ]; then
			echo ' playing an mp4'
			play_an_mp4
			k=0
		fi
		
	done
done


