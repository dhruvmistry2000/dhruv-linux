#!/bin/bash

sudo apt install feh preload i3 rofi kitty polybar neofetch picom trash-cli

sudo apt update 
sudo apt upgrade

cp -r .config/* ~/.config/

mkdir ~/wallpaper
cp -r wallpaper ~/

cp -r scripts ~/

cd mybash
./setup.sh
cd ..

cp sources.list /etc/apt/

chmod +x chrome.sh
./chrome.sh

chmod +x brave.sh
./chrome.sh

chmod +x fastfetch.sh
./chrome.sh

mkdir ~/.fonts
cp Hack.zip ~/.fonts
cd ~/.fonts
unzip Hack.zip
