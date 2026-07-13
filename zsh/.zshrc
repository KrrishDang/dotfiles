export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(git)

source "$ZSH/oh-my-zsh.sh"

export STARSHIP_CONFIG="$HOME/dotfiles/config/starship/starship.toml"
eval "$(starship init zsh)"

# Load modular configuration
source "$HOME/dotfiles/zsh/exports.zsh"
source "$HOME/dotfiles/zsh/plugins.zsh"
source "$HOME/dotfiles/zsh/functions.zsh"
source "$HOME/dotfiles/zsh/aliases.zsh"