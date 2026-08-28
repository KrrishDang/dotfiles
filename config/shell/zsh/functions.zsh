# ==========================================================
# Filesystem
# ==========================================================

# Create a directory and enter it
mkcd() {
    [[ $# -eq 1 ]] || {
        echo "Usage: mkcd <directory>"
        return 1
    }

    mkdir -p -- "$1" && cd -- "$1"
}

# Extract common archive formats
extract() {
    [[ $# -eq 1 ]] || {
        echo "Usage: extract <archive>"
        return 1
    }

    [[ -f "$1" ]] || {
        echo "File not found: $1"
        return 1
    }

    case "$1" in
        *.tar.bz2|*.tbz2) tar xjf "$1" ;;
        *.tar.gz|*.tgz)   tar xzf "$1" ;;
        *.tar.xz|*.txz)   tar xJf "$1" ;;
        *.tar.zst)        tar --zstd -xf "$1" ;;
        *.tar)            tar xf "$1" ;;
        *.bz2)            bunzip2 "$1" ;;
        *.gz)             gunzip "$1" ;;
        *.xz)             unxz "$1" ;;
        *.zip)            unzip "$1" ;;
        *.rar)            unrar x "$1" ;;
        *.7z)             7z x "$1" ;;
        *)
            echo "Unsupported archive format."
            return 1
            ;;
    esac
}

# ==========================================================
# Navigation
# ==========================================================

croot() {
    cd "$WORKSPACE" || return
}

cgit() {
    git rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
        echo "Not inside a Git repository."
        return 1
    }

    cd "$(git rev-parse --show-toplevel)" || return
}

# ==========================================================
# Python / uv
# ==========================================================

mkvenv() {
    command -v uv >/dev/null 2>&1 || {
        echo "uv is not installed."
        return 1
    }

    uv venv || return

    [[ -f .venv/bin/activate ]] && source .venv/bin/activate
}

pyclean() {
    find . \
        -type d \( \
            -name "__pycache__" \
            -o -name ".pytest_cache" \
            -o -name ".ruff_cache" \
            -o -name ".mypy_cache" \
            -o -name ".hypothesis" \
            -o -name ".tox" \
        \) \
        -prune \
        -exec rm -rf {} +

    find . \
        -type f \( \
            -name "*.pyc" \
            -o -name "*.pyo" \
        \) \
        -delete

    echo "✔ Python cache cleaned."
}

# ==========================================================
# Git
# ==========================================================

groot() {
    git rev-parse --show-toplevel 2>/dev/null || {
        echo "Not inside a Git repository."
        return 1
    }
}

# ==========================================================
# Development
# ==========================================================

devinfo() {
    echo "========== Development Environment =========="

    local tools=(
        "zsh:zsh --version"
        "git:git --version"
        "nvim:nvim --version | head -1"
        "python:python3 --version"
        "uv:uv --version"
        "node:node --version"
        "pnpm:pnpm --version"
        "docker:docker --version"
        "tmux:tmux -V"
    )

    local entry
    local name
    local cmd

    for entry in "${tools[@]}"; do
        name="${entry%%:*}"
        cmd="${entry#*:}"

        if command -v "${cmd%% *}" >/dev/null 2>&1; then
            printf "%-10s %s\n" "$name:" "$(eval "$cmd" 2>/dev/null)"
        else
            printf "%-10s %s\n" "$name:" "Not installed"
        fi
    done
}

# ==========================================================
# Utilities
# ==========================================================

ports() {
    if command -v ss >/dev/null 2>&1; then
        ss -tulpn
    elif command -v netstat >/dev/null 2>&1; then
        netstat -tulpn
    else
        echo "Neither ss nor netstat is available."
    fi
}

weather() {
    command -v curl >/dev/null 2>&1 || {
        echo "curl is not installed."
        return 1
    }

    curl "https://wttr.in/${1:-}"
}

# ==========================================================
# Dotfiles
# ==========================================================

dotreload() {
    exec zsh
}
