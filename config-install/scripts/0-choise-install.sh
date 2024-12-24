#!/bin/bash

# Sprawdzanie, czy katalog ~/Archiwum już istnieje
if [ ! -d ~/Archiwum ]; then
    echo "Tworzenie katalogu ~/Archiwum..."
    mkdir ~/Archiwum
else
    echo "Katalog ~/Archiwum już istnieje."
fi

# Wyświetlenie dostępnych dysków i partycji
echo "Dostępne dyski i partycje:"
lsblk

# Wybór dysku do zamontowania
echo "Wybierz dysk/partycję do zamontowania (np. /dev/sdb5):"
read selected_disk

# Sprawdzenie, czy wybrany dysk istnieje
if lsblk | grep -q "$selected_disk"; then
    echo "Montowanie $selected_disk w katalogu ~/Archiwum..."
    sudo mount "$selected_disk" ~/Archiwum
else
    echo "Błąd: Dysk/partycja $selected_disk nie istnieje."
    exit 1
fi

# Przejście do katalogu, gdzie znajdują się skrypty
cd ~/Archiwum/Linux/Archlinux-install/scripts || { echo "Nie udało się przejść do katalogu. Sprawdź ścieżkę."; exit 1; }

# Wykonanie skryptów
echo "Uruchamianie skryptów..."
sh dotfiles-ai.sh
sh ln-root-ai.sh
sh cp-file.sh
sh set-theme.sh
sh print.sh
sh virt.sh

echo "Skrypty zostały uruchomione."
