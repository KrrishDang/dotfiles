# ==========================================================
# Completion System
# ==========================================================

autoload -Uz compinit

mkdir -p \
    "$XDG_CACHE_HOME/zsh" \
    "$XDG_CACHE_HOME/zsh/zcompcache"

compinit \
    -i \
    -d "$XDG_CACHE_HOME/zsh/.zcompdump"

# ==========================================================
# Completion Cache
# ==========================================================

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"

# ==========================================================
# Completion Behaviour
# ==========================================================

# Enable completion menu
zstyle ':completion:*' menu select

# Case-insensitive + partial matching
zstyle ':completion:*' matcher-list \
    'm:{a-z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' \
    'l:|=* r:|=*'

# Group results
zstyle ':completion:*' group-name ''

# Show descriptions
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'

# Show completion messages
zstyle ':completion:*:messages' format '%F{cyan}%d%f'

# Show warnings
zstyle ':completion:*:warnings' format '%F{red}No matches found.%f'

# Show process list nicely
zstyle ':completion:*:*:*:*:processes' command \
    'ps -u $USER -o pid,%cpu,%mem,command'

# Verbose output
zstyle ':completion:*' verbose yes

# Complete directories first
zstyle ':completion:*' list-dirs-first true

# Use colors from LS_COLORS
if [[ -n "$LS_COLORS" ]]; then
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

# ==========================================================
# Tool-specific
# ==========================================================

# Ignore Docker image completion
zstyle ':completion:*:*:docker:*' ignored-patterns '*'
