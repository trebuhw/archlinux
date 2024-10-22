#!/bin/bash

swayidle -w timeout 10 'swaylock -f -c 313244' before-sleep 'swaylock -f -c 313244' &
sleep 20 hyprctl dispatch dpms off &
sleep 30 systemcl suspend

exit 0
