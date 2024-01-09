#!/bin/bash

sudo apt install feh preload i3 rofi kitty polybar neofetch bottom

sudo apt update 
sudo apt upgrade

#copying all the config files
cp -r .config/* ~/.config/

# copying my favourite wallpapers
mkdir ~/wallpaper
cp -r wallpaper ~/

# copying my useful scripts
cp -r scripts ~/

# Install HAckNerdFont
mkdir ~/.fonts
cp Hack.zip ~/.fonts
unzip Hack.zip
