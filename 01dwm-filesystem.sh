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

cd dwm-6.2
chmod +x testwallpaper
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
mkdir -p ~/dwm-6.2d
mkdir -p ~/dwm-bar
### Copy dwm-bar & others ############

cd dwm-bar
cp -r * ~/dwm-bar
cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd termite
cp -r * ~/.config/termite
cd ..

######################################

cp bashrc ~/.bashrc
cd dwm-6.2
cp testwallpaper ~/dwm-6.2d
cp sxhkdrc ~/dwm-6.2d
cd ..
