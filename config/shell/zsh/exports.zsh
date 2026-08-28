# ==========================================================
# XDG Base Directories
# ==========================================================

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

# ==========================================================
# Dotfiles & Workspace
# ==========================================================

export DOTFILES="${DOTFILES:-$HOME/dotfiles}"
export WORKSPACE="${WORKSPACE:-$HOME/Developer}"

# ==========================================================
# Default Applications
# ==========================================================

export EDITOR="nvim"
export VISUAL="$EDITOR"

export PAGER="less"
export MANPAGER="less -R"

export LESS="-FRX"

# ==========================================================
# Locale
# ==========================================================

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# ==========================================================
# Homebrew
# ==========================================================

for brew_bin in \
    "/home/linuxbrew/.linuxbrew/bin/brew" \
    "/opt/homebrew/bin/brew" \
    "/usr/local/bin/brew"
do
    if [[ -x "$brew_bin" ]]; then
        eval "$("$brew_bin" shellenv)"
        break
    fi
done

# ==========================================================
# PATH
# ==========================================================

typeset -U path PATH

path=(
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "$HOME/.local/share/pnpm"
    "$HOME/.npm-global/bin"
    $path
)

export PATH

# ==========================================================
# NVM
# ==========================================================

export NVM_DIR="$HOME/.nvm"

if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    source "$NVM_DIR/nvm.sh"
fi

# ==========================================================
# uv
# ==========================================================

if command -v uv >/dev/null 2>&1; then
    eval "$(uv generate-shell-completion zsh 2>/dev/null)" >/dev/null 2>&1 || true
fi

# ==========================================================
# FZF
# ==========================================================

if command -v fzf >/dev/null 2>&1; then
    export FZF_DEFAULT_COMMAND="fd --type file --hidden --follow --exclude .git"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# ==========================================================
# Ripgrep
# ==========================================================

export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

# ==========================================================
# Less
# ==========================================================

export LESSHISTFILE="-"

# ==========================================================
# Secrets (Never Commit)
# ==========================================================

if [[ -f "$XDG_CONFIG_HOME/secrets.env" ]]; then
    source "$XDG_CONFIG_HOME/secrets.env"
fi
