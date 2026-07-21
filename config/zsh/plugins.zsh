# ==========================================
# fzf
# ==========================================

if [[ -f "$(brew --prefix)/opt/fzf/shell/completion.zsh" ]]; then
  source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
fi

if [[ -f "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh" ]]; then
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
fi

# ==========================================
# zoxide
# ==========================================

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# ==========================================
# direnv
# ==========================================

if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi
