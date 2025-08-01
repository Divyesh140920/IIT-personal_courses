#!/bin/bash


directory_path=~/topsecret
file_name=xfile.txt

if [ -d "$directory_path" ]; then
	echo "The 'topsecret' directory already exists."
else
	mkdir "$directory_path"
	echo "The 'topsecret' directory has been created."
fi

if [ -e "$directory_path/$file_name" ]; then
	echo "The file '$file_name' already exists in the 'topsecret' directory."
else
	touch "$directory_path/$file_name"
	echo "The file 'file_name' has been created in the 'topsecret' directory"
fi


# Check if the script received a filename as a positional parameter
if [ $# -eq 0 ]; then
	echo "Error: Please provide a filename as a positional parameter."
	exit 1
fi


filename="$1"


if [ -f ~/topsecret/"$filename" ]; then

	if [ -x ~/topsecret/"$filename" ]; then
		echo "The file '$filename' is executable."
	else
		echo "Error : The file '$filename' is not executable."
	fi
else
	echo "Error: The file '$filename' does not exist in ~/topsecret directory."
fi
