#!/usr/bin/env bash

cd fluxbox
chmod +x testwallpaper
chmod +x startup
cd ..

mkdir -p ~/.fluxbox
cd fluxbox
cp -r * ~/.fluxbox
cd ..

mkdir -p ~/.config/fbpanel
cd fbpanel
cp -r * ~/.config/fbpanel
cd ..

mkdir -p ~/.icons
cd icons
cp -r * ~/.icons
cd ..

mkdir -p ~/.config/fbmenugen
cp schema.pl ~/.config/fbmenugen

cp Xresources ~/.Xresources
fbmenugen -g -i
