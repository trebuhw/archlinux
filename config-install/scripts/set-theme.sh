#!/bin/bash

## Set GTK Themes, Icons, Cursor and Fonts

THEME='Catppuccin-Mocha-Standart-Blue-Dark'
ICONS='Tela-circle-dracula-dark'
FONT='JetBrainsNerd Nerd Font 10'
CURSOR='Bibata-Modern-Ice'

SCHEMA='gsettings set org.gnome.desktop.interface'

apply_themes() {
	${SCHEMA} gtk-theme "$THEME"
	${SCHEMA} icon-theme "$ICONS"
	${SCHEMA} cursor-theme "$CURSOR"
	${SCHEMA} font-name "$FONT"
}

apply_themes
