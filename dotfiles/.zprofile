export PATH="$BLFM/scripts:$HOME/.local/bin:$HOME/.local/chromium_apps:$PATH"
wkon home
sudo ifconfig eno1 down

# auto startx in tty1
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
#[ "$(tty)" = "/dev/tty1" ] && ( pgrep -x dwm || exec startx; )
