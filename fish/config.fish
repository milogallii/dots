export SNIPPETS_PATH="$HOME/.config/helix/snippets.toml"
export EDITOR="helix"
set -gx PATH $HOME/.cargo/bin $PATH
set -U fish_greeting
set -gx DOTNET_ROOT /usr/share/dotnet
set -gx PATH $PATH $DOTNET_ROOT $DOTNET_ROOT/tools
set -gx OMNISHARP_USE_MODERN_NET true

if status is-interactive
end

function compile_typst
    typst compile $argv[1] out.pdf
end

function pss
    if test (count $argv) -lt 1
        echo "usage: pss DELIM [PATH...]"
        return 1
    end

    set delim (string escape --style=regex $argv[1])

    if test (count $argv) -gt 1
        set paths $argv[2..-1]
    else
        set paths .
    end

    set pattern "(?s):$delim\K.*?(?=$delim:)"

    # collect .pesto files in current directory
    set pesto_files (string match -g "*.pesto" *)

    rg --color=never -nH -UoP -g '!*.pesto' $pattern $paths $pesto_files
end

alias ls='eza --icons always'
alias cd='z'
alias l='eza -hlai --icons always'
alias ll='eza -T --level 2'
alias tyc='compile_typst'
abbr -a r spf
abbr -a rmf 'rm -rf'
abbr -a ta 'tmux a'
abbr -a k helix
abbr -a gps 'git add . && git commit -m "autopush" && git push'
abbr -a gp 'git pull --rebase'
abbr -a vpn_add 'nmcli con import type wireguard file'
abbr -a p pulsemixer
abbr -a pdf sioyek

zoxide init fish | source
