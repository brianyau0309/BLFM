#             _
#     _______| |__  _ __ ___
#    |_  / __| '_ \| '__/ __|
#  _  / /\__ \ | | | | | (__
# (_)/___|___/_| |_|_|  \___|
# Show git branch
setopt prompt_subst
gitbranch() { git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' }

# Enable Color
autoload -U colors && colors

# PROMPT
if [ "$(whoami)" = 'root' ]; then
  PS1='%B%F{yello}[%1~]%b%f 😎 '
else
  PS1='%B%F{yello}[%1~]%b%f %(?.😄.😫) '
fi
RPROMPT='%B%F{green}$(gitbranch)%b%f'

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.zhistory

# Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.cache/.zcompdump
_comp_options+=globdots
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey "^?" backward-delete-char

# Auto cd
setopt auto_cd

# vim edit
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Alias
[ -f ~/.alias ] && source ~/.alias
[ -f ~/.zalias ] && source ~/.zalias

# Plugin
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=247"
bindkey '^k' autosuggest-accept
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/doc/find-the-command/ftc.zsh quiet noprompt

# Personal
if [ "$(whoami)" = 'root' ]; then
else
  [ -z $(wkon anchor) ] || cd $(wkon anchor)
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use
