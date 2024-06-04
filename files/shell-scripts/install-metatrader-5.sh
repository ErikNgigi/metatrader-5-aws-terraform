#!/usr/bin/env bash
# Enable 32bit architecture on the Ubuntu instance and update
sudo dpkg --add-architecture i386
sudo apt-get update -y

# create folder for pepperstone executable
mkdir /tmp/metatrader/

# wget to download the pepperstone file
wget "https://download.mql5.com/cdn/web/pepperstone.group.limited/mt5/pepperstone5setup.exe" -O /tmp/metatrader/pepperstone.exe

# Install wine both 32bit and 64bit version
sudo apt install wine -y
sudo apt install wine32 -y
