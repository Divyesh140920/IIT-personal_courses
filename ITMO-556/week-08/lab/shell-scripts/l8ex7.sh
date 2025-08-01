#!/bin/bash


if [ $# -ne 1 ];then
	echo :"Usage: $0 <file_name>"
	exit 1
fi

directory_path=~/topsecret
file_name="$1"

if [ -e "$directory_path/$file_name" ]; then
	echo "File '$file_name' exists in the 'topsecret' directory."
else
	echo "Error: File '$file_name' does not exists in the directory."
fi
