#!/usr/bin/env bash
cd i3blocks
chmod +x bandwidth
chmod +x cpu-usage
chmod +x dwmcpu
chmod +x dwmmail
chmod +x dwm_resources.sh
chmod +x dwmweather
chmod +x time

cd ..


cd i3
chmod +x testwallpaper
cd ..


mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..

