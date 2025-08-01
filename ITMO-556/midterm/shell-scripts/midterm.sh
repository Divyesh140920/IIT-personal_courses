#!/bin/bash

# Set the path to roster.txt
roster_file="/home/$USER/Documents/Linux-text-book-part-1/files/Chapter-08/lab/roster.txt"

# Check if the roster file exists
if [ ! -f "$roster_file" ]; then
  echo "Roster file not found: $roster_file"
  exit 1
fi

# Create logs for user account creation and key generation
useradd_log="midterm-useradd-log.sh"
keygen_log="midterm-keygen-log.sh"

# Loop through each line in roster.txt
while IFS= read -r LINE; do
  # Extract user information from LINE (you may need to adapt this)
  NAME=$(echo "$LINE" | cut -f1)
  HOME_DIR="/home/$NAME"

  # Check if the home directory already exists
  if [ ! -d "$HOME_DIR" ]; then
    # Create the user account
    sudo useradd -c "Account for $NAME" -s /bin/bash -d "$HOME_DIR" -m "$NAME"
    
    # Log user account creation with timestamp
    echo "$(date): Created user account for $NAME" >> "$useradd_log"

    # Print a message to the screen
    echo "Created user account for $NAME"
  else
    echo "Home directory for $NAME already exists, skipping account creation"
  fi

  # Check if .ssh directory exists and is owned by the user
  if [ ! -d "$HOME_DIR/.ssh" ] || [ "$(stat -c %U "$HOME_DIR/.ssh")" != "$NAME" ]; then
    # Create the .ssh directory and make sure it's owned by the user
    sudo mkdir -p "$HOME_DIR/.ssh"
    sudo chown "$NAME:$NAME" "$HOME_DIR/.ssh"
  fi

  # Check if SSH keys exist
  if [ ! -f "$HOME_DIR/.ssh/id_ed25519_$NAME" ]; then
    # Generate SSH key
    sudo ssh-keygen -t ed25519 -f "$HOME_DIR/.ssh/id_ed25519_$NAME" -N ""

    # Log key generation with timestamp
    echo "$(date): Created SSH keys for $NAME" >> "$keygen_log"

    # Print a message to the screen
    echo "Created SSH keys for $NAME"
  else
    echo "SSH keys for $NAME already exist, skipping key generation"
  fi

done < "$roster_file"

# The script is now complete

