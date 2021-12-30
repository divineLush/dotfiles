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
alias gi="git init"
alias gcl="git clone"
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

alias gl="git log --oneline"
alias glg="git log --graph --oneline --decorate"

alias gsh="git stash"
alias gshp="git stash pop"
alias gshl="git stash list"
alias gshs="git stash save"
alias gsha="git stash apply"

# update debian system
alias upd="sudo apt update && sudo apt upgrade"

# tar
alias untar="tar -zxvf"
alias listar="tar -tzf"

# docker
alias dcl="docker-clean"
alias dpr="docker system prune -a -f"
alias dli="docker images -a"
alias dlc="docker ps -a"
alias dlv="docker volume ls"

# other goodies
alias rss="newsboat"
alias rr="ranger"
alias e="$EDITOR"
alias epub="mupdf -U ~/epub-styles.css"
alias myip="curl ipinfo.io/ip"
alias shownet="nmcli -t -f name connection show --active"
alias lswifi="nmcli dev wifi"
