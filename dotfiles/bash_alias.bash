# Basic
alias ls='ls --color=auto --group-directories-first'
alias la="ls -A"
alias ll="ls -l"
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias +x="chmod +x"
# pacman
alias p="sudo pacman"
# vim
alias v="vim"
alias sv="sudo vim"
alias vrc="vim ~/.vimrc"
alias vst="cd ~/.vim/after && ls"
# bash
alias brc="vim ~/.bashrc"
alias bpr="vim ~/.bash_profile"
# git
alias g="git"
# tmux
alias tmc="vim ~/.tmux.conf"
# xorg
alias xrc="vim ~/.xinitrc"
alias xpr="vim ~/.xprofile"
# suckless
alias dwc="vim ~/.config/dwm/config.h"
alias stc="vim ~/.config/st/config.h"
alias dmc="vim ~/.config/dmenu/config.h"
# ranger
alias r='ranger --choosedir=$HOME/.config/ranger/.rangerdir; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"'
alias rrc="vim ~/.config/ranger/rc.conf"
# wkon
alias gh="cd ~ && wkon home"
alias gw="cd $(cat $HOME/.config/.last_wkon) && wkon"
# python virtualenv manager
alias pvm="source ~/Workdesk/pvm/pvm"
# memo
alias memo="~/Workdesk/memo/memo"
alias mgp="~/Workdesk/memo/mgp"
alias m="memo"
alias ml="memo last"
alias mt="memo last Tags"
alias mtd="memo last $(date "+%d-%m-%Y")"
alias mtr="memo last $(date -d tomorrow "+%d-%m-%Y")"
alias mls="memo list"

