#!/bin/bash

sudo apt install feh preload i3 rofi kitty polybar neofetch picom trash-cli

sudo apt update 
sudo apt upgrade

cp -r .config/* ~/.config/

mkdir ~/wallpaper
cp -r wallpaper ~/

cd mybash
./setup.sh
cd ..

cp sources.list /etc/apt/

chmod +x installs/chrome.sh
./installs/chrome.sh

chmod +x installs/brave.sh
./installs/brave.sh

chmod +x installs/fastfetch.sh
./installs/fastfetch.sh

mkdir ~/.fonts
cp Hack.zip ~/.fonts
cd ~/.fonts
unzip Hack.zip