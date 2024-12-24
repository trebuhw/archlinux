#!/bin/bash

# Funkcja do tworzenia dowiązania symbolicznego z usuwaniem istniejących plików
create_symlink() {
    source_path="$1"
    target_path="$2"

    if [ -e "$target_path" ]; then
        echo "Usuwanie istniejącego pliku/katalogu: $target_path"
        sudo rm -rf "$target_path"
    fi

    echo "Tworzenie dowiązania symbolicznego: $source_path -> $target_path"
    sudo ln -s "$source_path" "$target_path"
}

## SDDM - themes i config
# etc
create_symlink ~/config-install/file/sddm.conf.d /etc/sddm.conf.d

# usr
create_symlink ~/config-install/file/simple-sddm /usr/share/sddm/themes

## Theme
# Catppucin gtk
create_symlink ~/Catppuccin-Mocha-Standard-Blue-Dark /usr/share/themes/Catppuccin-Mocha-Standard-Blue-Dark

## Pliki
# Dokumenty
echo "Kopiowanie dokumentów..."
rsync -av ~/Archiwum/Linux/Dokumenty/* ~/Dokumenty/

# Muzyka
echo "Kopiowanie muzyki..."
rsync -av ~/Archiwum/Linux/Muzyka/* ~/Muzyka/

# Obrazy
echo "Kopiowanie obrazów..."
rsync -av ~/Archiwum/Linux/Obrazy/* ~/Obrazy/
