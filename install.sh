#!/bin/bash

# WoeUSB-ng Installation Script
# This script installs WoeUSB-ng for creating bootable Windows USB drives

set -e  # Exit on any error

echo "Starting WoeUSB-ng installation..."

# Update system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install initial dependencies
echo "Installing initial dependencies..."
sudo apt install git p7zip-full python3-wxgtk4.0 -y

# Clone WoeUSB-ng repository
echo "Cloning WoeUSB-ng repository..."
git clone https://github.com/WoeUSB/WoeUSB-ng.git

# Navigate to directory
cd WoeUSB-ng

# Install build dependencies
echo "Installing build dependencies..."
sudo apt install build-essential devscripts equivs git p7zip-full python3-all python3-pip python3-setuptools python3-wheel python3-wxgtk4.0 -y

# Install WoeUSB-ng
echo "Installing WoeUSB-ng..."
sudo python3 setup.py install

echo "WoeUSB-ng installation complete!"
echo "You can now use 'woeusb' or 'woeusbgui' commands."
