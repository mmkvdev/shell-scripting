#!/bin/bash

X=abc
# basic conditional statement
if [ -n "$X" ]
then
	echo "basic statement"
fi


# multiple conditional statement
if [ -n "$X" ]
then
	echo "multiple statement 1"
elif "$X"
then 
	echo "multiple statement 2"
fi