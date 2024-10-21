#!/usr/bin/env bash

CHOICE= rofi -dmenu -i -p " >>> " << EOF

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
