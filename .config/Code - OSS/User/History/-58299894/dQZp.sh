#! /bin/sh

chosen=$(printf " Lock\n󰍃 Logout\n screenoff\n󰐥 restart\n󰐥 shutdown" | rofi -dmenu -i -p " >>> ")

case "$chosen" in
	"  Lock") exec swaylock -c 313244;;
	" 󰍃 logout") killall Hyprland;;
	"  screenoff") ~/.config/hypr/scriptsall/offscreen;;
	" 󰐥 restart") systemctl reboot ;;
	" 󰐥 shutdown") systemctl poweroff;;
	*) exit 1 ;;
esac


CHOICE=`rofi -dmenu -i -p " >>> " << EOF

lock
reboot
poweroff
exit
EOF`

case $CHOICE in
  lock)
		$HOME/.config/hypr/scripts/offscreen
		;;
	reboot)
		systemctl "reboot"
		;;	
	poweroff)
		systemctl "poweroff"
		;;
	exit)
		loginctl "terminate-user" "$USER"
		;;
esac
