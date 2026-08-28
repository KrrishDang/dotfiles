#!/usr/bin/env bash

set -Eeuo pipefail

# ==================================================
# Install Editor Extensions
# ==================================================

DOTFILES="${DOTFILES:-$HOME/dotfiles}"
EXT_DIR="$DOTFILES/config/editors/extensions"

install_extensions() {
    local editor="$1"
    local list="$2"

    [[ -f "$list" ]] || return

    while IFS= read -r extension || [[ -n "$extension" ]]; do
        [[ -z "$extension" ]] && continue
        [[ "$extension" =~ ^# ]] && continue

        echo "Installing: $extension"

        "$editor" --install-extension "$extension"
    done < "$list"
}

echo "=========================================="
echo "Installing editor extensions..."
echo "=========================================="

# ==================================================
# VS Code
# ==================================================

if command -v code >/dev/null 2>&1; then

    echo
    echo "VS Code"

    install_extensions code "$EXT_DIR/shared.list"
    install_extensions code "$EXT_DIR/vscode.list"

fi

# ==================================================
# Cursor
# ==================================================

if command -v cursor >/dev/null 2>&1; then

    echo
    echo "Cursor"

    install_extensions cursor "$EXT_DIR/shared.list"
    install_extensions cursor "$EXT_DIR/cursor.list"

fi

# ==================================================
# Antigravity
# ==================================================

if command -v antigravity-ide >/dev/null 2>&1; then

    echo
    echo "Antigravity"

    install_extensions antigravity-ide "$EXT_DIR/shared.list"

    if [[ -f "$EXT_DIR/antigravity.list" ]]; then
        install_extensions antigravity-ide "$EXT_DIR/antigravity.list"
    fi

fi

echo
echo "✓ Extension installation complete."
