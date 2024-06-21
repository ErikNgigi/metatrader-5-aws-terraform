#!/usr/bin/env bash

# Disable prompt during installation
export DEBAIN_FRONTEND=noninteractive
echo "debconf debconf/frontend select noninteractive" | sudo debconf-set-selections

# Add sources to ubuntu instances
sudo sed -i -E 's/^# deb-src /deb-src /g' /etc/apt/sources.list
sudo dpkg --add-architecture i386

# Add packages
sudo apt update -y
sudo apt install openssh-server sudo xrdp xorgxrdp xfce4 xfce4-terminal xdg-user-dir vim wget -y

# setup ssh x11 forwarding
sudo sed -i 's/^#   ForwardX11 no/   ForwardX11 yes/g' /etc/ssh/ssh_config
sudo sed -i 's/^#X11Forwarding yes/X11Forwarding yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#X11DisplayOffset 10/X11DisplayOffset 10/g' /etc/ssh/sshd_config
sudo sed -i 's/^#X11DisplayOffset 10/X11DisplayOffset 10/g' /etc/ssh/sshd_config

# Install winestable
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt-get update -y
sudo apt install --install-recommends winehq-stable -y

# Start xrdp for remote desktop
sudo service xrdp start
sudo service xrdp restart

# Create user directories
sudo xdg-user-dirs-update
