# tmux

A modular, cross-platform tmux configuration for Linux, macOS, and WSL.

## Requirements

- tmux >= 3.3
- Nerd Font
- Git
- Tmux Plugin Manager (TPM)

## Directory Structure

```text
tmux/
├── tmux.conf
├── tmux.options.conf
├── tmux.plugins.conf
├── tmux.theme.conf
├── tmux.modules.conf
├── tmux.keybinds.conf
├── scripts/
└── README.md
```

## Plugins

- tmux-plugins/tpm
- tmux-plugins/tmux-sensible
- catppuccin/tmux
- tmux-plugins/tmux-yank
- tmux-plugins/tmux-resurrect
- tmux-plugins/tmux-continuum
- sainnhe/tmux-fzf
- wfxr/tmux-fzf-url
- fcsonline/tmux-thumbs
- omerxx/tmux-sessionx
- omerxx/tmux-floax

## Installation

### 1. Install TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 2. Reload tmux

```bash
tmux source-file ~/dotfiles/config/tmux/tmux.conf
```

Or press:

```
Prefix + r
```

### 3. Install plugins

Inside tmux press:

```
Prefix + I
```

## Updating Plugins

Inside tmux press:

```
Prefix + U
```

## Removing Unused Plugins

Inside tmux press:

```
Prefix + Alt + u
```

## Notes

- Uses the Catppuccin Mocha theme.
- Optimized for Vim/Neovim workflows.
- Status bar is positioned at the top.
- Supports Nerd Font icons.
- Session persistence is provided by tmux-resurrect and tmux-continuum.
- Plugin configuration is managed through TPM.
- Custom scripts can be added to the `scripts/` directory.
