if status is-interactive
    # Commands to run in interactive sessions can go here
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
