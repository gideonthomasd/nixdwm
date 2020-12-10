#!/usr/bin/env bash

### Change to executables ############

cd dwm-bar
chmod +x dwm_bar.sh
cd bar-functions
chmod +x dwmcpu
chmod +x dwmdate
chmod +x dwmmailweather
chmod +x dwmram
chmod +x dwmtime

cd ..
cd ..


### COPY FONTS #######################

if [ ! -d $HOME"/.local/share/fonts" ]
then
mkdir -p $HOME"/.local/share/fonts"
fi

cd fonts
cp -r * ~/.local/share/fonts
cd ..

### Copy directories##################

mkdir -p ~/.config/rofi
mkdir -p ~/.config/jgmenu
mkdir -p ~/.config/termite

### Copy dwm-bar & others ############

cd dwm-bar
cp -r * ~/dwm-bar
cd ..

cd rofi
cp -r * ~/rofi
cd ..

cd jgmenu
cp -r * ~/jgmenu
cd ..

cd termite
cp -r * ~/termite
cd ..

######################################

cp bashrc ~/.bashrc
