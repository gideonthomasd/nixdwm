#!/usr/bin/env bash

fred=$(bspc query -N -n .leaf -d "${desktop:-focused}" | wc -l)
echo $fred 
