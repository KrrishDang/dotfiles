export PATH="$HOME/.local/share/pnpm:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm use --lts >/dev/null 2>&1

# Load secrets (not tracked by Git)
[ -f "$HOME/.config/secrets.env" ] && source "$HOME/.config/secrets.env"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"

. "$HOME/.local/bin/env"