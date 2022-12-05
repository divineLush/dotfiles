#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\w\[\e[32m\]\$\e[m\] '

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

export EDITOR="nvim"
export VISUAL="neovide"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
