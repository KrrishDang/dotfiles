#!/bin/bash

sudo apt update
sudo apt install -y zsh git curl fzf eza unzip

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if ! command -v starship &> /dev/null; then
  curl -sS https://starship.rs/install.sh | sh
fi