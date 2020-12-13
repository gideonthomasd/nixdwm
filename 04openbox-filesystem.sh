#!/usr/bin/env bash


cd openbox
chmod +x testwallpaper
cd ..

mkdir -p ~/.config/tint2
cp tintrc ~/.config/tint2

mkdir -p ~/.config/openbox
cd openbox
cp -r * ~/.config/openbox
cd..

mkdir -p ~/.config/plank/dock1/launchers
cd plank
cp -r * ~/.config/plank/dock1/launchers
cd ..

mkdir -p ~/.themes
cd themes
cp -r * ~/.themes
cd ..
