#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"

echo "Installing VS Code extensions..."

while read extension; do
    code --install-extension "$extension"
done < "$DOTFILES/vscode/extensions.txt"

cp "$DOTFILES/vscode/settings.json" \
   ~/.vscode-server/data/Machine/settings.json

cp "$DOTFILES/vscode/keybindings.json" \
   ~/.vscode-server/data/Machine/keybindings.json

echo "Done."
