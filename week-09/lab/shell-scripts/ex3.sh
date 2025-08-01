#!/bin/bash

# Define the username to check and add to the sudo group
username="controller"

# Check if the user is already in the sudo group
if id "$username" &>/dev/null; then
    if groups "$username" | grep &>/dev/null '\bsudo\b'; then
        echo "$username is already in the sudo group."
    else
        # Add the user to the sudo group
        usermod -aG sudo "$username"
        echo "$username has been added to the sudo group."
    fi
else
    echo "User $username does not exist."
fi

