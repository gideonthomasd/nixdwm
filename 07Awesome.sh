#!/usr/bin/env bash

cd awesome
chmod +x autostart.sh
chmod +x testwallpaper
cd ..

mkdir -p ~/.config/awesome
cd awesome
cp -r * ~/.config/awesome
cd ..
