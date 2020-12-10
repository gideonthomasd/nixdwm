#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Date is formatted like like this: "[Mon 01-01-00 00:00:00]"
dwm_date () {
	
	BLUE=$(tput setaf 4)
	norm=$(tput setaf 7)
	
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "^c#FF007F^^c#99FF99^   %s" "$(date "+%a %d-%m-%y ^c#FFFF00^ %H:%M")"
    else
        printf "DAT %s" "$(date "+%a %d-%m-%y %T")"
    fi
    printf "%s\n" 
}

dwm_date
