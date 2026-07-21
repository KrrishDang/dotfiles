# ==========================================
# Dotfiles
# ==========================================

export DOTFILES="$HOME/dotfiles"

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

[[ -f "$DOTFILES/config/zsh/exports.zsh" ]] && source "$DOTFILES/config/zsh/exports.zsh"

# ==========================================
# Oh My Zsh
# ==========================================

[[ -f "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"

# ==========================================
# Starship
# ==========================================

export STARSHIP_CONFIG="$DOTFILES/config/starship/starship.toml"

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# ==========================================
# Modular Configuration
# ==========================================

for file in \
  "$DOTFILES/config/zsh/plugins.zsh" \
  "$DOTFILES/config/zsh/history.zsh" \
  "$DOTFILES/config/zsh/shell.zsh" \
  "$DOTFILES/config/zsh/completions.zsh" \
  "$DOTFILES/config/zsh/aliases.zsh" \
  "$DOTFILES/config/zsh/functions.zsh"
do
  [[ -f "$file" ]] && source "$file"
done
