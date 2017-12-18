#!/bin/bash
# Username to name
if [ -z "$1" ] || [ -z "$2" ]
then
	echo exit 1
	exit 1
fi
cat $2 | grep $1 | cut -d: -f5 