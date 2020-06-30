export PATH="$BLFM/scripts:$HOME/.local/chromium_apps:$PATH"
wkon home
# auto startx in tty1
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
