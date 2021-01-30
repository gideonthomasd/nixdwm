#!/usr/bin/env bash

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd spectrwm
chmod +x testwallpaper
chmod +x sx
cd ..

mkdir -p ~/.config/polybar
mkdir -p ~/.config/spectrwm

cd polybar
cp -r * ~/.config/polybar
cd ..

cd spectrwm
cp -r * ~/.config/spectrwm
cd ..

cp spectrwm.conf ~/.spectrwm.conf
