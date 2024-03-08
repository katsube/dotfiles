#!/bin/bash

#
# Create SSH key
#

# Check if the SSH key already exists
if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Creating SSH key..."
    # ssh-keygen -t rsa -b 4096 -C "katsube@mba2024" -f ~/.ssh/id_rsa
    ssh-keygen -t ed25519  -C "katsube@mba2024" -f ~/.ssh/id_ed25519 -N ""
fi
