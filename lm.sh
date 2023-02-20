#!/bin/sh
#Tested in Linux Mint 21.1

##LibreOffice repository (stable version)
sudo add-apt-repository ppa:libreoffice/libreoffice-still

##JOSM repository
wget -q https://josm.openstreetmap.de/josm-apt.key -O- | sudo gpg --dearmor -o /etc/apt/keyrings/josm-apt.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/josm-apt.gpg] https://josm.openstreetmap.de/apt alldist universe" | sudo tee /etc/apt/sources.list.d/josm.list > /dev/null

##Microsoft fonts#
sudo apt install ttf-mscorefonts-installer
