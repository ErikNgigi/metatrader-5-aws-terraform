#!/usr/bin/env bash

# update packages
sudo dpkg --add-architecture i386
sudo apt update -y

# install prerequesite packages
sudo apt install -y --no-install-recommends curl firefox git unzip wget xfce4 xfce4-goodies xrdp vim

# install wine prerequesites
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources

# install wine-stable
sudo apt update -y
sudo apt install --install-recommends winehq-stable -y
