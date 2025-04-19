# Archlinux

## **Archlinux - btrfs - Hyprland**

### **_Przed uruchomieniem skryptu arch-install.sh_**

#### Utwórz partycje wielkości partycji w zależności od potrzeby.

`cfdisk`

/dev/sdX1 - /boot/efi - 500MB

/dev/sdX2 - / - 150GB

#### Ustaw zmienne w skrypcie arch-install.sh

ROOT_PASSWORD="" # Hasło dla roota

USER_NAME="" # Nazwa użytkownika

USER_PASSWORD="" # Hasło użytkownika

EFI_PARTITION="/dev/sdX1" # Partycja EFI, utworzona przed uruchomieniem skryptu

ROOT_PARTITION="/dev/sdX2" # Partycja root Btrfs, utworzona przed uruchomieniem skryptu

---

### **.dotfiles**

#### **_Sastosowane Gnu Stow_**

cd ~/Dokumenty/GitHub/ - (lub zastosuj Github Desktop sklonuj repozytorium archlinux)

`mkdir -p ~/Dokumenty/GitHub/ && cd ~/Dokumenty/GitHub`

`git clone --depth 1 https://github.com/trebuhw/hyprland.git`

Skopjuj:

`cp -r ~/Dokumenty/GitHub/archlinux/.dotfiles ~/`

usuń z .config i .local/share pliki katalogi znajdujące się w .dotfiles

terminal: stow . (lub pojedyńczo poszczególne katalogi np. stow kitty/)

--

#### _Przy zmianach w .dotfiles aby zastosować je do git wykonaj:_

`rsync -av ~/.dotfiles ~/Dokumenty/GitHub/archlinux/`
