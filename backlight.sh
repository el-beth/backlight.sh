#!/bin/bash

MAX_BRIGHTNESS=$(cat /sys/class/backlight/*/max_brightness);
USERNAME=$(whoami)

checkUser(){
	if [ $USERNAME != "root" ]; 
		then printf "\nrun this script as root\n" && exit; 
		fi;
}

error_report(){
	printf "error: the backlight brightness value $1 is out of range, use only [0,$MAX_BRIGHTNESS]\n";
}

checkUser;

if [ $1 -ge 0 ] &&  [ $1 -le $MAX_BRIGHTNESS ]; 
then echo $1 > /sys/class/backlight/0/brightness; 
else error_report; 
fi;
