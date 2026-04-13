export PATH="$HOME/.local/share/pnpm:$PATH"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

zstyle ':completion:*:*:docker:*' ignored-patterns '*'

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm use 20 >/dev/null 2>&1

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

setopt AUTO_CD
unsetopt CORRECT
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
alias dev="~/dotfiles/scripts/dev.sh"
alias proj="cd ~/dev"

alias nvim="vim"

alias f="fzf"
alias fh="history | fzf"

mkcd() { mkdir -p "$1" && cd "$1"; }
. "$HOME/.local/bin/env"
