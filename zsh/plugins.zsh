plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

zstyle ':completion:*:*:docker:*' ignored-patterns '*'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh"

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS

unsetopt CORRECT