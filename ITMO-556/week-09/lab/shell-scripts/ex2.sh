#!/bin/bash

# Add a group named "itmo356" to the system
sudo groupadd itmo356

# Append the "controller" user to the "itmo356" group
sudo usermod -aG itmo356 controller

# Display all groups the "controller" user is a member of
groups controller

