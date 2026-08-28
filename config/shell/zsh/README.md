# Zsh Configuration

A modular, cross-platform Zsh configuration for an AI engineering workstation.

Designed to work on:

- WSL2 (Ubuntu)
- Linux
- macOS

The configuration follows a modular structure where each file has a single responsibility, making it easy to maintain, debug, and extend.

---

# Features

- Modular configuration
- Fast startup
- Cross-platform support
- XDG-aware where practical
- Production-ready defaults
- Vim keybindings
- Modern CLI integrations
- AI development workflow
- Safe and maintainable configuration

---

# Directory Structure

```text
zsh/
├── .zshrc
├── aliases.zsh
├── completions.zsh
├── exports.zsh
├── functions.zsh
├── history.zsh
├── plugins.zsh
├── shell.zsh
└── README.md
```

---

# File Overview

## `.zshrc`

Bootstrap entry point.

Responsible for:

- Loading environment variables
- Initializing Oh My Zsh
- Loading modular configuration
- Defining workstation paths

This file should remain as small as possible.

---

## `exports.zsh`

Environment variables and PATH configuration.

Includes:

- XDG directories
- PATH
- Homebrew
- NVM
- Editor variables
- Locale
- Workspace paths
- Secrets

---

## `history.zsh`

History configuration.

Includes:

- Shared history
- Duplicate removal
- Extended timestamps
- Safe history writing
- History cleanup

---

## `shell.zsh`

General shell behaviour.

Includes:

- Navigation
- Editing
- Completion behaviour
- Globbing
- Safety options

---

## `completions.zsh`

Completion system.

Features:

- `compinit`
- Completion cache
- Case-insensitive matching
- Partial matching
- Colored completion
- Grouped completion
- Menu selection

---

## `plugins.zsh`

Initializes external tools.

Current integrations:

- Starship
- Zoxide
- Atuin
- Direnv
- fzf

Each integration is automatically skipped if the corresponding tool is not installed.

---

## `aliases.zsh`

Frequently used aliases.

Includes:

- Navigation
- Git
- Docker
- Python
- uv
- Neovim
- AI tools
- Utilities

---

## `functions.zsh`

Reusable shell functions.

Examples:

- `mkcd`
- `extract`
- `mkvenv`
- `pyclean`
- `cgit`
- `croot`
- `groot`
- `devinfo`
- `ports`
- `weather`

---

# Required Tools

Core:

- Zsh
- Oh My Zsh
- Git
- Neovim

Recommended:

- Starship
- Homebrew
- eza
- bat
- fzf
- fd
- ripgrep
- zoxide
- atuin
- direnv
- uv
- Docker
- Node.js
- pnpm

Optional:

- lazygit
- yazi
- btop
- television
- tmux

---

# Installation

Clone the repository.

```bash
git clone <repository> ~/dotfiles
```

Create the required symlinks.

Example:

```bash
ln -sf ~/dotfiles/config/shell/zsh/.zshrc ~/.zshrc
```

Ensure the remaining configuration files stay inside the repository.

---

# Design Principles

This configuration is built around a few principles.

- Modular
- Fast
- Minimal
- Cross-platform
- XDG-aware
- Safe defaults
- Production-ready
- Easy to extend

---

# Customization

Each module has a single responsibility.

| Change        | File              |
| ------------- | ----------------- |
| Environment   | `exports.zsh`     |
| History       | `history.zsh`     |
| Shell options | `shell.zsh`       |
| Completion    | `completions.zsh` |
| Plugins       | `plugins.zsh`     |
| Aliases       | `aliases.zsh`     |
| Functions     | `functions.zsh`   |

Avoid placing custom logic directly inside `.zshrc`.

---

# Secrets

Never commit secrets.

Store sensitive environment variables in:

```text
~/.config/secrets.env
```

Example:

```bash
export OPENAI_API_KEY="..."
export ANTHROPIC_API_KEY="..."
```

---

# Testing

Validate the configuration.

```bash
zsh -n ~/.zshrc
```

Reload the shell.

```bash
exec zsh
```

Measure startup time.

```bash
time zsh -i -c exit
```

Verify integrations.

```bash
which zsh
which starship
which atuin
which zoxide
which fzf
which eza
which bat
```

---

# Conventions

- Keep `.zshrc` minimal.
- Add new integrations to `plugins.zsh`.
- Add aliases to `aliases.zsh`.
- Add reusable logic to `functions.zsh`.
- Keep environment variables in `exports.zsh`.
- Keep configuration modular.

---

# License

This configuration is intended for personal use and may be freely adapted for other environments.
