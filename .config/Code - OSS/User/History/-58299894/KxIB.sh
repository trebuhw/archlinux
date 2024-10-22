#!/bin/bash

chosen=$(printf " Lock\n󰍃 Logout\n Screenoff\n󰐥 Restart\n󰐥 Shutdown" | rofi -dmenu -i -p " ")

case "$chosen" in
	" Lock") hypr/scripts/lockscreen;;
	"󰍃 Logout") killall Hyprland;;
	" Screenoff") ~/.config/hypr/scriptsall/offscreen;;
	"󰐥 Restart") systemctl reboot ;;
	"󰐥 Shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac

