#!/bin/bash

sudo pacman -S --needed base-devel
git clone --depth=1 https://aur.archlinux.org/paru.git
cd paru
makepkg -si

cd $HOME/

sudo pacman -Syyu --needed --noconfirm git
sudo pacman -Syyu --needed --noconfirm stow
cd $HOME/

git clone --depth=1 https://github.com/trebuhw/.dotfiles.git
mkdir .local/bin
mkdir .local/icons

cd $HOME/.dotfiles/

stow --adopt .

# Archlinux instalacja programów (wybrane od 241226)

sudo pacman -Syyu --needed --noconfirm 7zip
sudo pacman -Syyu --needed --noconfirm audacity
sudo pacman -Syyu --needed --noconfirm alacritty
sudo pacman -Syyu --needed --noconfirm alsa-firmware
sudo pacman -Syyu --needed --noconfirm alsa-plugins
sudo pacman -Syyu --needed --noconfirm alsa-utils
sudo pacman -Syyu --needed --noconfirm archiso
sudo pacman -Syyu --needed --noconfirm azote
sudo pacman -Syyu --needed --noconfirm blueman
sudo pacman -Syyu --needed --noconfirm bluez
sudo pacman -Syyu --needed --noconfirm bluez-hid2hci
sudo pacman -Syyu --needed --noconfirm bluez-libs
sudo pacman -Syyu --needed --noconfirm bluez-utils
sudo pacman -Syyu --needed --noconfirm btop
sudo pacman -Syyu --needed --noconfirm cliphist
sudo pacman -Syyu --needed --noconfirm code
sudo pacman -Syyu --needed --noconfirm cpupower
sudo pacman -Syyu --needed --noconfirm cups
sudo pacman -Syyu --needed --noconfirm cups-filters
sudo pacman -Syyu --needed --noconfirm cups-pdf
sudo pacman -Syyu --needed --noconfirm dosfstools
sudo pacman -Syyu --needed --noconfirm duf
sudo pacman -Syyu --needed --noconfirm dunst
sudo pacman -Syyu --needed --noconfirm efibootmgr
sudo pacman -Syyu --needed --noconfirm efitools
sudo pacman -Syyu --needed --noconfirm egl-wayland
sudo pacman -Syyu --needed --noconfirm f2fs-tools
sudo pacman -Syyu --needed --noconfirm feh
sudo pacman -Syyu --needed --noconfirm ffmpegthumbnailer
sudo pacman -Syyu --needed --noconfirm file-roller
sudo pacman -Syyu --needed --noconfirm firefox
sudo pacman -Syyu --needed --noconfirm firefox-i18n-pl
sudo pacman -Syyu --needed --noconfirm flameshot
sudo pacman -Syyu --needed --noconfirm floorp-bin
sudo pacman -Syyu --needed --noconfirm foot
sudo pacman -Syyu --needed --noconfirm gcolor3
sudo pacman -Syyu --needed --noconfirm ghostscript
sudo pacman -Syyu --needed --noconfirm gimp
sudo pacman -Syyu --needed --noconfirm github-cli
sudo pacman -Syyu --needed --noconfirm gnome-disk-utility
sudo pacman -Syyu --needed --noconfirm gparted
sudo pacman -Syyu --needed --noconfirm grimblast-git
sudo pacman -Syyu --needed --noconfirm grub
sudo pacman -Syyu --needed --noconfirm grub-customizer
sudo pacman -Syyu --needed --noconfirm grub-hook
sudo pacman -Syyu --needed --noconfirm gsfonts
sudo pacman -Syyu --needed --noconfirm guestfs-tools
sudo pacman -Syyu --needed --noconfirm gutenprint
sudo pacman -Syyu --needed --noconfirm gvfs
sudo pacman -Syyu --needed --noconfirm hdparm
sudo pacman -Syyu --needed --noconfirm htop
sudo pacman -Syyu --needed --noconfirm hwdetect
sudo pacman -Syyu --needed --noconfirm hwinfo
sudo pacman -Syyu --needed --noconfirm hyprland
sudo pacman -Syyu --needed --noconfirm hyprpicker
sudo pacman -Syyu --needed --noconfirm hyprutils
sudo pacman -Syyu --needed --noconfirm i3lock
sudo pacman -Syyu --needed --noconfirm inetutils
sudo pacman -Syyu --needed --noconfirm intel-compute-runtime
sudo pacman -Syyu --needed --noconfirm intel-media-driver
sudo pacman -Syyu --needed --noconfirm intel-oneapi-compiler-shared-runtime
sudo pacman -Syyu --needed --noconfirm intel-ucode
sudo pacman -Syyu --needed --noconfirm iptables
sudo pacman -Syyu --needed --noconfirm iwd
sudo pacman -Syyu --needed --noconfirm kitty
sudo pacman -Syyu --needed --noconfirm less
sudo pacman -Syyu --needed --noconfirm libreoffice-fresh
sudo pacman -Syyu --needed --noconfirm libreoffice-fresh-pl
sudo pacman -Syyu --needed --noconfirm logrotate
sudo pacman -Syyu --needed --noconfirm lsb-release
sudo pacman -Syyu --needed --noconfirm lsd
sudo pacman -Syyu --needed --noconfirm lxappearance
sudo pacman -Syyu --needed --noconfirm mako
sudo pacman -Syyu --needed --noconfirm man-db
sudo pacman -Syyu --needed --noconfirm man-pages
sudo pacman -Syyu --needed --noconfirm mc
sudo pacman -Syyu --needed --noconfirm meld
sudo pacman -Syyu --needed --noconfirm mesa
sudo pacman -Syyu --needed --noconfirm mesa-utils
sudo pacman -Syyu --needed --noconfirm mkinitcpio-firmware
sudo pacman -Syyu --needed --noconfirm neovim
sudo pacman -Syyu --needed --noconfirm network-manager-applet
sudo pacman -Syyu --needed --noconfirm networkmanager
sudo pacman -Syyu --needed --noconfirm networkmanager-openvpn
sudo pacman -Syyu --needed --noconfirm nitrogen
sudo pacman -Syyu --needed --noconfirm ntfs-3g
sudo pacman -Syyu --needed --noconfirm ntp
sudo pacman -Syyu --needed --noconfirm numlockx
sudo pacman -Syyu --needed --noconfirm nwg-look
sudo pacman -Syyu --needed --noconfirm openssh
sudo pacman -Syyu --needed --noconfirm os-prober
sudo pacman -Syyu --needed --noconfirm pacman-contrib
sudo pacman -Syyu --needed --noconfirm pamixer
sudo pacman -Syyu --needed --noconfirm parcellite
sudo pacman -Syyu --needed --noconfirm papirus-icon-theme
sudo pacman -Syyu --needed --noconfirm paru
sudo pacman -Syyu --needed --noconfirm pavucontrol
sudo pacman -Syyu --needed --noconfirm pdfarranger
sudo pacman -Syyu --needed --noconfirm perl
sudo pacman -Syyu --needed --noconfirm picom
sudo pacman -Syyu --needed --noconfirm pipewire-alsa
sudo pacman -Syyu --needed --noconfirm pipewire-pulse
sudo pacman -Syyu --needed --noconfirm plocate
sudo pacman -Syyu --needed --noconfirm polkit-gnome
sudo pacman -Syyu --needed --noconfirm poppler-glib
sudo pacman -Syyu --needed --noconfirm power-profiles-daemon
sudo pacman -Syyu --needed --noconfirm qemu-full
sudo pacman -Syyu --needed --noconfirm qemu-img
sudo pacman -Syyu --needed --noconfirm qt5ct
sudo pacman -Syyu --needed --noconfirm ranger
sudo pacman -Syyu --needed --noconfirm reflector
sudo pacman -Syyu --needed --noconfirm ripgrep
sudo pacman -Syyu --needed --noconfirm rofi-emoji
sudo pacman -Syyu --needed --noconfirm rsync
sudo pacman -Syyu --needed --noconfirm sane
sudo pacman -Syyu --needed --noconfirm scrot
sudo pacman -Syyu --needed --noconfirm sddm
sudo pacman -Syyu --needed --noconfirm simple-scan
sudo pacman -Syyu --needed --noconfirm slurp
sudo pacman -Syyu --needed --noconfirm soundconverter
sudo pacman -Syyu --needed --noconfirm starship
sudo pacman -Syyu --needed --noconfirm swappy
sudo pacman -Syyu --needed --noconfirm swaybg
sudo pacman -Syyu --needed --noconfirm swaylock-effects-git
sudo pacman -Syyu --needed --noconfirm swaylock-fancy-git
sudo pacman -Syyu --needed --noconfirm sxhkd
sudo pacman -Syyu --needed --noconfirm sxiv
sudo pacman -Syyu --needed --noconfirm system-config-printer
sudo pacman -Syyu --needed --noconfirm tela-circle-icon-theme-all
sudo pacman -Syyu --needed --noconfirm texinfo
sudo pacman -Syyu --needed --noconfirm thunar
sudo pacman -Syyu --needed --noconfirm thunar-archive-plugin
sudo pacman -Syyu --needed --noconfirm thunar-volman
sudo pacman -Syyu --needed --noconfirm time
sudo pacman -Syyu --needed --noconfirm timeshift
sudo pacman -Syyu --needed --noconfirm trash-cli
sudo pacman -Syyu --needed --noconfirm tree
sudo pacman -Syyu --needed --noconfirm ttf-jetbrains-mono-nerd
sudo pacman -Syyu --needed --noconfirm ttf-meslo-nerd
sudo pacman -Syyu --needed --noconfirm ttf-noto-nerd
sudo pacman -Syyu --needed --noconfirm ttf-opensans
sudo pacman -Syyu --needed --noconfirm tumbler
sudo pacman -Syyu --needed --noconfirm ueberzug
sudo pacman -Syyu --needed --noconfirm unrar
sudo pacman -Syyu --needed --noconfirm unzip
sudo pacman -Syyu --needed --noconfirm upower
sudo pacman -Syyu --needed --noconfirm usbutils
sudo pacman -Syyu --needed --noconfirm vim
sudo pacman -Syyu --needed --noconfirm vlc
sudo pacman -Syyu --needed --noconfirm vulkan-intel
sudo pacman -Syyu --needed --noconfirm waybar
sudo pacman -Syyu --needed --noconfirm wget
sudo pacman -Syyu --needed --noconfirm which
sudo pacman -Syyu --needed --noconfirm wl-clipboard
sudo pacman -Syyu --needed --noconfirm wlogout
sudo pacman -Syyu --needed --noconfirm wofi
sudo pacman -Syyu --needed --noconfirm wpa_supplicant
sudo pacman -Syyu --needed --noconfirm xclip
sudo pacman -Syyu --needed --noconfirm xdg-desktop-portal-hyprland
sudo pacman -Syyu --needed --noconfirm xdg-user-dirs
sudo pacman -Syyu --needed --noconfirm xf86-input-synaptics
sudo pacman -Syyu --needed --noconfirm xf86-video-intel
sudo pacman -Syyu --needed --noconfirm xf86-video-vesa
sudo pacman -Syyu --needed --noconfirm xfce4-notifyd
sudo pacman -Syyu --needed --noconfirm xfce4-terminal
sudo pacman -Syyu --needed --noconfirm xorg.0.7-1.1
sudo pacman -Syyu --needed --noconfirm yazi
sudo pacman -Syyu --needed --noconfirm zathura
sudo pacman -Syyu --needed --noconfirm zathura-pdf-mupdf
sudo pacman -Syyu --needed --noconfirm zoxide

paru bibata-cursor-theme
paru brother-dcp1610w
paru brscan4
paru github-desktop-bin


cd $HOME

cd $HOME/archlinux/file
sudo cp -r Catppuccin-Mocha-Standart-Blue-Dark ~/usr/share/themes
cd $HOME

git clone --dept=1  https://github.com/trebuhw/dwm.git
cd $HOME/dwm/
sudo rsync ~/HOME/dwm/etc/X11/* /etc/X11/
sudo rsync ~/HOME/dwm/usr/share/* /usr/share/

sh $HOME/archlinux/config/set-theme.sh
sh $HOME/archlinux/config/ln-root.sh

