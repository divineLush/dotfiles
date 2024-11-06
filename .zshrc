[[ $- != *i* ]] && return

source ~/.zsh_aliases

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

unsetopt beep
setopt autocd
setopt interactive_comments

bindkey -v

eval "$(starship init zsh)"
