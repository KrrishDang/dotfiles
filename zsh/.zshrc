# ================================
# ENVIRONMENT
# ================================
export PATH="$HOME/.local/share/pnpm:$PATH"

# ================================
# OH MY ZSH
# ================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Fix docker completion warning (before OMZ loads)
zstyle ':completion:*:*:docker:*' ignored-patterns '*'

source $ZSH/oh-my-zsh.sh

# ================================
# STARSHIP
# ================================
eval "$(starship init zsh)"

# ================================
# NVM
# ================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ================================
# HISTORY
# ================================
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# ================================
# NAVIGATION & UX
# ================================
setopt AUTO_CD
setopt CORRECT
setopt INTERACTIVE_COMMENTS

# Better cd behavior
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# ================================
# FZF
# ================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ================================
# ALIASES
# ================================

# File navigation
alias ls="eza --icons"
alias ll="eza -la --icons"
alias la="eza -a --icons"
alias lt="eza --tree --level=2 --icons"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Git
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --all"
alias gco="git checkout"
alias gcb="git checkout -b"

# System
alias cls="clear"
alias reload="source ~/.zshrc"
alias zshconfig="nano ~/.zshrc"

# ================================
# FUNCTIONS
# ================================

mkcd() {
  mkdir -p "$1" && cd "$1"
}

ff() {
  find . -type f -iname "*$1*"
}

extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.gz) tar -xzf "$1" ;;
      *.tar.bz2) tar -xjf "$1" ;;
      *.zip) unzip "$1" ;;
      *.rar) unrar x "$1" ;;
      *) echo "Cannot extract '$1'" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}