#!/bin/bash

DOTFILES="${1:-$HOME/.dotfiles}"
TARGET="${2:-$HOME}"

# Funkcja do przenoszenia istniejących plików/katalogów
backup_existing_files() {
  dest="$1" # Ścieżka do oryginalnego pliku/katalogu
  if [ -e "$dest" ]; then
    backup="$dest.bak"
    echo "Tworzę kopię zapasową: $dest -> $backup"
    if [ -e "$backup" ]; then
      echo "UWAGA: Kopia zapasowa $backup już istnieje. Pomijam."
    else
      mv "$dest" "$backup"
    fi
  fi
}

# Funkcja do tworzenia brakujących katalogów
ensure_directory_exists() {
  dir="$1" # Ścieżka do katalogu
  if [ ! -d "$dir" ]; then
    echo "Tworzę brakujący katalog: $dir"
    mkdir -p "$dir"
  fi
}

# Iteracja po katalogach w .dotfiles
for dir in "$DOTFILES"/*/; do
  app=$(basename "$dir") # Nazwa aplikacji (np. "alacritty")

  # Wyszukiwanie plików i katalogów w strukturze .dotfiles
  find "$dir" -type f | while read -r file; do
    # Oblicz ścieżkę docelową na podstawie struktury .dotfiles
    rel_path="${file#$dir}"               # Ścieżka względna względem katalogu aplikacji
    target_dir=$(dirname "$rel_path")     # Katalog docelowy (np. .config/alacritty)
    full_target_dir="$TARGET/$target_dir" # Pełna ścieżka do katalogu docelowego
    dest="$full_target_dir/$(basename "$file")" # Pełna ścieżka do pliku docelowego

    # Tworzenie brakującego katalogu
    ensure_directory_exists "$full_target_dir"

    # Backup istniejących plików/katalogów
    backup_existing_files "$dest"
  done
done

# Uruchomienie stow po wykonaniu kopii zapasowych i tworzeniu katalogów
stow --target="$TARGET" --dir="$DOTFILES" */
