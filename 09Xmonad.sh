#!/usr/bin/env bash

mkdir -p ~/.xmonad
mkdir -p ~/.config/xmobar

cd xmonad
chmod +x autostart.sh
#chmod +x testwallpaper
chmod +x xmonad.hs
cd ..

cd xmobar
chmod +x xmobarrc
chmod +x *.sh

cd ..

cd xmonad
cp -r * ~/.xmonad
cd ..

cd xmobar
cp -r * ~/.config/xmobar
cd ..

xmonad --recompile
