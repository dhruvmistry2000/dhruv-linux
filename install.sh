#!/bin/bash

sudo apt install feh preload i3 rofi kitty polybar neofetch picom

sudo apt update 
sudo apt upgrade

#copying all the config files
cp -r .config/* ~/.config/

# copying my favourite wallpapers
mkdir ~/wallpaper
cp -r wallpaper ~/

# copying my useful scripts
cp -r scripts ~/

#mybash
cd mybash
./setup.sh
cd ..

# editing source lsit
cp sources.list /etc/apt/

# Give permission to chrome.sh and execute it
chmod +x chrome.sh
./chrome.sh

# Install HackNerdFont
mkdir ~/.fonts
cp Hack.zip ~/.fonts
cd ~/.fonts
unzip Hack.zip

#Starship
cd ~
cd dhruv-linux
mv starship.toml ~/.config/


