#!/bin/bash

# Uruchomienie swayidle, aby blokować ekran po 10s bezczynności i przed uśpieniem
swayidle -w \
    timeout 10 'swaylock -f -c 313244' \
    before-sleep 'swaylock -f -c 313244' &

# Wyłączenie ekranu po 20 sekundach
sleep 20 && hyprctl dispatch dpms off

# Zawieszenie systemu po 30 sekundach
sleep 10 && systemctl suspend

exit 0
