#!/usr/bin/env bash

PROJECT_DIR=$(pwd)

# Change to $HOME
cd ~

# Run tmate
tmate -F || {
    tmate -S /var/tmate.sock new-session -d               # Launch tmate in a headless mode
    tmate -S /var/tmate.sock wait tmate-ready             # Blocks until the SSH connection is established
    tmate -S /var/tmate.sock display -p '#{tmate_ssh}'    # Prints the SSH connection string
    sleep 3

    # Run the Blank Output script
    bash ${PROJECT_DIR}/blank.sh
}

# Exit
exit 0
