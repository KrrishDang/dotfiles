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

if command -v eza >/dev/null 2>&1; then
    alias ls="eza --icons"
    alias ll="eza -la --icons"
    alias la="eza -a --icons"
    alias lt="eza --tree --level=2 --icons"
fi

if command -v bat >/dev/null 2>&1; then
    alias cat="bat"
fi

if command -v fd >/dev/null 2>&1; then
    alias find="fd"
fi

if command -v fzf >/dev/null 2>&1; then
    alias f="fzf"
    alias fh="history | fzf"
fi

# ==========================================
# Utilities
# ==========================================

alias cls="clear"
alias reload='source "$HOME/.zshrc"'

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

# ==========================================
# AI (Enable after installation)
# ==========================================

# alias codex="codex"
# alias ag="antigravity"
# alias ollama="ollama"

# ==========================================
# GitHub (Enable after installation)
# ==========================================

# alias ghrepo="gh repo view --web"
