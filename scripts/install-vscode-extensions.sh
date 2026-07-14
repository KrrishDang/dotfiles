#!/usr/bin/env bash

set -euo pipefail

DOTFILES="${DOTFILES:-$HOME/dotfiles}"
EXT_DIR="$DOTFILES/vscode/extensions"

install_extensions() {
    local list="$1"

    while IFS= read -r ext || [[ -n "$ext" ]]; do
        [[ -z "$ext" || "$ext" =~ ^# ]] && continue

        echo "Installing $ext..."
        code --install-extension "$ext"
    done < "$list"
}

echo "Installing core extensions..."
install_extensions "$EXT_DIR/core.list"

echo "Installing themes..."
install_extensions "$EXT_DIR/themes.list"

echo "Installing optional extensions..."
install_extensions "$EXT_DIR/optional.list"

echo "✅ VS Code extensions installed."
