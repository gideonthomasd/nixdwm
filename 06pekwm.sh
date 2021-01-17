#!/usr/bin/env bash

mkdir -p ~/.pekwm

cd pekwm
chmod +x testwallpaper
chmod +x start
cd ..

cd pekwm
cp -r * ~/.pekwm
cd ..
