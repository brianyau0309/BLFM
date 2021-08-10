#!/bin/zsh

export XDG_DESKTOP_DIR=$HOME/
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

export BLFM=$HOME/.config/BLFM
export BROWSER=brave
export WBROWSER=google-chrome-stable
export EDITOR=nvim
export VISUAL=nvim

export NNN_COLORS='6123'
export NNN_BMS='m:/mnt;t:/tmp;c:~/.config;d:~/Downloads;w:~/Workdesk;v:/mnt/Videos;M:~/Music;r:/mnt/rpi4;'
export NNN_PLUG='d:dragdrop;c:fzcd'

export LESSHISTFILE=/dev/null
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;94m'

export FZF_DEFAULT_COMMAND="fd --type file --hidden --follow --no-ignore-vcs -E 'node_modules' -E '__pycache__' -E '.cache' -E '.local' -E '.git' -E 'pvm' -E 'chromium' -E 'plugged' -E '.fzf' -E '.minecraft' -E 'obs-studio' -E 'libreoffice' -E 'GIMP' -E 'discord' -E 'go' -E 'BraveSoftware' -E '.nvm' -E 'VirtualBox' -E '.steam' -E '.nuget' -E '.aspnet' -E '.dotnet' -E '.vscode-oss' -E 'Code - OSS' -E '.npm' -E '.thunderbird' -E '.templateengine' -E 'coc' -E '.mozilla' -E 'Electron' -E 'fcitx' -E 'balena-etcher' -E 'watch_later' -E 'bin' -E 'obj' -E 'wwwroot' -E 'advcpmv' -E 'Games' -E '.wine' -E '.cargo' -E 'sublime-text-3' -E '.electron-gyp' -E '.mysql' -E 'target/debug' -E 'google-chrome' -E '.rustup'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"
export FZF_ALT_C_COMMAND="fd -t d"
export FZF_ALT_C_OPTS="--preview 'exa -g --color=auto --group-directories-first -la --git {}'"

export NODE_REPL_HISTORY=""

export XIM_PROGRAM=fcitx
export XIM=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# export GTK_IM_MODULE=fcitx
export GTK2_RC_FILES=/usr/share/themes/Arc-Dark/gtk-2.0
export GTK_THEME=Arc-Dark
source "$HOME/.cargo/env"
