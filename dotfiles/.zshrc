#             _
#     _______| |__  _ __ ___
#    |_  / __| '_ \| '__/ __|
#  _  / /\__ \ | | | | | (__
# (_)/___|___/_| |_|_|  \___|

autoload -U colors && colors
PS1='%B%F{yello}[%1~]%b%f %(?.😆.😭) '

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.zhistory

autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit -d ~/.cache/.zcompdump
_comp_options+=globdots

setopt auto_cd

[ -f ~/.alias ] && source ~/.alias # fzf
[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh # fzf
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
