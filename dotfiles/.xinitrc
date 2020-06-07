#!/bin/sh

#export LC_ALL="zh_HK.UTF-8"
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/.Xresources ] && xrdb -merge ~/.config/.Xresources

exec dwm
