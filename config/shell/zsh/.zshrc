#!/usr/bin/env zsh

[[ -o interactive ]] || return

# ==========================================================
# Dotfiles
# ==========================================================

export DOTFILES="${DOTFILES:-$HOME/dotfiles}"
export ZSH_CONFIG="$DOTFILES/config/zsh"

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
    "$ZSH_CONFIG/history.zsh" \
    "$ZSH_CONFIG/shell.zsh" \
    "$ZSH_CONFIG/completions.zsh" \
    "$ZSH_CONFIG/plugins.zsh" \
    "$ZSH_CONFIG/aliases.zsh" \
    "$ZSH_CONFIG/functions.zsh"
do
    [[ -f "$file" ]] && source "$file"
done

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
