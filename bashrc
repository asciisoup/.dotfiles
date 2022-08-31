#
# ~/.bashrc
#

# Enable powerline in terminale emulator
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to 256 colors terminal
[ -z "$TMUX" ] && export TERM=xterm-256color

# Aliases
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

# PS1='\t [\033[01;32m\]\u@\h\[\033[00m\] \W] \$ '
# PS1="\[$(tput bold)\]\t\[$(tput sgr0)\] [\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;35m\]\u\[$(tput sgr0)\] \[$(tput bold)\]\W\[$(tput sgr0)\]] \[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
PS1="\[$(tput bold)\]\t\[$(tput sgr0)\] [\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;35m\]\H\[$(tput sgr0)\] \[$(tput bold)\]\W\[$(tput sgr0)\]] \[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

[[ $DISPLAY ]] && shopt -s checkwinsize

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

