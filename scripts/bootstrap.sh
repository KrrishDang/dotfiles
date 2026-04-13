#!/bin/bash

echo "Installing base packages..."

sudo apt update
sudo apt install -y zsh git curl fzf eza unzip build-essential

# ================================
# OH MY ZSH
# ================================
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# ================================
# STARSHIP
# ================================
if ! command -v starship &> /dev/null; then
  curl -sS https://starship.rs/install.sh | sh
fi

# ================================
# NVM (Node Version Manager)
# ================================
if [ ! -d "$HOME/.nvm" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install latest Node
nvm install --lts

# ================================
# PNPM
# ================================
if ! command -v pnpm &> /dev/null; then
  corepack enable
  corepack prepare pnpm@latest --activate
fi

# ================================
# UV (Python package manager)
# ================================
if ! command -v uv &> /dev/null; then
  curl -Ls https://astral.sh/uv/install.sh | sh
fi

echo "Bootstrap complete!"