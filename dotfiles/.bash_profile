#
# ~/.bash_profile
#
export BLFM=$HOME/.config/BLFM
export BROWSER=chromium
export EDITOR=vim
export VISUAL=vim
export NNN_COLORS='6123'
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=$HOME/.cache/.lesshst
export FZF_DEFAULT_COMMAND="fd --type file --hidden --follow -E ".cache" -E ".local" -E ".git" -E "pvm" -E "chromium" -E "plugged" -E ".fzf""
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export HISTFILE=$HOME/.cache/.bash_history

PATH="$PATH:$BLFM/scripts:$HOME/go/bin"
wkon home
[[ -f ~/.bashrc ]] && . ~/.bashrc
[ -f /tmp/.dunsttoggle ] && rm /tmp/.dunsttoggle

# auto startx in tty1
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
