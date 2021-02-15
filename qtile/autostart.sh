#!/usr/bin/env bash

pkill -f testwallpaper
pkill -f sleep

xcompmgr &

sxhkd -c /home/phil/.config/qtile/sxhkdrc &
/home/phil/dwm-6.2d/testwallpaper &
