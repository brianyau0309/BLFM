#
# ~/.bash_profile
#

export BLFM=$HOME/.config/BLFM
export BROWSER=chromium
export EDITOR=vim

PATH="$PATH:$BLFM/scripts"

wkon home

[[ -f ~/.bashrc ]] && . ~/.bashrc

# auto startx
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
