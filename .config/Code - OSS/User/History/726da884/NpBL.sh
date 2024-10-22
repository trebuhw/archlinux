#!/bin/bash

swayidle -w timeout 300 'swaylock -f -c 313244' before-sleep 'swaylock -f -c 313244' &
sleep  hyprctl dispatch dpms off

exit 0
