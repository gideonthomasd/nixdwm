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

mkdir -p ~/.config/leftwm

cd leftwm
cp -r * ~/.config/leftwm
cd ..

cd ~/.config/leftwm/themes
ln -s my02-xmobar current
cd ~
