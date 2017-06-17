#!/bin/bash

MAX_BRIGHTNESS=$(cat /sys/class/backlight/acpi_video0/max_brightness);

error_report(){
	printf "error: the backlight brightness value $1 is out of range, use only [0,$MAX_BRIGHTNESS]\n";
}

if [ $1 -ge 0 ] &&  [ $1 -le $MAX_BRIGHTNESS ]; 
then echo $1 > /sys/class/backlight/acpi_video0/brightness; 
else error_report; 
fi;
