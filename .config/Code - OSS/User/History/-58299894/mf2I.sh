chosen=$(printf " Lock\n󰍃 Logout\n screenoff\n󰐥 restart\n󰐥 shutdown" | rofi -dmenu -i -p " >>> ")

echo "Wybrano: $chosen" >> /tmp/rofi-debug.log

case "$chosen" in
    "Lock") 
        echo "Uruchamiam swaylock" >> /tmp/rofi-debug.log
        exec swaylock -c 313244;;
    "Logout") 
        echo "Zamykam Hyprland" >> /tmp/rofi-debug.log
        killall Hyprland;;
    "screenoff") 
        echo "Wyłączam ekran" >> /tmp/rofi-debug.log
        ~/.config/hypr/scriptsall/offscreen;;
    "restart") 
        echo "Restartuję system" >> /tmp/rofi-debug.log
        systemctl reboot ;;
    "shutdown") 
        echo "Wyłączam system" >> /tmp/rofi-debug.log
        systemctl poweroff;;
    *) 
        echo "Nieznana opcja" >> /tmp/rofi-debug.log
        exit 1 ;;
esac
