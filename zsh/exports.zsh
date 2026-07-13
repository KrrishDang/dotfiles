# ==========================================
# PATH
# ==========================================

export PATH="$HOME/.local/share/pnpm:$PATH"

# ==========================================
# NVM
# ==========================================

export NVM_DIR="$HOME/.nvm"

if [[ -s "$NVM_DIR/nvm.sh" ]]; then
    source "$NVM_DIR/nvm.sh"
    nvm use default >/dev/null 2>&1
fi

# ==========================================
# uv
# ==========================================

[[ -f "$HOME/.local/bin/env" ]] && source "$HOME/.local/bin/env"

# ==========================================
# Secrets (Never commit)
# ==========================================

[[ -f "$HOME/.config/secrets.env" ]] && source "$HOME/.config/secrets.env"
