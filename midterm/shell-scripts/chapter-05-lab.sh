#!/bin/bash

# Change to ~/Documents directory-1
cd ~/Documents

# Print the current directory
pwd

# Check if class-notes directory exists, if not create it -2
if [ ! -d class-notes ]; then
  mkdir class-notes
fi

# Change to class-notes directory -3
cd class-notes

# Print the current directory
pwd

# Check if distros directory exists, if not create it -4
if [ ! -d distros ]; then
  mkdir distros
fi

# List the contents of the distros directory
ls distros

# Check if BSD directory exists, if not create it -5
if [ ! -d distros/BSD ]; then
  mkdir distros/BSD
fi

# Check if Debian directory exists, if not create it -6
if [ ! -d distros/Debian ]; then
  mkdir distros/Debian
fi

# Check if Redhat directory exists, if not create it -7
if [ ! -d distros/redhat ]; then
  mkdir distros/redhat
fi

# Change to distros/BSD directory -8
cd distros/BSD

# Check and create text files if they don't exist
for file in "oracle-linux.txt" "openbsd.txt" "netbsd.txt"; do
  if [ ! -f "$file" ]; then
    touch "$file"
  fi
done

# Change back to home directory -9
cd

# Change to the Documents directory
cd Documents

# Change to class-notes directory
cd class-notes

# Change to distros/Debian directory
cd distros/Debian

# Check and create text files if they don't exist
for file in ubuntu.txt freebsd.txt xubuntu.txt; do
  if [ ! -f "$file" ]; then
    touch "$file"
  fi
done

# Change back to home directory -10
cd

# Change to the Documents directory
cd Documents

# Change to class-notes directory
cd class-notes

# Change to distros/redhat directory
cd distros/redhat

# Check and create text files if they don't exist
for file in "fedora.txt" "rhel.txt" "debian.txt"; do
  if [ ! -f "$file" ]; then
    touch "$file"
  fi
done

# Change back to the root directory -11
cd ../..

# Check and create text file in distros directory if it doesn't exist
if [ ! -f "distros/omnios.txt" ]; then
  touch distros/omnios.txt
fi

# Change to distros directory -12
cd distros

# Move the file from the Redhat directory to the Debian directory
mv redhat/debian.txt Debian/

# Check and rename the Redhat directory to Redhat if it exists -13
if [ -d redhat ]; then
  mv redhat Redhat
fi

# Check and remove the file from the BSD directory if it exists -14
if [ -f BSD/oracle-linux.txt ]; then
  rm BSD/oracle-linux.txt
fi

# Check and create illumos directory if it doesn't exist -15
if [ ! -d illumos ]; then
  mkdir illumos
fi

# Check and move the file to the illumos directory if it doesn't exist 
if [ ! -f illumos/omnios.txt ]; then
  mv omnios.txt illumos/
fi

# Change to the BSD directory -16
cd BSD

# Change back to the Redhat directory -17
cd ../.
cd Redhat

# Change back to the home directory -18
cd

# Chnage directory to Debian -19
cd Documents/class-notes/distros/Debian

cd

# Change directory to ssh -20
cd /etc/ssh/
