# ==========================================================
# History File
# ==========================================================

HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"

mkdir -p "$(dirname "$HISTFILE")"

HISTSIZE=100000
SAVEHIST=100000

# ==========================================================
# History Behaviour
# ==========================================================

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# ==========================================================
# Duplicates
# ==========================================================

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# ==========================================================
# Cleanup
# ==========================================================

setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# ==========================================================
# Safety
# ==========================================================

setopt HIST_VERIFY

# ==========================================================
# Performance
# ==========================================================

setopt HIST_FCNTL_LOCK
