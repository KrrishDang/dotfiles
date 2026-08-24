# Zsh Configuration

A modular, cross-platform Zsh configuration for an AI engineering workstation.

Designed to work on:

- WSL2 (Ubuntu)
- Linux
- macOS

The configuration follows a modular structure where each file has a single responsibility, making it easy to maintain and extend.

---

## Directory Structure

```text
zsh/
├── .zshrc
├── exports.zsh
├── history.zsh
├── shell.zsh
├── completions.zsh
├── plugins.zsh
├── aliases.zsh
├── functions.zsh
└── README.md
```

---

## File Overview

### `.zshrc`

Bootstrap file.

Responsible for:

- Loading environment variables
- Initializing Oh My Zsh
- Loading all configuration modules
- Defining global variables (`DOTFILES`, `WORKSPACE`, etc.)

---

### `exports.zsh`

Environment variables.

Examples:

- XDG Base Directories
- PATH
- Homebrew
- NVM
- uv
- Editor variables
- Workspace variables
- Secrets

---

### `history.zsh`

History configuration.

Includes:

- History size
- Shared history
- Duplicate removal
- History cleanup
- History safety options

---

### `shell.zsh`

General shell behavior.

Includes:

- Navigation
- Completion behavior
- Safety options
- Shell defaults

---

### `completions.zsh`

Completion system.

Features:

- `compinit`
- Completion cache
- Case-insensitive completion
- Colored completion
- Menu selection
- Completion grouping

---

### `plugins.zsh`

External tool initialization.

Current integrations:

- Starship
- Zoxide
- Atuin
- Direnv
- fzf

Each tool is only initialized if installed.

---

### `aliases.zsh`

Common aliases for:

- Navigation
- Git
- Docker
- Python
- uv
- Neovim
- Utilities
- Development

---

### `functions.zsh`

Reusable shell functions.

Examples:

- `mkcd`
- `extract`
- `mkvenv`
- `pyclean`
- `cgit`
- `croot`
- `ports`
- `weather`
- `devinfo`

---

# Required Tools

Recommended:

- Zsh
- Oh My Zsh
- Starship
- Homebrew
- Git
- Neovim
- fzf
- eza
- bat
- zoxide
- atuin
- direnv
- uv
- Docker
- Node.js
- pnpm

---

# Installation

Clone the dotfiles repository.

```bash
git clone <repository>
```

Symlink or copy the configuration into place.

Example:

```bash
ln -s ~/dotfiles/config/zsh/.zshrc ~/.zshrc
```

Ensure all supporting configuration files remain inside the repository.

---

# Design Principles

This configuration is designed around a few principles:

- Modular
- Cross-platform
- Minimal
- Fast startup
- Easy to extend
- XDG-aware where practical
- Safe defaults
- Production-ready

---

# Customization

Most customizations belong in the appropriate module.

Examples:

| Change                | File              |
| --------------------- | ----------------- |
| Environment variables | `exports.zsh`     |
| History               | `history.zsh`     |
| Shell behavior        | `shell.zsh`       |
| Completion            | `completions.zsh` |
| Plugins               | `plugins.zsh`     |
| Aliases               | `aliases.zsh`     |
| Functions             | `functions.zsh`   |

Avoid placing custom logic directly inside `.zshrc`.

---

# Secrets

Never commit secrets.

Sensitive environment variables should be stored in:

```text
~/.config/secrets.env
```

Example:

```bash
export OPENAI_API_KEY="..."
export ANTHROPIC_API_KEY="..."
```

This file is intentionally ignored by Git.

---

# Testing

After making changes, verify the configuration:

```bash
zsh -n ~/.zshrc
```

Open a new shell:

```bash
exec zsh
```

Check startup time:

```bash
time zsh -i -c exit
```

---

# License

This configuration is intended for personal use and may be freely adapted for other environments.
