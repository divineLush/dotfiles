[[ $- != *i* ]] && return

source ~/.zsh_aliases

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

autoload -Uz compinit promptinit

zstyle ':completion:*' menu select
compinit

promptinit
prompt suse

unsetopt beep
setopt autocd
setopt interactive_comments

bindkey -v
