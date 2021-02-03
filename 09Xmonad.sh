#!/usr/bin/env bash

mkdir -p ~/.xmonad
mkdir -p ~/.xmobar

cd xmonad
chmod +x autostart.sh
chmod +x testwallpaper
chmod +x xmonad.hs
cd ..

cd xmobar
chmod +x xmobarrc
chmod +x dwmcpu
chmod +x dwmmail
chmod +x mem.sh
chmod +x time
chmod +x time2
chmod +x updates
chmod +x weather
cd ..

cd xmonad
cp -r * ~/.xmonad
cd ..

cd xmobar
cp -r * ~/.xmobar
cd ..

