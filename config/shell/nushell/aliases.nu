# =============================================================================
# Nushell Aliases
# =============================================================================

# -----------------------------------------------------------------------------
# Navigation
# -----------------------------------------------------------------------------

alias .. = cd ..
alias ... = cd ../..
alias .... = cd ../../..

alias proj = cd $env.WORKSPACE
alias dots = cd $env.DOTFILES

# -----------------------------------------------------------------------------
# Editors
# -----------------------------------------------------------------------------

alias n = nvim
alias v = nvim
alias nv = nvim
alias vi = nvim
alias vim = nvim

# -----------------------------------------------------------------------------
# File Management
# -----------------------------------------------------------------------------

alias ls = eza --icons
alias ll = eza -la --icons
alias la = eza -a --icons
alias lt = eza --tree --level=2 --icons
alias tree = eza --tree --icons

alias cat = bat

alias f = fzf

# -----------------------------------------------------------------------------
# Utilities
# -----------------------------------------------------------------------------

alias cls = clear
alias c = clear

# -----------------------------------------------------------------------------
# Dotfiles
# -----------------------------------------------------------------------------

alias dev = $"($env.DOTFILES)/scripts/dev.sh"

# -----------------------------------------------------------------------------
# Git
# -----------------------------------------------------------------------------

alias g = git

alias gs = git status

alias ga = git add
alias gaa = git add .

alias gc = git commit
alias gcm = git commit -m

alias gp = git push
alias gl = git pull

alias gd = git diff
alias gds = git diff --staged

alias gb = git branch

alias gco = git checkout
alias gsw = git switch

alias grs = git restore

alias gst = git stash
alias gstp = git stash pop

alias gcl = git clone

alias glog = git log --oneline --graph --decorate --all

# -----------------------------------------------------------------------------
# Python / uv
# -----------------------------------------------------------------------------

alias py = python3

alias pip = uv pip
alias uvrun = uv run
alias uvsync = uv sync

alias pytest = uv run pytest

alias lint = ruff check .
alias format = ruff format .

# -----------------------------------------------------------------------------
# Docker
# -----------------------------------------------------------------------------

alias d = docker
alias dc = docker compose

alias dps = docker ps
alias di = docker images

alias drm = docker rm
alias drmi = docker rmi

alias dcu = docker compose up
alias dcud = docker compose up -d
alias dcd = docker compose down
alias dcl = docker compose logs -f
alias dcps = docker compose ps

alias dprune = docker system prune
alias dprunea = docker system prune -a

# -----------------------------------------------------------------------------
# FastAPI
# -----------------------------------------------------------------------------

alias serve = uvicorn app.main:app --reload

# -----------------------------------------------------------------------------
# AI
# -----------------------------------------------------------------------------

alias claude = claude
alias codex = codex
alias gemini = gemini
alias ollama = ollama
alias opencode = opencode

# -----------------------------------------------------------------------------
# Developer Tools
# -----------------------------------------------------------------------------

alias lg = lazygit
alias y = yazi
alias b = btop

# -----------------------------------------------------------------------------
# GitHub CLI
# -----------------------------------------------------------------------------

alias ghrepo = gh repo view --web
