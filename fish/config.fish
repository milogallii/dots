export SNIPPETS_PATH="$HOME/.config/helix/snippets.toml"
set -gx PATH $HOME/.cargo/bin $PATH
set -U fish_greeting

if status is-interactive
end

alias cd='z'
alias rmf='rm -rf'
alias l='eza -hlai'
alias ta='tmux a'
alias ll='eza -T --level 2'
alias k='helix'
alias vpn_add='nmcli con import type wireguard file'
alias gps='git add . && git commit -m "autopush" && git push'
alias gp='git pull --rebase'

zoxide init fish | source
