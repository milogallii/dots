export SNIPPETS_PATH="$HOME/.config/helix/snippets.toml"
export EDITOR="helix"
set -gx PATH $HOME/.cargo/bin $PATH
set -U fish_greeting
set -g fish_autosuggestion_enabled 1
set -gx DOTNET_ROOT /usr/share/dotnet
set -gx PATH $PATH $DOTNET_ROOT $DOTNET_ROOT/tools
set -gx OMNISHARP_USE_MODERN_NET true

if status is-interactive
end

function compile_typst
    typst compile $argv[1] out.pdf
end

alias ls='eza --icons always'
alias cd='z'
alias l='eza -hlai --icons always'
alias ll='eza -T --level 2'
alias r='spf'
alias tyc='compile_typst'
abbr -a rmf 'rm -rf'
abbr -a ta 'tmux a'
abbr -a k helix
abbr -a gps 'git add . && git commit -m "autopush" && git push'
abbr -a gp 'git pull --rebase'
abbr -a vpn_add 'nmcli con import type wireguard file'
abbr -a p pulsemixer
abbr -a pdf sioyek

zoxide init fish | source
