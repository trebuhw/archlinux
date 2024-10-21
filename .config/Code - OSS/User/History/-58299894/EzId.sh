#!/bin/bash

chosen=$(printf " Lock\n󰍃 Logout\n Screenoff\n󰐥 Restart\n󰐥 Shutdown" | rofi -dmenu -i -p "   ")

case "$chosen" in
	" Lock") swaylock -c 313244;;
	"󰍃 Logout") killall Hyprland;;
	" Screenoff") ~/.config/hypr/scriptsall/offscreen;;
	"󰐥 Restart") systemctl reboot ;;
	"󰐥 Shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac

