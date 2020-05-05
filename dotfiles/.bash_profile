#
# ~/.bash_profile
#

PATH="$PATH:$HOME/.config/BLFM/scripts"
export BROWSER=chromium
export EDITOR=vim
wkon home
[[ -f ~/.bashrc ]] && . ~/.bashrc

# auto startx
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
