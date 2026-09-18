#!/usr/bin/env zsh

# ==========================================================
# Interactive Shell Only
# ==========================================================

[[ -o interactive ]] || return

# ==========================================================
# Dotfiles
# ==========================================================

export DOTFILES="${DOTFILES:-$HOME/dotfiles}"
export ZSH_CONFIG="$DOTFILES/config/shell/zsh"

# ==========================================================
# Shell Options
# ==========================================================

setopt prompt_subst

# ==========================================================
# Oh My Zsh
# ==========================================================

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ==========================================================
# Environment
# ==========================================================

[[ -f "$ZSH_CONFIG/exports.zsh" ]] && source "$ZSH_CONFIG/exports.zsh"

# ==========================================================
# Oh My Zsh
# ==========================================================

[[ -f "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"

# ==========================================================
# Modular Configuration
# ==========================================================

for file in \
  history \
  shell \
  completions \
  plugins \
  aliases \
  functions
do
  [[ -f "$ZSH_CONFIG/${file}.zsh" ]] && source "$ZSH_CONFIG/${file}.zsh"
done

# ==========================================================
# Atuin
# ==========================================================

if command -v atuin >/dev/null 2>&1; then
  eval "$(atuin init zsh)"
fi

# ==========================================================
# Starship
# ==========================================================

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# >>> Codex installer >>>
export PATH="/home/krrish/.local/bin:$PATH"
# <<< Codex installer <<<
