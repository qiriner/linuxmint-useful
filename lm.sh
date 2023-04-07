#!/bin/sh
#Tested in Linux Mint 21.1

##LibreOffice repository
sudo add-apt-repository ppa:libreoffice/ppa

##JOSM repository & install
wget -P /etc/apt/keyrings https://josm.openstreetmap.de/josm-apt.key
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/josm-apt.key] https://josm.openstreetmap.de/apt alldist universe" | sudo tee /etc/apt/sources.list.d/josm.list > /dev/null
sudo apt install josm

##Microsoft fonts install
sudo apt install ttf-mscorefonts-installer

##Wine repository & install
sudo dpkg --add-architecture i386
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt install --install-recommends winehq-stable
