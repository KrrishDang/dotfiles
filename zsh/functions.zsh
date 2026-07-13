# ==========================================
# Create directory and enter it
# ==========================================

mkcd() {
    if [[ -z "$1" ]]; then
        echo "Usage: mkcd <directory>"
        return 1
    fi

    mkdir -p "$1" && cd "$1"
}

# ==========================================
# Reload shell
# ==========================================

reload-shell() {
    exec zsh
}

# ==========================================
# Show PATH
# ==========================================

path() {
    echo "$PATH" | tr ':' '\n'
}

# ==========================================
# Development
# ==========================================

croot() {
    cd "$HOME/dev"
}

cgit() {
    git rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
        echo "Not inside a Git repository."
        return 1
    }

    cd "$(git rev-parse --show-toplevel)"
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
}

devinfo() {
    if command -v python >/dev/null 2>&1; then
        echo "Python : $(python --version 2>/dev/null)"
    elif command -v python3 >/dev/null 2>&1; then
        echo "Python : $(python3 --version 2>/dev/null)"
    else
        echo "Python : Not installed"
    fi

    echo "Node   : $(node --version 2>/dev/null)"
    echo "pnpm   : $(pnpm --version 2>/dev/null)"
    echo "uv     : $(uv --version 2>/dev/null)"
    echo "Docker : $(docker --version 2>/dev/null)"
    echo "Git    : $(git --version 2>/dev/null)"
}
