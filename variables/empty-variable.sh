#!/bin/bash

# it's good to protect your variables names in double quotes if your variable values either
	# contains spaces
	# is the empty string

a=""


if [ -n $a ]; then
	echo "the variable a is not an empty string"
fi

if [ -n "$a" ]; then
	echo "the variable a is not an empty string"
fi