#!/bin/bash

REPO_URL="https://github.com/trebuhw/.dotfiles.git"
DOTFILES="${1:-$HOME/.dotfiles}"
TARGET="${2:-$HOME}"

# Klonowanie repozytorium jeśli nie istnieje
if [ ! -d "$DOTFILES" ]; then
  echo "Klonuję repozytorium $REPO_URL do $DOTFILES"
  git clone "$REPO_URL" "$DOTFILES"
else
  echo "Repozytorium $DOTFILES już istnieje, pomijam klonowanie."
fi

# Funkcja do przenoszenia istniejących plików/katalogów
backup_existing_files() {
  dest="$1"
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
  dir="$1"
  if [ ! -d "$dir" ]; then
    echo "Tworzę brakujący katalog: $dir"
    mkdir -p "$dir"
  fi
}

# Iteracja po katalogach w .dotfiles
for dir in "$DOTFILES"/*/; do
  app=$(basename "$dir")

  find "$dir" -type f | while read -r file; do
    rel_path="${file#$dir}"
    target_dir=$(dirname "$rel_path")
    full_target_dir="$TARGET/$target_dir"
    dest="$full_target_dir/$(basename "$file")"

    ensure_directory_exists "$full_target_dir"
    backup_existing_files "$dest"
  done
done

# Wykonanie stow
stow --target="$TARGET" --dir="$DOTFILES" */
