#!/bin/bash

# Create user
sudo useradd -m karan

# Generate SSH key pair
sudo -u karan ssh-keygen -t rsa -N "" -f /home/karan/.ssh/id_rsa

# Copy public key to authorized_keys
sudo -u karan cp /home/karan/.ssh/id_rsa.pub /home/karan/.ssh/authorized_keys

# Display private key
sudo -u karan cat /home/karan/.ssh/id_rsa

# Remove private key files
sudo -u karan rm -rf /home/karan/.ssh/id_rsa*
