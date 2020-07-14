export PATH="$BLFM/scripts:$HOME/.local/bin:$HOME/.local/chromium_apps:$PATH"
#sudo powertop --auto-tune > /dev/null &
wkon home
# auto startx in tty1
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
#[ "$(tty)" = "/dev/tty1" ] && ( pgrep -x dwm || exec startx; )
