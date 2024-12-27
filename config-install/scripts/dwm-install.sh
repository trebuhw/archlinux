#!/bin/bash

# dwm
cd $HOME/.config/suckless/dwm/ &
rm config.h &
cp config.def.h config.h &
sudo make && sudo make clean install

# dmenu
cd $HOME/.config/suckless/dmenu/ &
rm config.h &
cp config.def.h config.h &
sudo make && sudo make clean install

# st
cd $HOME/.config/suckless/slstatus/ &
rm config.h &
cp config.def.h config.h &
sudo make && sudo make clean install

# slstatus
cd $HOME/.config/suckless/st/ &
rm config.h &
cp config.def.h config.h &
sudo make && sudo make clean install
