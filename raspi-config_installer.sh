#!/bin/bash

set -e

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo:"
    echo "sudo $0"
    exit 1
fi

# Download raspi-config package
raspi_config_url="https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20200601_all.deb"
raspi_config_deb="/tmp/raspi-config_20200601_all.deb"

echo "Downloading raspi-config package..."
wget -O "$raspi_config_deb" "$raspi_config_url"

# Check if download was successful
if [ ! -f "$raspi_config_deb" ]; then
    echo "Failed to download raspi-config package."
    exit 1
fi

# Install dependencies and raspi-config
echo "Installing dependencies and raspi-config..."
apt-get update
apt-get install -y libnewt0.52 whiptail parted triggerhappy lua5.1 alsa-utils
apt-get install -fy # Auto install dependencies on e.g., Ubuntu Server on RPi
apt-get install -y "$raspi_config_deb"

echo "Raspi-config is now installed."
echo "You can run it using:"
echo "sudo raspi-config"
