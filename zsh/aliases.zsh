alias ls="eza --icons"
alias ll="eza -la --icons"
alias la="eza -a --icons"
alias lt="eza --tree --level=2 --icons"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --all"
alias gco="git checkout"
alias gcb="git checkout -b"

alias cls="clear"
alias reload="source ~/.zshrc"

alias dev="$HOME/dotfiles/scripts/dev.sh"
alias proj="cd ~/dev"

alias f="fzf"
alias fh="history | fzf"

alias cat="bat"
alias find="fd"

alias py="python3"
alias pip="uv pip"
alias venv="source .venv/bin/activate"

alias dc="docker compose"
alias dps="docker ps"
alias di="docker images"

alias serve="uvicorn app.main:app --reload"

