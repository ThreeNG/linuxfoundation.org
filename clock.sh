#!/bin/bash
# Color for print screen
COLOR_RED='\033[0;31m' 						# red color
COLOR_BLUE='\033[0;34m'						# blue color
COLOR_GREEN='\033[0;32m'					# green color
COLOR_YELLOW='\033[1;33m'					# yellow color
COLOR_CYAN='\033[46m'						# cyan color
COLOR_NO='\033[0m' 							# No Color
while : 
do
	for i in $COLOR_RED $COLOR_BLUE $COLOR_GREEN $COLOR_YELLOW $COLOR_NO
	do
		ti=` date +%r`
		echo -e -n "\033[7s"
		tput cup 0 69
		echo -n -e "$i $ti $CORLOR_NO"
		echo -e -n "\033[8u"
		sleep 1
	done
done

