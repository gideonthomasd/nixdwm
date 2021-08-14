#!/usr/bin/env bash

updates=$(checkupdates | wc -l)
if [ $updates -gt 100 ]; then
	echo "UPDATES!!!"
else
	echo ""
fi

