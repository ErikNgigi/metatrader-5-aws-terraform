#!/usr/bin/env bash
sudo apt-get update

# create folder for pepperstone executable
mkdir /tmp/metatrader/

# wget to download the pepperstone file
wget "https://download.mql5.com/cdn/web/pepperstone.group.limited/mt5/pepperstone5setup.exe" -O /tmp/metatrader/pepperstone.exe

# Install wine both 64bit and 32bit
sudo apt install wine64 wine32
