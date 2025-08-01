#!/bin/bash


file_path="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/lab/names.txt"


while IFS= read -r directory_name; do
	if [ -d "/tmp/$directory_name" ]; then
		echo "Directory '$directory_name' already exists. Writing to duplicates.txt"
		echo "$directory_name" >> /tmp/duplicates.txt
	else
		mkdir "/tmp/$directory_name"
		echo "Directory '$directory_name' created in /tmp."
	fi
done < "$file_path"
