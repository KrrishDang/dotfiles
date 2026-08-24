# ==========================================================
# XDG Base Directories
# ==========================================================

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

# ==========================================================
# Workspace
# ==========================================================

export WORKSPACE="$HOME/Developer"

# ==========================================================
# Environment
# ==========================================================

export EDITOR="nvim"
export VISUAL="$EDITOR"

export PAGER="less"
export MANPAGER="less -R"
export LESS="-FRX"
export BAT_THEME="Catppuccin Mocha"

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
    "$HOME/.local/share/pnpm"
    $path
)

export PATH

# ==========================================================
# NVM
# ==========================================================

export NVM_DIR="$HOME/.nvm"

[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# ==========================================================
# uv
# ==========================================================

UV_ENV="$HOME/.local/bin/env"

[[ -f "$UV_ENV" ]] && source "$UV_ENV"

# ==========================================================
# Secrets (Never Commit)
# ==========================================================

[[ -f "$XDG_CONFIG_HOME/secrets.env" ]] && source "$XDG_CONFIG_HOME/secrets.env"
