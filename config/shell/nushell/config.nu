# =============================================================================
# Nushell Configuration
# =============================================================================

# -----------------------------------------------------------------------------
# General
# -----------------------------------------------------------------------------

$env.config.show_banner = false
$env.config.buffer_editor = $env.EDITOR

# -----------------------------------------------------------------------------
# History
# -----------------------------------------------------------------------------

$env.config.history = {
    file_format: sqlite
    max_size: 100_000
    sync_on_enter: true
    isolation: true
}

# -----------------------------------------------------------------------------
# Editing
# -----------------------------------------------------------------------------

$env.config.edit_mode = "vi"

$env.config.cursor_shape = {
    emacs: line
    vi_insert: line
    vi_normal: block
}

# -----------------------------------------------------------------------------
# Table
# -----------------------------------------------------------------------------

$env.config.table = {
    mode: rounded
    index_mode: always
    show_empty: true
    padding: { left: 1 right: 1 }
    trim: {
        methodology: wrapping
        wrapping_try_keep_words: true
    }
}
# -----------------------------------------------------------------------------
# Completion
# -----------------------------------------------------------------------------

$env.config.completions = {
    case_sensitive: false
    quick: true
    partial: true
    algorithm: "prefix"

    external: {
        enable: true
        max_results: 100
    }
}

# -----------------------------------------------------------------------------
# Shell Integration
# -----------------------------------------------------------------------------

$env.config.shell_integration = {
    osc2: true
    osc7: true
    osc8: true
    osc9_9: false
    osc133: true
    osc633: true
    reset_application_mode: true
}

# -----------------------------------------------------------------------------
# Hooks
# -----------------------------------------------------------------------------

$env.config.hooks = {
    pre_prompt: []
    pre_execution: []

    env_change: {}

    display_output: { ||
        if (term size).columns >= 100 {
            table -e
        } else {
            table
        }
    }

    command_not_found: null
}

# -----------------------------------------------------------------------------
# Cache Directory
# -----------------------------------------------------------------------------

let cache_dir = ($env.XDG_CACHE_HOME | path join "nushell")
mkdir $cache_dir

# -----------------------------------------------------------------------------
# Starship
# -----------------------------------------------------------------------------

let starship_init = ($cache_dir | path join "starship.nu")

if not ($starship_init | path exists) {
    starship init nu | save -f $starship_init
}

source $starship_init

# -----------------------------------------------------------------------------
# Zoxide
# -----------------------------------------------------------------------------

let zoxide_init = ($cache_dir | path join "zoxide.nu")

if not ($zoxide_init | path exists) {
    zoxide init nushell | save -f $zoxide_init
}

source $zoxide_init

# -----------------------------------------------------------------------------
# Atuin
# -----------------------------------------------------------------------------

let atuin_init = ($cache_dir | path join "atuin.nu")

if not ($atuin_init | path exists) {
    atuin init nu | save -f $atuin_init
}

source $atuin_init

# -----------------------------------------------------------------------------
# Direnv
# -----------------------------------------------------------------------------

let direnv_init = ($cache_dir | path join "direnv.nu")

if not ($direnv_init | path exists) {
    direnv hook nu | save -f $direnv_init
}

source $direnv_init

# -----------------------------------------------------------------------------
# User Configuration
# -----------------------------------------------------------------------------

source ($env.DOTFILES | path join "config" "nushell" "aliases.nu")
source ($env.DOTFILES | path join "config" "nushell" "functions.nu")
