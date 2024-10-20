#!/bin/bash

# Update the package list again to include Docker's repository
sudo apt update

# Install Docker
sudo apt install -y docker.io

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Add the current user to the docker group
sudo usermod -aG docker $USER

# Notify the user to log out and log back in
echo "Docker installed and user added to the 'docker' group. Please log out and log back in for changes to take effect."
