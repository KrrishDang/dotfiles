# ==========================================
# Environment
# ==========================================

export EDITOR="nvim"
export VISUAL="$EDITOR"
export PAGER="less"
export LESS="-FRX"

# ==========================================
# Homebrew
# ==========================================

if command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv)"
fi

# ==========================================
# PATH
# ==========================================

typeset -U path PATH

path=(
  "$HOME/.local/bin"
  "$HOME/.local/share/pnpm"
  $path
)

export PATH

# ==========================================
# NVM
# ==========================================

export NVM_DIR="$HOME/.nvm"

[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# ==========================================
# uv
# ==========================================

[[ -f "$HOME/.local/bin/env" ]] && source "$HOME/.local/bin/env"

# ==========================================
# Secrets (Never commit)
# ==========================================

[[ -f "$HOME/.config/secrets.env" ]] && source "$HOME/.config/secrets.env"
