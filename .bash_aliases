# ls
alias ll="ls -al"
alias l="ls -l"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# git
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gal="git add ."
alias gbr="git branch"
alias gch="git checkout"
alias grs="git reset"
alias grv="git revert"

alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"

alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias gu="git pull origin"
alias gp="git push origin"
alias gt="git tag"

alias gl="git log --oneline"
alias glg="git log --graph --oneline --decorate"

alias gsh="git stash"
alias gshp="git stash pop"
alias gshl="git stash list"
alias gshs="git stash save"
alias gsha="git stash apply"

# update debian system
alias upd="sudo apt update && sudo apt upgrade"

# brightness
alias brightup="sudo light -A 10"
alias brightdown="sudo light -U 10"
