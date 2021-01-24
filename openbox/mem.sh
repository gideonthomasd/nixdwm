#!/usr/bin/env bash

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3


    # Used and total memory
    while :
    do
    MEMUSED=$(free -h | awk '(NR == 2) {print $3}')
    MEMTOT=$(free -h |awk '(NR == 2) {print $2}')
    # CPU temperature
    #CPU=$(sysctl -n hw.sensors.cpu0.temp0 | cut -d. -f1)
    # Used and total storage in /home (rounded to 1024B)
   # STOUSED=$(df -h | grep '/home$' | awk '{print $3}')
    #STOTOT=$(df -h | grep '/home$' | awk '{print $2}')
    #STOPER=$(df -h | grep '/home$' | awk '{print $5}')

    #printf "%s" "$SEP1"
    #if [ "$IDENTIFIER" = "unicode" ]; then
        #printf " ^c#FF99FF^^c#99FF99^ "$MEMUSED"^c#FFFFFF^/"$MEMTOT""
    #else
   echo $MEMUSED"/"$MEMTOT
   sleep 1
   done
    #fi
    #printf "%s\n" "$SEP2"

