#! /bin/sh

chosen=$(printf " Lock\n󰍃 Logout\n screenoff\n󰐥 restart\n󰐥 shutdown" | rofi -dmenu -i -p " >>> ")

case "$chosen" in
	"  Lock") $HOME/.config/hypr/scripts/offscreen;;
	" 󰍃 logout") ~/.config/hypr/scripts/logout;;
	"  screenoff") $HOME/.config/hypr/scripts/offscreen;;
	" 󰐥 restart") systemctl reboot ;;
	" 󰐥 shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac
