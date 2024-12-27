#!/bin/bash

# Sklonowanie potzrebnych repozytoriów
git clone --depth=1 https://github.com/trebuhw/.dotfiles.git &

# Uruchomienie skryptów instalacyjnych
chmod + x $HOME/archlinux/config-install/scripts/* &
cd $HOME/archlinux/config-install/sceipts &
sh programs.sh &
sh stow-all-path.sh &
sh ln-root.sh &
sh cp-file.sh &
sh dwm-install.sh &
sh set-theme.sh &
#sh print.sh &
#sh virt.sh

