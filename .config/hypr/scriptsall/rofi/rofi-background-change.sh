#!/bin/bash

cd ~/Obrazy/Wallpaper/
chosen=$( ls | rofi -dmenu -p " Wybierz " | awk '{print $1}' )
obraz=$chosen

# Exit if none chosen.                                                                         
[ -z "$chosen" ] && exit

fullpath=$(pwd)/$obraz;
bg=$HOME/.background.jpg;
bgsddm=/usr/share/sddm/themes/archlinux/images/background.jpg;

cp $fullpath $bg;
# gksudo cp $fullpath $bgsddm;

echo "Path to orginal file :" >  ~/.background.info.txt
echo $(readlink -f $fullpath) >> ~/.background.info.txt
echo "" >> /home/huwr/.background.info.txt
echo "Path to swaybg file :" >>  ~/.background.info.txt
echo "/home/huwr/.background.jpg" >> ~/.background.info.txt

notify-send -i "$bg" " Background - changed / (display) ";
# notify-send -i "$bg" " Background - changed / (display & sddm) ";
# notify-send -i "$bgsddm" "Tapeta SDDM została zmieniona";

$HOME/.config/scripts/swaybg-change-background.sh

# pkill swaybg;
# swaymsg 'output "*" bg $HOME/.background.jpg fill'
# swaymsg reload
