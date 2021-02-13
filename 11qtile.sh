#!/usr/bin/env bash

cd qtile
chmod +x autostart.sh
cd ..

mkdir -p ~/.config/qtile

cd qtile
cp -r * ~/.config/qtile
cd ..
