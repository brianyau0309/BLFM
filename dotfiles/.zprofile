export PATH="$HOME/.cargo/bin:$BLFM/dwm_status:$BLFM/scripts:$HOME/.local/bin:$HOME/.local/chrome_apps:$PATH"
# sudo ifconfig eno1 down

# auto startx in tty1
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
# [ "$(tty)" = "/dev/tty1" ] && ( pgrep -x dwm || exec startx; )
