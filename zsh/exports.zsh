# ==========================================
# PATH
# ==========================================

typeset -U path PATH

path=(
    "$HOME/.local/share/pnpm"
    $path
)

# ==========================================
# NVM
# ==========================================

export NVM_DIR="$HOME/.nvm"

if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    source "$NVM_DIR/nvm.sh"
    nvm use default >/dev/null 2>&1 || true
fi

# ==========================================
# Homebrew (Linux/macOS)
# ==========================================

if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# ==========================================
# uv
# ==========================================

[[ -f "$HOME/.local/bin/env" ]] && source "$HOME/.local/bin/env"

# ==========================================
# Secrets (Never commit)
# ==========================================

[[ -f "$HOME/.config/secrets.env" ]] && source "$HOME/.config/secrets.env"
