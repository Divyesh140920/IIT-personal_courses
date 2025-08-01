#!/bin/bash


# Check if three positional parameters are provided
if [ $# -ne 3 ]; then
	echo "Usage: $0 <name1> <name2> <name3>"
	exit 1
fi

# Assign the positional parameters to varibles
name1="$1"
name2="$2"
name3="$3"

# Add the names to the roster.txt file
echo "$name1" >> roster.txt
echo "$name2" >> roster.txt
echo "$name3" >> roster.txt


# print the result
echo "Names appended to roster.txt"
