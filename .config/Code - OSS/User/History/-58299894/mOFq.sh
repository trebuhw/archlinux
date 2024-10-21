#! /bin/sh

chosen=$(printf " Lock\n󰍃 Logout\n screenoff\n󰐥 restart\n󰐥 shutdown" | rofi -dmenu -i -p " >>> ")

case "$chosen" in
	"  Lock") ~/.config/hypr/scripts/offscreen;;
	" 󰍃 logout") ~/.config/hypr/scripts/logout;;
	"  screenoff") swaylock -c 000000 && ~/.config/hypr/scripts/offscreen;;
	" 󰐥 restart") systemctl reboot ;;
	" 󰐥 shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac
