# =============================================================================
# Nushell Environment Configuration
# =============================================================================

# -----------------------------------------------------------------------------
# Standard Library
# -----------------------------------------------------------------------------

use std "path add"

# -----------------------------------------------------------------------------
# Environment Variables
# -----------------------------------------------------------------------------

$env.EDITOR = "nvim"
$env.VISUAL = "nvim"

$env.PAGER = "less"
$env.MANPAGER = "less"
$env.LESS = "-FRX"

# -----------------------------------------------------------------------------
# Workspace
# -----------------------------------------------------------------------------

$env.WORKSPACE = ($env.HOME | path join "Developer")

# -----------------------------------------------------------------------------
# Dotfiles
# -----------------------------------------------------------------------------

$env.DOTFILES = ($env.HOME | path join "dotfiles")

# -----------------------------------------------------------------------------
# XDG Base Directories
# -----------------------------------------------------------------------------

$env.XDG_CONFIG_HOME = ($env.HOME | path join ".config")
$env.XDG_CACHE_HOME  = ($env.HOME | path join ".cache")
$env.XDG_DATA_HOME   = ($env.HOME | path join ".local" "share")
$env.XDG_STATE_HOME  = ($env.HOME | path join ".local" "state")

# -----------------------------------------------------------------------------
# Nushell Environment Conversions
# -----------------------------------------------------------------------------

$env.ENV_CONVERSIONS = {
    PATH: {
        from_string: { |s|
            $s
            | split row (char esep)
            | path expand --no-symlink
        }

        to_string: { |v|
            $v
            | path expand --no-symlink
            | str join (char esep)
        }
    }

    Path: {
        from_string: { |s|
            $s
            | split row (char esep)
            | path expand --no-symlink
        }

        to_string: { |v|
            $v
            | path expand --no-symlink
            | str join (char esep)
        }
    }
}

# -----------------------------------------------------------------------------
# Nushell Library Directories
# -----------------------------------------------------------------------------

$env.NU_LIB_DIRS = [
    ($nu.default-config-dir | path join "scripts")
    ($nu.data-dir | path join "completions")
]

# -----------------------------------------------------------------------------
# Nushell Plugin Directories
# -----------------------------------------------------------------------------

$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join "plugins")
]

# -----------------------------------------------------------------------------
# Local Binaries
# -----------------------------------------------------------------------------

path add ($env.HOME | path join ".local" "bin")

# -----------------------------------------------------------------------------
# Homebrew
# -----------------------------------------------------------------------------

if ("/home/linuxbrew/.linuxbrew/bin" | path exists) {
    path add "/home/linuxbrew/.linuxbrew/bin"
    path add "/home/linuxbrew/.linuxbrew/sbin"
}

if ("/opt/homebrew/bin" | path exists) {
    path add "/opt/homebrew/bin"
    path add "/opt/homebrew/sbin"
}

if ("/usr/local/bin" | path exists) {
    path add "/usr/local/bin"
    path add "/usr/local/sbin"
}

# -----------------------------------------------------------------------------
# NVM
# -----------------------------------------------------------------------------

$env.NVM_DIR = ($env.HOME | path join ".nvm")

# -----------------------------------------------------------------------------
# Tool Configuration
# -----------------------------------------------------------------------------

$env.STARSHIP_CONFIG = (
    $env.DOTFILES
    | path join "config" "starship" "starship.toml"
)

$env.DIRENV_LOG_FORMAT = ""
