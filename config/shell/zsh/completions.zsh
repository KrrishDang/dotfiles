# ==========================================================
# Completion System
# ==========================================================

autoload -Uz compinit

mkdir -p \
    "$XDG_CACHE_HOME/zsh" \
    "$XDG_CACHE_HOME/zsh/zcompcache"

compinit -i -d "$XDG_CACHE_HOME/zsh/.zcompdump"

# ==========================================================
# Completion Cache
# ==========================================================

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"

# ==========================================================
# Completion Behaviour
# ==========================================================

# Menu selection
zstyle ':completion:*' menu select

# Case-insensitive + partial-word completion
zstyle ':completion:*' matcher-list \
    'm:{a-z}={A-Za-z}' \
    'r:|[._-]=* r:|=*'

# Colored completion
[[ -n "$LS_COLORS" ]] && \
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Group completion results
zstyle ':completion:*' group-name ''

# Show descriptions
zstyle ':completion:*:descriptions' format '%B%F{yellow}-- %d --%f'

# Verbose completion
zstyle ':completion:*' verbose yes

# Warning messages
zstyle ':completion:*:warnings' format '%F{red}No matches found.%f'

# Ignore Docker image completion
zstyle ':completion:*:*:docker:*' ignored-patterns '*'
