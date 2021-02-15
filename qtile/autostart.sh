#!/usr/bin/env bash

pkill -f testwallpaper
pkill -f sleep

xcompmgr &

sxhkd -c /home/phil/dwm-6.2d/sxhkdrc &
/home/phil/dwm-6.2d/testwallpaper &
