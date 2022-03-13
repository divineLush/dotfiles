#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

export EDITOR="nvim"
export VISUAL="nvim-qt"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
