#!/bin/sh
#For Linux Mint 21.x

#LibreOffice
##Backport
sudo apt install -t jammy-backports libreoffice
##Repository
sudo add-apt-repository ppa:libreoffice/ppa

#Microsoft fonts install
sudo apt install ttf-mscorefonts-installer

#GIMP repository (Unofficial)
sudo add-apt-repository ppa:ubuntuhandbook1/gimp

#JOSM repository & install
sudo wget -P /etc/apt/keyrings https://josm.openstreetmap.de/josm-apt.key
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/josm-apt.key] https://josm.openstreetmap.de/apt alldist universe" | sudo tee /etc/apt/sources.list.d/josm.list > /dev/null
sudo apt install josm

#Wine repository & install
sudo dpkg --add-architecture i386
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt install --install-recommends winehq-stable
