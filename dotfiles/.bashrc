#     _               _
#    | |__   __ _ ___| |__  _ __ ___
#    | '_ \ / _` / __| '_ \| '__/ __|
#  _ | |_) | (_| \__ \ | | | | | (__
# (_)|_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# fzf
[ -f ~/.config/.fzf.bash ] && source ~/.config/.fzf.bash
# alias
[ -f ~/.config/BLFM/dotfiles/bash_alias.bash ] && source ~/.config/BLFM/dotfiles/bash_alias.bash
# auto cd
shopt -s autocd

PS1='\e[1m\e[93m[\W] $([ $? = 0 ] && echo "😁" || echo "😭")\e[0m '

 #wkon-anchor
