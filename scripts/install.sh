#!/bin/bash

DOTFILES="$HOME/dotfiles"

ln -sf "$DOTFILES/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILES/git/.gitconfig" ~/.gitconfig
ln -sf "$DOTFILES/tmux/.tmux.conf" ~/.tmux.conf

mkdir -p ~/.config
ln -sf "$DOTFILES/config/starship.toml" ~/.config/starship.toml

mkdir -p ~/.vscode-server/data/Machine
ln -sf "$DOTFILES/vscode/wsl/settings.json" ~/.vscode-server/data/Machine/settings.json

if [ -f "$DOTFILES/vscode/wsl/extensions.txt" ]; then
  cat "$DOTFILES/vscode/wsl/extensions.txt" | xargs -L 1 code --install-extension
fi