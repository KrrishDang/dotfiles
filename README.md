# Dotfiles

My WSL-based development environment.

## What this does

Sets up a complete WSL development environment with:

- Zsh + Oh My Zsh
- Starship prompt
- tmux
- Git configuration
- VS Code (WSL)

Everything is symlinked for easy updates.

## Setup

```bash
git clone https://github.com/KrrishDang/dotfiles.git ~/dotfiles
cd ~/dotfiles/scripts
chmod +x *.sh
./bootstrap.sh
./install.sh
```

VS Code

Extensions

- Export:
  ./scripts/export-vscode.sh

- Import:
  ./scripts/import-vscode.sh
