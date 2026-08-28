# ==========================================================
# Starship
# ==========================================================

export STARSHIP_CONFIG="$DOTFILES/config/terminal/starship/starship.toml"

if command -v starship >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

# ==========================================================
# Zoxide
# ==========================================================

if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

# ==========================================================
# Atuin
# ==========================================================

if command -v atuin >/dev/null 2>&1; then
    eval "$(atuin init zsh)"
fi

# ==========================================================
# Direnv
# ==========================================================

if command -v direnv >/dev/null 2>&1; then
    eval "$(direnv hook zsh)"
fi

# ==========================================================
# fzf
# ==========================================================

if command -v fzf >/dev/null 2>&1; then
    # Homebrew (macOS / Linuxbrew)
    if command -v brew >/dev/null 2>&1; then
        FZF_DIR="$(brew --prefix fzf 2>/dev/null)/shell"

        [[ -f "$FZF_DIR/completion.zsh" ]] && source "$FZF_DIR/completion.zsh"
        [[ -f "$FZF_DIR/key-bindings.zsh" ]] && source "$FZF_DIR/key-bindings.zsh"

    # Ubuntu / Debian / WSL
    elif [[ -d /usr/share/doc/fzf/examples ]]; then
        [[ -f /usr/share/doc/fzf/examples/completion.zsh ]] && source /usr/share/doc/fzf/examples/completion.zsh
        [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]] && source /usr/share/doc/fzf/examples/key-bindings.zsh
    fi
fi
