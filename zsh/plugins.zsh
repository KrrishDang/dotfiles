# ==========================================
# Oh My Zsh Plugins
# ==========================================

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# ==========================================
# Completion
# ==========================================

zstyle ':completion:*:*:docker:*' ignored-patterns '*'

# ==========================================
# fzf
# ==========================================

[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# ==========================================
# History
# ==========================================

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# ==========================================
# Shell Behaviour
# ==========================================

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS

unsetopt CORRECT
