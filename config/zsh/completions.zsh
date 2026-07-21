# ==========================================
# Completion System
# ==========================================

autoload -Uz compinit

# Cache completion metadata for faster startup
compinit -d "$HOME/.zcompdump"

# ==========================================
# Completion Behaviour
# ==========================================

# Menu selection
zstyle ':completion:*' menu select

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Colored completion (matches LS_COLORS)
if [[ -n "$LS_COLORS" ]]; then
  zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

# Group completion results
zstyle ':completion:*' group-name ''

# Show completion descriptions
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'

# Hide Docker image completion (can be slow/noisy)
zstyle ':completion:*:*:docker:*' ignored-patterns '*'
