# ==========================================
# Create directory and enter it
# ==========================================

mkcd() {
  [[ $# -eq 1 ]] || {
    echo "Usage: mkcd <directory>"
    return 1
  }

  mkdir -p -- "$1" && cd -- "$1"
}

# ==========================================
# Reload Shell
# ==========================================

reload-shell() {
  exec zsh
}

# ==========================================
# Show PATH
# ==========================================

showpath() {
  printf "%s\n" "${path[@]}"
}

# ==========================================
# Development
# ==========================================

croot() {
  cd "$HOME/dev" || return
}

cgit() {
  git rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
    echo "Not inside a Git repository."
    return 1
  }

  cd "$(git rev-parse --show-toplevel)" || return
}

pyclean() {
  find . \
    -type d \( \
      -name "__pycache__" \
      -o -name ".pytest_cache" \
      -o -name ".ruff_cache" \
      -o -name ".mypy_cache" \
    \) \
    -exec rm -rf {} +

  find . \
    -type f \( \
      -name "*.pyc" \
      -o -name "*.pyo" \
    \) \
    -delete

  echo "✔ Python cache cleaned."
}

devinfo() {
  echo "========== Development Environment =========="

  local tools=(
    "python:python --version"
    "node:node --version"
    "pnpm:pnpm --version"
    "uv:uv --version"
    "docker:docker --version"
    "git:git --version"
  )

  local entry name cmd

  for entry in "${tools[@]}"; do
    name="${entry%%:*}"
    cmd="${entry#*:}"

    if command -v "${cmd%% *}" >/dev/null 2>&1; then
      printf "%-8s: %s\n" "$name" "$($cmd 2>&1)"
    else
      printf "%-8s: Not installed\n" "$name"
    fi
  done
}
