# ==========================================
# Navigation
# ==========================================

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias proj="cd ~/dev"

# ==========================================
# File Management
# ==========================================

alias ls="eza --icons"
alias ll="eza -la --icons"
alias la="eza -a --icons"
alias lt="eza --tree --level=2 --icons"

alias cat="bat"
alias find="fd"

# ==========================================
# Utilities
# ==========================================

alias cls="clear"
alias reload="source ~/.zshrc"

alias f="fzf"
alias fh="history | fzf"

# ==========================================
# Dotfiles
# ==========================================

alias dev="$HOME/dotfiles/scripts/dev.sh"

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

# ==========================================
# FastAPI
# ==========================================

alias serve="uvicorn app.main:app --reload"
