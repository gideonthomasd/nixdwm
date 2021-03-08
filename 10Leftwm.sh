#!/usr/bin/env bash

cd leftwm
cd themes
cd my02-xmobar
chmod +x change_to_tag
chmod +x cursor.sh
chmod +x down
chmod +x testwallpaper
chmod +x up
chmod +x xmobar-config.hs

cd ..
cd ..
cd ..

cd leftwm
cd themes
cd mypolybar
chmod +x change_to_tag
chmod +x cursor.sh
chmod +x down
chmod +x testwallpaper
chmod +x up
chmod +x launch.sh

cd ..
cd ..
cd ..

cd leftwm2
cd themes
cd mypolybar
chmod +x change_to_tag
chmod +x cursor.sh
chmod +x down
chmod +x testwallpaper
chmod +x up
chmod +x launch.sh

cd ..
cd ..
cd ..

cd leftwm
cd themes
cd mypolybar
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..
cd ..

cd leftwm2
cd themes
cd mypolybar
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..
cd ..

mkdir -p ~/.config/leftwm
mkdir -p ~/.config/leftwm2

cd leftwm
cp -r * ~/.config/leftwm
cd ..

cd leftwm2
cp -r * ~/.config/leftwm2
cd ..

cd ~/.config/leftwm/themes
ln -s mypolybar current
cd ~
