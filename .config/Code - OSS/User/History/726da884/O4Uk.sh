#!/bin/bash

start_idle_process() {
    # Uruchomienie swayidle, aby blokować ekran po 10s bezczynności i przed uśpieniem
    swayidle -w \
        timeout 10 'swaylock -f -c 313244' \
        before-sleep 'swaylock -f -c 313244' &
    swayidle_pid=$!

    # Wyłączenie ekranu po 20 sekundach bezczynności
    sleep 20 && hyprctl dispatch dpms off

    # Zawieszenie systemu po 30 sekundach bezczynności
    sleep 10 && systemctl suspend
}

stop_idle_process() {
    # Zatrzymanie procesu swayidle
    if [[ -n "$swayidle_pid" ]]; then
        kill $swayidle_pid 2>/dev/null
    fi
}

while true; do
    # Uruchom procesy związane z bezczynnością
    start_idle_process

    # Monitorowanie aktywności użytkownika: wyjście z pętli przy jakiejkolwiek akcji
    swaymsg -t subscribe '["input"]' | while read -r _; do
        # Jeśli wykryto aktywność użytkownika, przerwij aktualne zadania
        stop_idle_process
        break
    done

    # Odczekaj określony czas po wznowieniu aktywności, aby ponownie uruchomić procesy
    sleep 10
done

exit 0
