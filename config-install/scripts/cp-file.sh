#!/bin/bash

# File theme - Catppucin gtk
cd $HOME/archlinux/file
sudo rsync -avz $HOME/archlinux/file/usr/share/icons/* ~/usr/share/themes

# File to DWM
sudo -p mkdir /usr/share/xsessions
sudo rsync -avz $HOME/archlinux/file/usr/share/xsessions/* ~/usr/shaare/xsessions
sudo rsync -avz $HOME/archlinux/file/etc/X11/xorg.conf.d/*

## Pliki
#  Dokumenty
#rsync -av ~/Archiwum/Linux/Dokumenty/* ~/Dokumenty

#  Muzyka
#rsync -av ~/Archiwum/Linux/Muzyka/* ~/Muzyka

#  Obrazy
#rsync -av ~/Archiwum/Linux/Obrazy/* ~/Obrazy
