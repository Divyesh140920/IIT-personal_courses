#!/bin/bash


# Read the content of roster.txt in ROSTERARRAY
mapfile -t ROSTERARRAY < roster.txt

# Check if there are atleast 2 elements in the array
if [ "${#ROSTERARRAY[@]}" -ge 2 ]; then
	echo "Second element of ROSTERARRAY: ${ROSTERARRAY[1]}"
else
	echo "Not enough elements in the array."
fi

