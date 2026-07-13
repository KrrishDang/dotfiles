#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"

echo "Exporting VS Code settings..."

mkdir -p "$DOTFILES/vscode"

code --list-extensions > "$DOTFILES/vscode/extensions.txt"

cp ~/.vscode-server/data/Machine/settings.json \
   "$DOTFILES/vscode/settings.json"

cp ~/.vscode-server/data/Machine/keybindings.json \
   "$DOTFILES/vscode/keybindings.json" 2>/dev/null || true

echo "Done."
