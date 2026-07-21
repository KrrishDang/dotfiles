# ==========================================
# Navigation
# ==========================================

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias proj="cd ~/dev"
alias dots="cd $DOTFILES"

# ==========================================
# File Management
# ==========================================

if command -v eza >/dev/null 2>&1; then
  alias ls="eza --icons"
  alias ll="eza -la --icons"
  alias la="eza -a --icons"
  alias tree="eza --tree --icons"
  alias lt="eza --tree --level=2 --icons"
fi

if command -v bat >/dev/null 2>&1; then
  alias cat="bat"
fi

if command -v fzf >/dev/null 2>&1; then
  alias f="fzf"
  alias fh="history | fzf"
fi

# ==========================================
# Utilities
# ==========================================

alias cls="clear"

alias path='printf "%s\n" "${path[@]}"'

# ==========================================
# Dotfiles
# ==========================================

alias dev="$DOTFILES/scripts/dev.sh"

# ==========================================
# Git
# ==========================================

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

alias gst="git stash"
alias gstp="git stash pop"

alias glog="git log --oneline --graph --decorate --all"

# ==========================================
# Python / uv
# ==========================================

alias py="python3"
alias pip="uv pip"

alias uvrun="uv run"
alias uvsync="uv sync"

alias venv='[[ -f .venv/bin/activate ]] && source .venv/bin/activate'

alias pytest="uv run pytest"

alias lint="ruff check ."
alias format="ruff format ."

# ==========================================
# Docker
# ==========================================

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

# ==========================================
# FastAPI
# ==========================================

alias serve="uvicorn app.main:app --reload"

# ==========================================
# AI (Enable after installation)
# ==========================================

# alias claude="claude"
# alias codex="codex"
# alias gemini="gemini"
# alias ollama="ollama"
# alias ag="antigravity"

# ==========================================
# GitHub CLI (Enable after installation)
# ==========================================

# alias ghrepo="gh repo view --web"
