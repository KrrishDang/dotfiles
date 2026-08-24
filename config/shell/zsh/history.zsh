# ==========================================================
# History
# ==========================================================

# Size
HISTSIZE=50000
SAVEHIST=50000
HISTFILE="$HOME/.zsh_history"

# ----------------------------------------------------------
# History Behavior
# ----------------------------------------------------------

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# ----------------------------------------------------------
# Duplicates
# ----------------------------------------------------------

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# ----------------------------------------------------------
# Cleanup
# ----------------------------------------------------------

setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# ----------------------------------------------------------
# Safety
# ----------------------------------------------------------

setopt HIST_VERIFY
