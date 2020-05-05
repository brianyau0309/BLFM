#!/bin/sh

export LC_ALL="zh_HK.UTF-8"
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

exec dwm

[[-f $XENVIRONMENT]] && xrdb -merge -I$HOME $XENVIRONMENT
