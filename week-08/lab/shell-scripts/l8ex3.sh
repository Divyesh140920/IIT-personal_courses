#!/bin/bash


# Read the content of roster.txt in array
mapfile -t ROSTERARRAY < roster.txt

# Define home dir
HOME_DIR=$HOME

# using for loop
for name in "${ROSTERARRAY[@]}"; do
	# Create adir for each name in home dir
	
	directory_path="$HOME_DIR/$name"

	# Check if dir already exists
	if [ -d "$directory_path" ]; then
		echo "Directory '$name' already exists at $directory_path."
	else
		mkdir "$directory_path"
		echo "Directory '$name' created at $directory_path."
	fi
done

ls -l $HOME_DIR
