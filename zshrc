autoload -U colors && colors

PS1='%B%F{015}%*%f %F{035}%M%f %1~%b '

alias ls='ls --color=auto'
alias ll='ls -alh'
alias la='ls -A'
alias wttr='curl wttr.in'
alias suspend='systemctl suspend'
alias scron='xrandr --output eDP-1 --auto --output HDMI-1 --off'
alias scroff='xrandr --output eDP-1 --off --output HDMI-1 --auto'
alias scrdual='xrandr --output eDP-1 --auto --output HDMI-1 --auto'
alias scrmleft='xrandr --output HDMI-1 --auto --left-of eDP-1'
alias scrright='xrandr --output HDMI-1 --auto --right-of eDP-1'
alias touchpadoff='xinput -set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0'
alias touchpadon='xinput -set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1'
alias swaprld='sudo swapoff -a && sudo swapon -a'
alias space='du -smh * | sort -nr'
alias tmx='tmux new -s ronery -n home'
alias nlc='links https://logs.0-chan.ru/boardplay/today'
alias cfree='echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias tsm='transmission-remote'
alias vifm='.vifm/vifmrun'
alias iptv-player='mpv --script-opts=iptv=1 http://iptv.donapex.net/iptv.m3u &>/dev/null &'
alias lscr='i3lock -i /home/asciisoup/.config/i3/wallpapers.png'
alias dfh='df -x tmpfs -h'

export ZSH="$HOME/.oh-my-zsh"

plugins=(colored-man-pages)

source $ZSH/oh-my-zsh.sh
