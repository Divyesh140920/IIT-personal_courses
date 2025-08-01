#!/bin/bash

# Define the username to be added
username="nsa"

# Add the user
sudo useradd "$username"

# Display the content of /etc/passwd
echo "Content of /etc/passwd after adding $username:"
cat /etc/passwd | grep "$username"

# Delete the user
sudo userdel "$username"

# Display the content of /etc/passwd after deleting $username
echo "Content of /etc/passwd after deleting $username:"
cat /etc/passwd | grep "$username"

