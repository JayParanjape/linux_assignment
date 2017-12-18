#!/bin/bash
# gives files of ext in directory
if [ -z "$1" ]
then
	echo exit 1
	exit 1
else
	if [ -r $1 ]
	then
		if [ -z "$2" ]
		then
			find $1 -maxdepth 1 -type f | wc -l
		else
			find $1 -maxdepth 1 -type f | grep *$2 | wc -l
		fi
	else
		echo exit 1
		exit 1
	fi	 
fi
