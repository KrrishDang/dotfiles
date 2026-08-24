# ==========================================================
# Navigation
# ==========================================================

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias proj="cd \"$WORKSPACE\""
alias dots="cd \"$DOTFILES\""

# ==========================================================
# Editors
# ==========================================================

alias n="nvim"
alias v="nvim"
alias nv="nvim"
alias vi="nvim"
alias vim="nvim"

# ==========================================================
# Shells
# ==========================================================

alias reload="exec zsh"

# ==========================================================
# File Management
# ==========================================================

if command -v eza >/dev/null 2>&1; then
    alias ls='eza --icons=auto'
    alias ll='eza -la --icons=auto --git'
    alias la='eza -a --icons=auto'
    alias lt='eza --tree --level=2 --icons=auto'
    alias tree='eza --tree --icons=auto'
fi

# Keep cat unchanged
if command -v bat >/dev/null 2>&1; then
    alias c="bat"
fi

if command -v fzf >/dev/null 2>&1; then
    alias f="fzf"
    alias fh="history | fzf"
fi

alias fdf='fd'
alias fda='fd --hidden'
alias fdc='fd --type f'
alias fdd='fd --type d'

alias rgf='rg --files'
alias rgh='rg --hidden'
alias rgi='rg -i'
alias rgv='rg --vimgrep'

# ==========================================================
# Utilities
# ==========================================================

alias cls="clear"
alias path='printf "%s\n" "${path[@]}"'

# ==========================================================
# Dotfiles
# ==========================================================

alias dev="$DOTFILES/scripts/dev.sh"

# ==========================================================
# Git
# ==========================================================

alias g="git"

alias gs="git status"

alias ga="git add"
alias gaa="git add ."

alias gc="git commit"
alias gcm="git commit -m"

alias gp="git push"
alias gl="git pull"

alias gd="git diff"
alias gds="git diff --staged"

alias gb="git branch"

alias gco="git checkout"
alias gsw="git switch"

alias grs="git restore"

alias gst="git stash"
alias gstp="git stash pop"

alias gcl="git clone"

alias glog="git log --oneline --graph --decorate --all"

# ==========================================================
# Python / uv
# ==========================================================

alias py="python3"

if command -v uv >/dev/null 2>&1; then
    alias pip="uv pip"
    alias uvrun="uv run"
    alias uvsync="uv sync"
    alias pytest="uv run pytest"
fi

alias venv='[[ -f .venv/bin/activate ]] && source .venv/bin/activate'

if command -v ruff >/dev/null 2>&1; then
    alias lint="ruff check ."
    alias format="ruff format ."
fi

# ==========================================================
# Docker
# ==========================================================

alias d="docker"
alias dc="docker compose"

alias dps="docker ps"
alias di="docker images"

alias drm="docker rm"
alias drmi="docker rmi"

alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs -f"
alias dcps="docker compose ps"

alias dprune="docker system prune"
alias dprunea="docker system prune -a"

# ==========================================================
# FastAPI
# ==========================================================

if command -v uvicorn >/dev/null 2>&1; then
    alias serve="uvicorn app.main:app --reload"
fi

# ==========================================================
# Optional Tools
# ==========================================================

# Editors
alias antigravity="antigravity-ide"

# AI
alias oc='opencode'
alias cc='claude'
alias cx='codex'
alias ag="agy"

# Developer Tools
alias lg="lazygit"
alias y="yazi"
alias b="btop"

# GitHub CLI
# alias ghrepo="gh repo view --web"

# ==========================================================
# Extras
# ==========================================================

# CMatrix
alias mat="cmatrix"

# Fastfetch
alias ffd='fastfetch'
alias ffm='fastfetch --config ~/.config/fastfetch/minimal.jsonc'
alias ffp='fastfetch --config ~/.config/fastfetch/presentation.jsonc'
