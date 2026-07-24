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

# foot terminal integration
function osc7-pwd() {
    emulate -L zsh # also sets localoptions for us
    setopt extendedglob
    local LC_ALL=C
    printf '\e]7;file://%s%s\e\' $HOST ${PWD//(#m)([^@-Za-z&-;_~])/%${(l:2::0:)$(([##16]#MATCH))}}
}

function chpwd-osc7-pwd() {
    (( ZSH_SUBSHELL )) || osc7-pwd
}
add-zsh-hook chpwd chpwd-osc7-pwd
