[[ $- != *i* ]] && return

zstyle ':completion:*' menu select
autoload -Uz compinit && compinit

source ~/.zsh_aliases

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

autoload -Uz promptinit && promptinit
prompt off

unsetopt beep
setopt autocd
setopt interactive_comments

bindkey -v
sleep 0.1
