[[ $- != *i* ]] && return

autoload -Uz compinit add-zsh-hook
compinit
zstyle ':completion:*' menu select

source ~/.zsh_aliases

eval "$(starship init zsh)"

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/zsh/history

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY

unsetopt BEEP

setopt AUTOCD
setopt INTERACTIVE_COMMENTS

bindkey -v
