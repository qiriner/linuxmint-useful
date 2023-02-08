###Tested in Linux Mint 21.1

###LibreOffice (stable & rather fresh). Will natively update
sudo add-apt-repository ppa:libreoffice/libreoffice-still

###JOSM repo
# Download the key
wget -q https://josm.openstreetmap.de/josm-apt.key -O- | sudo gpg --dearmor -o /etc/apt/keyrings/josm-apt.gpg
# Add repository
echo "deb [signed-by=/etc/apt/keyrings/josm-apt.gpg] https://josm.openstreetmap.de/apt $(grep ^DISTRIB_CODENAME= /etc/upstream-release/lsb-release | awk -F = '{print $(2)}') universe" | sudo tee /etc/apt/sources.list.d/josm.list > /dev/null
