#! /bin/sh

chosen=$(printf "Lock\nLogout\nscreenoff\nrestart\nshutdown" | rofi -dmenu -i -p " >>> ")

case "$chosen" in
	"Lock") i3lock -c 000000 && ~/.config/hypr/scripts/offscreen-x11;;
	"logout") ~/.config/hypr/scripts/logout ;;
	"screenoff") swaylock -c 000000 && ~/.config/hypr/scripts/offscreen-x11;;
	"restart") systemctl reboot ;;
	"󰐥 shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac
