# env.nu
#
# Installed by:
# version = "0.107.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.
$env.config.buffer_editor = "/opt/homebrew/bin/nvim"

# Set vim mode
$env.config.edit_mode = "vi"

# path
$env.PATH = ($env.PATH | append "/opt/homebrew/bin")
$env.PATH = ($env.PATH | append "/opt/homebrew/sbin")
$env.PATH = ($env.PATH | append "/usr/local/bin")
$env.PATH = ($env.PATH | append "/usr/local/sbin")
$env.PATH = ($env.PATH | append "~/bin")
$env.PATH = ($env.PATH | append "~/.cargo/bin")
$env.PATH = ($env.PATH | append "/usr/local/bin")
$env.PATH = ($env.PATH | append "/opt/local/bin")
$env.PATH = ($env.PATH | append "/opt/local/sbin")
$env.PATH = ($env.PATH | append "~/go/bin")
$env.PATH = ($env.PATH | append "/usr/local/go/bin")
$env.PATH = ($env.PATH | append "~/.nvm/versions/node/v22.14.0/bin")

$env.CLANG_PATH = "/usr/bin/clang"

# carapace
$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
mkdir $"($nu.cache-dir)"
carapace _carapace nushell | save --force $"($nu.cache-dir)/carapace.nu"

$env._ZO_ECHO = "1" # optional
zoxide init nushell | save -f ~/.zoxide.nu

$env.BAT_THEME = "ansi"
