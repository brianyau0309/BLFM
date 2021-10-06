export PATH="$HOME/.cargo/bin:$BLFM/dwm_status:$BLFM/scripts:$HOME/.local/bin:$HOME/.local/chrome_apps:$PATH"
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# auto startx in tty1
[ "$(tty)" = "/dev/tty1" ] && { pgrep -x dwm || exec startx; }
# [ "$(tty)" = "/dev/tty1" ] && ( pgrep -x dwm || exec startx; )
