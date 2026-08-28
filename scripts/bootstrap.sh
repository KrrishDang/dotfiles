#!/usr/bin/env bash

set -Eeuo pipefail

# ==================================================
# Bootstrap
# ==================================================

DOTFILES="${DOTFILES:-$HOME/dotfiles}"

echo "=========================================="
echo " AI Workstation Bootstrap"
echo "=========================================="

# ==================================================
# Detect Platform
# ==================================================

OS="$(uname -s)"

case "$OS" in
    Linux)
        PLATFORM="linux"
        ;;
    Darwin)
        PLATFORM="macos"
        ;;
    *)
        echo "Unsupported operating system: $OS"
        exit 1
        ;;
esac

# ==================================================
# Linux
# ==================================================

if [[ "$PLATFORM" == "linux" ]]; then
    sudo apt update

    sudo apt install -y \
        build-essential \
        curl \
        fd-find \
        fzf \
        git \
        ripgrep \
        stow \
        tmux \
        unzip \
        zip \
        zoxide \
        zsh
fi

# ==================================================
# Homebrew
# ==================================================

if ! command -v brew >/dev/null 2>&1; then
    if [[ "$PLATFORM" == "macos" ]]; then
        /bin/bash -c \
            "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
fi

# ==================================================
# Oh My Zsh
# ==================================================

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    RUNZSH=no CHSH=no \
    sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# ==================================================
# Starship
# ==================================================

if ! command -v starship >/dev/null 2>&1; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# ==================================================
# uv
# ==================================================

if ! command -v uv >/dev/null 2>&1; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# ==================================================
# NVM
# ==================================================

if [[ ! -d "$HOME/.nvm" ]]; then
    curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi

export NVM_DIR="$HOME/.nvm"

if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    source "$NVM_DIR/nvm.sh"
fi

if command -v nvm >/dev/null 2>&1; then
    nvm install --lts
fi

# ==================================================
# pnpm
# ==================================================

if command -v corepack >/dev/null 2>&1; then
    corepack enable

    if ! command -v pnpm >/dev/null 2>&1; then
        corepack prepare pnpm@latest --activate
    fi
fi

# ==================================================
# Directories
# ==================================================

mkdir -p \
    "$HOME/Developer" \
    "$HOME/.config" \
    "$HOME/.cache" \
    "$HOME/.local/bin" \
    "$HOME/.local/share"

# ==================================================
# Finished
# ==================================================

echo
echo "Bootstrap completed successfully."
