#!/usr/bin/env bash

cd bspwm
chmod +x bspwmrc
chmod +x testwallpaper
chmod +x sta
chmod +x cursor.sh
cd ..

cd succade
chmod +x dwmcpu
chmod +x dwmmail
chmod +x mem.sh
chmod +x updates
chmod +x weather
chmod +x windows

cd ..

cd bspwm
cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh

cd ..
cd ..
cd ..




mkdir -p ~/.config/bspwm
mkdir -p ~/.config/succade

cd bspwm
cp -r * ~/.config/bspwm
cd ..

cp stalonetrayrc ~/.stalonetrayrc

cd succade
cp -r * ~/.config/succade
cd ..

echo "Build succade.  Put succade into ~/.local/bin.  Use build-inhi"
