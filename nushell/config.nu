# config.nu
#
# Installed by:
# version = "0.107.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

# carapace
#source ~/.cache/carapace/init.nu

mkdir ($nu.data-dir | path join "vendor/autoload")

# starship prompt
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

alias vi = /opt/homebrew/bin/nvim
alias asr = /opt/homebrew/bin/atuin scripts run
alias ff = fzf --style full --preview 'bat --color always --style=numbers,changes,header {}' --bind 'focus:transform-header:file --brief {}'
source ~/.zoxide.nu
source ~/.local/share/atuin/init.nu
$env.config.show_banner = false

# Use Ctrl+j to accept suggestion and move to end of line
$env.config.keybindings ++= [
  {
    name: "accept suggestion"
    modifier: control
    keycode: Char_y
    mode: vi_insert
    event: { until: [
        { send: HistoryHintComplete }
        { edit: MoveToLineEnd }
      ]
    }
  }
]

# Remove Ctrl+Space mapping
$env.config.keybindings = ($env.config.keybindings | append {
  name: "null-ctrl-space"
  modifier: "control"
  keycode: "space"
  mode: [emacs, vi_insert]
  event: null
})
