export GH_TOKEN=""
export ZSH="$HOME/.oh-my-zsh"
export TERM="tmux-256color"
export _JAVA_AWT_WM_NONREPARENTING=1
export GDK_SCALE=1.0
. "$HOME/.cargo/env"

ZSH_THEME="lambda"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"

alias l="eza -hlai --icons always"
alias ll="eza -T --level 2 --icons always"
alias k="helix"
alias rmf="rm -rf"
alias open="xdg-open"
alias cd="z"
alias gps="git add . && git commit -m \"autopush\" && git push"
alias gpr="git pull --rebase"
alias ff="fastfetch --logo /home/mgalli/.config/fastfetch/logo.txt"
alias py="python3"
alias pf="pfetch"
alias tk="tmux kill-server"
alias ta="tmux a"
alias tmux="tmux -2"
alias t="tmux"
alias windowtype="xprop WM_CLASS"
alias 1_monitor="xrandr --output eDP-1 --off"
alias 2_monitors="xrandr --output HDMI-1 --auto --mode 3440x1440 --scale 1.25x1.25 --pos 0x0 --output eDP-1 --auto --pos 740x1800"
alias csv="csvlens"
