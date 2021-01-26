#!/usr/bin/env bash

mkdir -p ~/.pekwm

cd pekwm
chmod +x testwallpaper
chmod +x start
chmod +x ram.sh
cd ..

cd pekwm
cp -r * ~/.pekwm
cd ..
