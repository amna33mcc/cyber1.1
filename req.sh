#!/bin/bash

# Update and upgrade the system
sudo apt update
sudo apt upgrade -y

# Install curl
sudo apt install curl -y

echo "Curl has been successfully installed"
