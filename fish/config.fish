export SNIPPETS_PATH="$HOME/.config/helix/snippets.toml"
export EDITOR="helix"
set -gx PATH $HOME/.cargo/bin $PATH
set -U fish_greeting
set -g fish_autosuggestion_enabled 0
set -gx DOTNET_ROOT /usr/share/dotnet
set -gx PATH $PATH $DOTNET_ROOT $DOTNET_ROOT/tools
set -gx OMNISHARP_USE_MODERN_NET true

if status is-interactive
end

function compile_typst
    typst compile $argv[1] out.pdf
end

alias cd='z'
alias r='spf'
alias tyc='compile_typst'
abbr -a rmf 'rm -rf'
abbr -a l 'eza -hlai'
abbr -a ta 'tmux a'
abbr -a ll 'eza -T --level 2'
abbr -a k helix
abbr -a gps 'git add . && git commit -m "autopush" && git push'
abbr -a gp 'git pull --rebase'
abbr -a vpn_add 'nmcli con import type wireguard file'
abbr -a p pulsemixer
abbr -a pdf sioyek

zoxide init fish | source
