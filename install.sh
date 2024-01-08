#!/bin/bash

sudo apt install feh preload i3 rofi kitty polybar neofetch bottom

sudo apt update 
sudo apt upgrade

cp -r .config/* ~/.config/

mkdir ~/wallpaper
cp -r wallpaper ~/

