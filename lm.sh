#For Linux Mint 21.x, based on Ubuntu 22.04.x

#LibreOffice
##Backport
sudo apt install -t jammy-backports libreoffice
##PPA repository
sudo add-apt-repository ppa:libreoffice/ppa

#Microsoft Core Fonts
sudo apt install ttf-mscorefonts-installer

#GIMP
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

#JOSM repository & install
sudo wget -P /etc/apt/keyrings https://josm.openstreetmap.de/josm-apt.key
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/josm-apt.key] https://josm.openstreetmap.de/apt alldist universe" | sudo tee /etc/apt/sources.list.d/josm.list > /dev/null
sudo apt install josm
