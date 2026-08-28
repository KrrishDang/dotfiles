#!/usr/bin/env bash

set -Eeuo pipefail

# ==================================================
# Export Editor Configuration
# ==================================================

DOTFILES="${DOTFILES:-$HOME/dotfiles}"

VSCODE_DIR="$DOTFILES/config/editors/vscode"
CURSOR_DIR="$DOTFILES/config/editors/cursor"
ANTIGRAVITY_DIR="$DOTFILES/config/editors/antigravity"

EXTENSIONS_DIR="$DOTFILES/config/editors/extensions"

mkdir -p \
    "$VSCODE_DIR" \
    "$CURSOR_DIR" \
    "$ANTIGRAVITY_DIR" \
    "$EXTENSIONS_DIR"

echo "=========================================="
echo "Exporting editor configuration..."
echo "=========================================="

# ==================================================
# VS Code
# ==================================================

if command -v code >/dev/null 2>&1; then

    echo "• VS Code"

    code --list-extensions | sort \
        > "$EXTENSIONS_DIR/vscode.list"

    cp \
        "$HOME/.config/Code/User/settings.json" \
        "$VSCODE_DIR/settings.json" \
        2>/dev/null || true

    cp \
        "$HOME/.config/Code/User/keybindings.json" \
        "$VSCODE_DIR/keybindings.json" \
        2>/dev/null || true

fi

# ==================================================
# Cursor
# ==================================================

if command -v cursor >/dev/null 2>&1; then

    echo "• Cursor"

    cursor --list-extensions | sort \
        > "$EXTENSIONS_DIR/cursor.list"

    cp \
        "$HOME/.config/Cursor/User/settings.json" \
        "$CURSOR_DIR/settings.json" \
        2>/dev/null || true

    cp \
        "$HOME/.config/Cursor/User/keybindings.json" \
        "$CURSOR_DIR/keybindings.json" \
        2>/dev/null || true

fi

# ==================================================
# Antigravity
# ==================================================

if command -v antigravity-ide >/dev/null 2>&1; then

    echo "• Antigravity"

    antigravity-ide --list-extensions 2>/dev/null | sort \
        > "$EXTENSIONS_DIR/antigravity.list" \
        || true

    cp \
        "$HOME/.config/Antigravity/User/settings.json" \
        "$ANTIGRAVITY_DIR/settings.json" \
        2>/dev/null || true

    cp \
        "$HOME/.config/Antigravity/User/keybindings.json" \
        "$ANTIGRAVITY_DIR/keybindings.json" \
        2>/dev/null || true

fi

echo
echo "Editor configuration exported."
