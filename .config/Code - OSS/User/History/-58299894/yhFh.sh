#!/bin/bash

chosen=$(printf " Lock\n󰍃 Logout\n screenoff\n󰐥 restart\n󰐥 shutdown" | rofi -dmenu -i -p " >>> ")

case "$chosen" in
	" Lock") kitty -e swaylock -c 313244;;
	"󰍃 logout") killall Hyprland;;
	" screenoff") ~/.config/hypr/scriptsall/offscreen;;
	"󰐥 restart") systemctl reboot ;;
	"󰐥 shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac

