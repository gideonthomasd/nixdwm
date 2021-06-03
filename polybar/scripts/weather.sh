#!/usr/bin/env bash

weath=$(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2-)
if [[ $weath == *location* ]]; then
  echo "<Unavailable>"
else
  echo $weath
fi
