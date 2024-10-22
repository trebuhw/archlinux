#!/bin/bash

chosen=$(printf " Lock\n󰍃 Logout\n Screenoff\n󰐥 Restart\n󰐥 Shutdown" | rofi -dmenu -i -p " ")

case "$chosen" in
	" Lock") swayidle -w timeout 10 'swaylock -f -c 313244' before-sleep 'swaylock -f -c 313244';;
	"󰍃 Logout") killall Hyprland;;
	" Screenoff") ~/.config/hypr/scriptsall/offscreen;;
	"󰐥 Restart") systemctl reboot ;;
	"󰐥 Shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac

