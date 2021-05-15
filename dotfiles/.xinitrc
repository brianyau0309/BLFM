#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[ -f ~/.config/.Xresources ] && xrdb -merge ~/.config/.Xresources
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

while true; do
    dwm > ~/.cache/.dwm.log 2> ~/.cache/.dwm.error.log
done
