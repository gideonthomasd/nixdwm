#!/usr/bin/env bash


cd openbox
chmod +x testwallpaper
chmod +x mem.sh
cd ..

mkdir -p ~/.config/tint2
cp tint2rc ~/.config/tint2

mkdir -p ~/.config/openbox
cd openbox
cp -r * ~/.config/openbox
cd ..

mkdir -p ~/.config/plank/dock1/launchers
cd plank
cp -r * ~/.config/plank/dock1/launchers
cd ..

mkdir -p ~/.config/plank/dock2/launchers
cd plank2
cp -r * ~/.config/plank/dock2/launchers
cd ..

mkdir -p ~/.themes
cd themes
cp -r * ~/.themes
cd ..

mkdir -p ~/.local/bin

mkdir -p ~/succader
cd ~/succader
git clone https://github.com/domsson/succade
cd succade
./build-inih
cd bin
cp succade ~/.local/bin
