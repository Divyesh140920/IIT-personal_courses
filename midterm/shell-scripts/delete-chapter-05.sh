#!/bin/bash

# Define the path to the Chapter-05 lab directory
lab_dir=~/Documents/class-notes

# Check if the Chapter-05 lab directory exists
if [ -d "$lab_dir" ]; then
  # Remove the lab content if it exists
  rm -r "$lab_dir"
  echo "Chapter 05 lab content has been deleted."
else
  echo "Chapter 05 lab content is not present."
fi

