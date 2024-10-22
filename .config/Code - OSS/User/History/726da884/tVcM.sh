#!/bin/bash

swayidle -w timeout 300 'swaylock -f -c 313244' before-sleep 'swaylock -f -c 313244' &
sleep 300 hyprctl dispatch dpms off &


exit 0
