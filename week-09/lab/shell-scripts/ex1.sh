#!/bin/bash

# Add the user "controller" using the useradd command with default values
sudo useradd controller

# Display the content of the /etc/passwd file to check if the user has been created
cat /etc/passwd | grep '^controller:'

