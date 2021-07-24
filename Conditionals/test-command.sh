#!/bin/bash

# testing `test` operator
# syntax: [ operand1 operator operand2 ]

X="$1"
Y="$2"

if [ "$X" -lt "$Y" ]
then
	echo "$X is less than $Y"
elif [ "$X" -gt "$Y" ]
then
	echo "$X is greater than $Y"
else
	echo "$X is equal to $Y"
fi 


test_directory="$3"
test_file=config


# complex scenario => handling files and symlinks
if [ -d "$test_file" ]
then
	echo "file exists and is a directory"
	if [ -h "$test_file" ]
	then
		echo "file exists and is a sym link"
	elif [ -f "$test_file" ]
	then
		echo "it's a regular file"
	fi
else
	echo "you have no file / directory at that place"
fi
