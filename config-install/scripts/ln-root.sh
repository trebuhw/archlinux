#!/bin/bash

# Funkcja do tworzenia dowiązania symbolicznego z usuwaniem istniejących plików lub katalogów
create_symlink() {
    source_path="$1"
    target_path="$2"

    # Tworzenie dowiązania symbolicznego z opcją -sf (nadpisywanie istniejących plików)
    echo "Tworzę dowiązanie symboliczne: $source_path -> $target_path"
    sudo ln -sf "$source_path" "$target_path"
}

# Lista dowiązań do utworzenia
create_symlink ~/dotfiles/gtkrc-2.0/.gtkrc-2.0 /root/.gtkrc-2.0
create_symlink ~/dotfiles/vim/.vimrc /root/.vimrc
create_symlink ~/dotfiles/vim/.viminfo /root/.viminfo
create_symlink ~/dotfiles/vim/.config/vim /root/.config/vim
create_symlink ~/dotfiles/nvim/.config/nvim /root/.config/nvim
create_symlink ~/dotfiles/mc/.config/mc /root/.config/mc
create_symlink ~/dotfiles/gtk-4.0/.config/gtk-4.0 /root/.config/gtk-4.0
create_symlink ~/dotfiles/gtk-3.0/.config/gtk-3.0 /root/.config/gtk-3.0
create_symlink ~/dotfiles/gtk-2.0/.config/gtk-2.0 /root/.config/gtk-2.0
create_symlink ~/dotfiles/yazi/.config/yazi /root/.config/yazi
create_symlink ~/dotfiles/ranger/.config/ranger /root/.config/ranger
