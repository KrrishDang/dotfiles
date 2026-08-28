#!/usr/bin/env bash

set -Eeuo pipefail

# ==================================================
# AI Workstation Installer
# ==================================================

DOTFILES="${DOTFILES:-$HOME/dotfiles}"

echo
echo "=========================================="
echo " AI Workstation Installer"
echo "=========================================="
echo

# ==================================================
# Helper
# ==================================================

link() {
	local source="$1"
	local target="$2"

	mkdir -p "$(dirname "$target")"

	ln -sfn "$source" "$target"

	printf "✓ %s\n" "$target"
}

# ==================================================
# Required Directories
# ==================================================

mkdir -p \
	"$HOME/.config" \
	"$HOME/.cache" \
	"$HOME/.local/bin" \
	"$HOME/.local/share"

mkdir -p \
	"$HOME/.config/git" \
	"$HOME/.config/Code/User" \
	"$HOME/.config/Cursor/User" \
	"$HOME/.config/Antigravity/User"

# ==================================================
# Shell
# ==================================================

link \
	"$DOTFILES/config/shell/zsh/.zshrc" \
	"$HOME/.zshrc"

link \
	"$DOTFILES/config/shell/nushell" \
	"$HOME/.config/nushell"

# ==================================================
# Git
# ==================================================

link \
	"$DOTFILES/config/git/.gitconfig" \
	"$HOME/.gitconfig"

link \
	"$DOTFILES/config/git/.gitignore_global" \
	"$HOME/.config/git/.gitignore_global"

# ==================================================
# Editors
# ==================================================

## Neovim

link \
	"$DOTFILES/config/editors/nvim" \
	"$HOME/.config/nvim"

## VS Code

link \
	"$DOTFILES/config/editors/vscode/settings.json" \
	"$HOME/.config/Code/User/settings.json"

link \
	"$DOTFILES/config/editors/vscode/keybindings.json" \
	"$HOME/.config/Code/User/keybindings.json"

## Cursor

link \
	"$DOTFILES/config/editors/cursor/settings.json" \
	"$HOME/.config/Cursor/User/settings.json"

link \
	"$DOTFILES/config/editors/cursor/keybindings.json" \
	"$HOME/.config/Cursor/User/keybindings.json"

## Antigravity IDE

link \
	"$DOTFILES/config/editors/antigravity/settings.json" \
	"$HOME/.config/Antigravity/User/settings.json"

link \
	"$DOTFILES/config/editors/antigravity/keybindings.json" \
	"$HOME/.config/Antigravity/User/keybindings.json"

# ==================================================
# Terminal
# ==================================================

## Starship

link \
	"$DOTFILES/config/terminal/starship" \
	"$HOME/.config/starship"

## Fastfetch

link \
	"$DOTFILES/config/terminal/fastfetch" \
	"$HOME/.config/fastfetch"

## Television

link \
	"$DOTFILES/config/terminal/television" \
	"$HOME/.config/television"

## tmux

link \
	"$DOTFILES/config/terminal/tmux" \
	"$HOME/.config/tmux"

link \
	"$DOTFILES/config/terminal/tmux/bootstrap.conf" \
	"$HOME/.tmux.conf"

# ==================================================
# SSH
# ==================================================

link \
	"$DOTFILES/config/ssh" \
	"$HOME/.ssh"

# ==================================================
# AI Tools
# ==================================================

## OpenCode

link \
	"$DOTFILES/config/ai/opencode" \
	"$HOME/.config/opencode"

## Codex

link \
	"$DOTFILES/config/ai/codex" \
	"$HOME/.codex"

# ==================================================
# Editor Extensions
# ==================================================

if [[ -f "$DOTFILES/scripts/install-vscode-extensions.sh" ]]; then
	echo
	echo "Installing editor extensions..."
	bash "$DOTFILES/scripts/install-vscode-extensions.sh"
fi

# ==================================================
# Default Shell
# ==================================================

if command -v zsh >/dev/null 2>&1; then
	CURRENT_SHELL="$(basename "$SHELL")"

	if [[ "$CURRENT_SHELL" != "zsh" ]]; then
		echo
		echo "Changing default shell to zsh..."
		chsh -s "$(command -v zsh)"
	fi
fi

# ==================================================
# Finished
# ==================================================

echo
echo "=========================================="
echo " Installation Complete"
echo "=========================================="
echo
echo "Restart your terminal or run:"
echo
echo "    exec zsh"
echo
