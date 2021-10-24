#!/usr/bin/env bash



icon=""
this=""
state=$(mocp -Q %state 2>/dev/null)
if [ $state == "PLAY" ]; then
	icon="Play: "
	this=$(mocp -Q %file | sed 's/\//\n/g' | sed '$!d' | sed 's/ /_/g' | awk '$1>0 {print substr($1,1,15)}' | sed 's/_/ /g')
	this=$this"..."
elif [ $state == "PAUSE" ]; then
	icon="Pause: "
	this=$(mocp -Q %file | sed 's/\//\n/g' | sed '$!d' | sed 's/ /_/g' | awk '$1>0 {print substr($1,1,15)}' | sed 's/_/ /g')
	this=$this"..."
else
	icon=" "
	this="[STOP]"
fi

echo $icon$this
