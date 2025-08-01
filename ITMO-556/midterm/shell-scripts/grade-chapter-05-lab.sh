#!/bin/bash

# Define the path to the Chapter-05 lab directory
lab_dir=~/Documents/class-notes/distros

# Check if the Chapter-05 lab directory exists
if [ -d "$lab_dir" ]; then
  echo "Chapter-05 lab directory exists."
  
  # Check for the presence of directories and files
  declare -a directories=("BSD" "Debian" "Redhat" "illumos")
  declare -a files=("BSD/openbsd.txt" "BSD/netbsd.txt" 
    "Debian/ubuntu.txt" "Debian/freebsd.txt" "Debian/xubuntu.txt" 
    "Redhat/fedora.txt" "Redhat/rhel.txt" "Debian/debian.txt" "illumos/omnios.txt")

  for dir in "${directories[@]}"; do
    if [ -d "$lab_dir/$dir" ]; then
      echo "$dir exists."
    else
      echo "$dir is missing."
    fi
  done

  for file in "${files[@]}"; do
    if [ -f "$lab_dir/$file" ]; then
      echo "$file exists."
    else
      echo "$file is missing."
    fi
  done
else
  echo "Chapter-05 lab directory is not present."
fi

