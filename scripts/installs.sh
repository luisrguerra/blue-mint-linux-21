#!/bin/bash

sudo apt update
sudo apt install vlc
sudo apt install audacity
sudo apt install pinta
sudo apt install steam
sudo apt install gimp
sudo apt install evince
sudo apt remove thunderbird
sudo apt remove hexchat
sudo apt remove hypnotix
sudo apt remove sticky
sudo apt remove drawing
sudo apt remove warpinator
sudo apt remove bulky


#Add support to snaps
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd


#Wine install for Windows applications compatibility
sudo dpkg --add-architecture i386 
sudo wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -nc -P /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update
sudo apt install --install-recommends winehq-devel
sudo apt install exe-thumbnailer
sudo apt install winetricks


#Only Office install
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /etc/apt/trusted.gpg.d/
echo 'deb https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt-get update
sudo apt-get install onlyoffice-desktopeditors


#Google Chorme Install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

#Manually installed
#Monday Icon Theme Install
#wget https://github.com/luisrguerra/monday-icon-theme/releases/download/0.3.1/monday-icon-theme-v0.3.1.deb
#sudo dpkg -i monday-icon-theme-v0.3.1.deb
#rm monday-icon-theme-v0.3.1.deb

#Manually installed
#Bill GTK Theme Install
#wget https://github.com/luisrguerra/bill-theme/releases/download/0.2/Bill-Theme-V0.2.deb
#sudo dpkg -i Bill-Theme-V0.2.deb
#rm Bill-Theme-V0.2.deb






