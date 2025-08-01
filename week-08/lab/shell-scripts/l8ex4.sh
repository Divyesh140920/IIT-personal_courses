#!/bin/bash


echo "Enter the name of the Directory"
read NAME

# Check if the directory already exists
if [ -d "$NAME" ]; then
	echo "Directory $NAME exists."
else
	mkdir "$NAME"
	echo "New directory '$NAME' created at $(pwd)/$NAME."
fi
