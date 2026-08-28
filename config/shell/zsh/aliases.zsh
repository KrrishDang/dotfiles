# ==========================================================
# Navigation
# ==========================================================

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias proj='cd "$WORKSPACE"'
alias dots='cd "$DOTFILES"'

# ==========================================================
# Shell
# ==========================================================

alias reload='exec zsh'
alias cls='clear'
alias path='printf "%s\n" "${path[@]}"'

# ==========================================================
# Editors
# ==========================================================

alias n='nvim'
alias nv='nvim'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

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

if command -v bat >/dev/null 2>&1; then
    alias c='bat'
fi

if command -v fzf >/dev/null 2>&1; then
    alias f='fzf'
    alias fh='history | fzf'
fi

if command -v fd >/dev/null 2>&1; then
    alias fdf='fd'
    alias fda='fd --hidden'
    alias fdc='fd --type file'
    alias fdd='fd --type directory'
fi

if command -v rg >/dev/null 2>&1; then
    alias rgf='rg --files'
    alias rgh='rg --hidden'
    alias rgi='rg -i'
    alias rgv='rg --vimgrep'
fi

# ==========================================================
# Git
# ==========================================================

if command -v git >/dev/null 2>&1; then
    alias g='git'

    alias gs='git status'

    alias ga='git add'
    alias gaa='git add .'

    alias gc='git commit'
    alias gcm='git commit -m'

    alias gp='git push'
    alias gl='git pull'

    alias gd='git diff'
    alias gds='git diff --staged'

    alias gb='git branch'

    alias gco='git checkout'
    alias gsw='git switch'

    alias gr='git restore'

    alias gst='git stash'
    alias gstp='git stash pop'

    alias gcl='git clone'

    alias glog='git log --graph --oneline --decorate --all'
fi

# ==========================================================
# Python / uv
# ==========================================================

if command -v python3 >/dev/null 2>&1; then
    alias py='python3'
fi

if command -v uv >/dev/null 2>&1; then
    alias pip='uv pip'

    alias uvinit='uv init'
    alias uvadd='uv add'
    alias uvremove='uv remove'
    alias uvsync='uv sync'
    alias uvrun='uv run'
    alias uvlock='uv lock'
    alias uvtree='uv tree'
    alias uvpython='uv python'

    alias pytest='uv run pytest'
fi

alias venv='[[ -f .venv/bin/activate ]] && source .venv/bin/activate'

if command -v ruff >/dev/null 2>&1; then
    alias lint='ruff check .'
    alias format='ruff format .'
fi

# ==========================================================
# Docker
# ==========================================================

if command -v docker >/dev/null 2>&1; then
    alias d='docker'
    alias dc='docker compose'

    alias dps='docker ps'
    alias di='docker images'

    alias drm='docker rm'
    alias drmi='docker rmi'

    alias dcu='docker compose up'
    alias dcud='docker compose up -d'
    alias dcd='docker compose down'
    alias dcl='docker compose logs -f'
    alias dcps='docker compose ps'

    alias dprune='docker system prune'
    alias dprunea='docker system prune -a'
fi

# ==========================================================
# FastAPI
# ==========================================================

if command -v uvicorn >/dev/null 2>&1; then
    alias serve='uvicorn app.main:app --reload'
fi

# ==========================================================
# AI Tools
# ==========================================================

command -v opencode >/dev/null 2>&1 && alias oc='opencode'
command -v codex >/dev/null 2>&1 && alias cx='codex'
command -v claude >/dev/null 2>&1 && alias cc='claude'
command -v antigravity-ide >/dev/null 2>&1 && alias antigravity='antigravity-ide'
command -v agy >/dev/null 2>&1 && alias ag='agy'

# ==========================================================
# Terminal Tools
# ==========================================================

command -v lazygit >/dev/null 2>&1 && alias lg='lazygit'
command -v yazi >/dev/null 2>&1 && alias y='yazi'
command -v btop >/dev/null 2>&1 && alias b='btop'
command -v fastfetch >/dev/null 2>&1 && alias ffd='fastfetch'

# ==========================================================
# Fastfetch Profiles
# ==========================================================

if command -v fastfetch >/dev/null 2>&1; then
    alias ffd='fastfetch'
    alias ffm='fastfetch --config ~/.config/fastfetch/minimal.jsonc'
    alias ffp='fastfetch --config ~/.config/fastfetch/presentation.jsonc'
fi

# ==========================================================
# Fun
# ==========================================================

command -v cmatrix >/dev/null 2>&1 && alias mat='cmatrix'
