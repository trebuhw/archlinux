#!/bin/bash

swayidle -w timeout 300 'swaylock -f -c 313244' before-sleep 'swaylock -f -c 313244' &
sleep 600 hyprctl dispatch dpms off &
sleep 900 systemcl suspend

exit 0
