#For Linux Mint 21.x, based on Ubuntu 22.04.x

#LibreOffice
##Backport
sudo apt install -t jammy-backports libreoffice
##PPA repository
sudo add-apt-repository ppa:libreoffice/ppa

#Microsoft Core Fonts
sudo apt install ttf-mscorefonts-installer

#GIMP (GNU Image Manipulation Program)
##Basic repository
sudo apt install gimp
##PPA unofficial repository
sudo add-apt-repository ppa:ubuntuhandbook1/gimp

#Wine
sudo apt install wine-installer

#VirtualBox Guest Additions
sudo apt install virtualbox-guest-x11

#Open VM Tools for VMWare
sudo apt install open-vm-tools-desktop

#Fix keyboard layout switch (aka Bug #865)
sudo add-apt-repository ppa:nrbrtx/xorg-hotkeys
sudo apt dist-upgrade

#JOSM (Java OpenStreetMap Editor)
sudo apt install josm-installer
sudo josm-installer
