#!/bin/bash

sudo apt install feh preload i3 bat rofi kitty polybar neofetch picom trash-cli

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

sudo apt update 
sudo apt upgrade

cp -r .config/ ~/.config/

mkdir ~/wallpaper
cp -r wallpaper ~/

cd mybash || exit 1
./setup.sh || exit 1
cd ..

sudo cp sources.list /etc/apt/

chmod +x installs/chrome.sh
./installs/chrome.sh

chmod +x installs/brave.sh
./installs/brave.sh

chmod +x installs/fastfetch.sh
./installs/fastfetch.sh

mkdir ~/.fonts
cp Hack.zip ~/.fonts
cd ~/.fonts || exit 1
unzip Hack.zip || exit 1
fc-cache -f -v