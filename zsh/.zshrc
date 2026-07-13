# ==========================================
# Oh My Zsh
# ==========================================

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# ==========================================
# Environment
# ==========================================

source "$HOME/dotfiles/zsh/exports.zsh"

# ==========================================
# Oh My Zsh
# ==========================================

[[ -f "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"

# ==========================================
# Starship Prompt
# ==========================================

export STARSHIP_CONFIG="$HOME/dotfiles/config/starship/starship.toml"
eval "$(starship init zsh)"

# ==========================================
# Modular Configuration
# ==========================================

for file in \
    "$HOME/dotfiles/zsh/plugins.zsh" \
    "$HOME/dotfiles/zsh/aliases.zsh" \
    "$HOME/dotfiles/zsh/functions.zsh"
do
    [[ -f "$file" ]] && source "$file"
done
