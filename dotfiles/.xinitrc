#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/.Xresources ] && xrdb -merge ~/.config/.Xresources

exec dwm > ~/.cache/.dwm.log 2> ~/.cache/.dwm.error.log
