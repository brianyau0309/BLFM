#     _               _
#    | |__   __ _ ___| |__  _ __ ___
#    | '_ \ / _` / __| '_ \| '__/ __|
#  _ | |_) | (_| \__ \ | | | | | (__
# (_)|_.__/ \__,_|___/_| |_|_|  \___|


[[ $- != *i* ]] && return # If not running interactively, don't do anything
export HISTFILE=$HOME/.cache/.bash_history
[ -f ~/.config/.fzf.bash ] && source ~/.config/.fzf.bash # fzf
[ -f ~/.alias ] && source ~/.alias # alias
shopt -s autocd # auto cd

[ "$(whoami)" = 'root' ] &&
  PS1='\e[1m\e[93m[\W] 😎\e[0m ' ||
  PS1='\e[1m\e[93m[\W] $([ $? = 0 ] && echo "😆" || echo "😭")\e[0m '

[ -z $(wkon anchor) ] || cd $(wkon anchor)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
