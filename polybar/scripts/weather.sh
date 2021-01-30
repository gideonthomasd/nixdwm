#!/usr/bin/env bash

echo $(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2-)
