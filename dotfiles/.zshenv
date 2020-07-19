#!/bin/zsh

export XDG_DESKTOP_DIR=$HOME/
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export BLFM=$HOME/.config/BLFM
export BROWSER=brave
export EDITOR=vim
export VISUAL=vim
export NNN_COLORS='6123'
export NNN_BMS='c:~/.config;d:~/Downloads;m:/mnt;w:~/Workdesk'
export LESSHISTFILE=/dev/null
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;94m'
export LESSHISTFILE=$HOME/.cache/.lesshst
export FZF_DEFAULT_COMMAND="fd --type file --hidden --follow -E ".cache" -E ".local" -E ".git" -E "pvm" -E "chromium" -E "plugged" -E ".fzf" -E ".minecraft" -E "obs-studio" -E "libreoffice" -E "GIMP" -E "discord" -E "go" -E "BraveSoftware" -E ".nvm" -E "VirtualBox" -E ".steam" -E ".nuget" -E ".aspnet" -E ".dotnet" -E ".vscode-oss" -E 'Code - OSS' -E '.npm'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export NODE_REPL_HISTORY=""
export XIM_PROGRAM=fcitx
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
