#system
alias _='sudo'
alias la='ls -lAh'

alias ll='ls -FGlAhp'
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

#Disk
alias df="df -h"
alias diskusage="df"
alias fu="du -ch"
alias folderusage="fu"
alias tfu="du -sh"
alias totalfolderusage="tfu"

#Redis
alias rc="redis-cli flushall"

#Network
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ip="curl icanhazip.com"
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias weather="curl wttr.in"

# Functions
mkcdir ()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}


#Git.
alias g='git'

#Git status
alias gs='git status'

#Git Log.
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#Git reseta
alias gnah='git reset --hard;git clean -df'

#Git add and commit
alias gc="git commit -a"

#Git checkout
alias gch='git checkout'

#Git push
alias gpush='git push origin'

#Git Pull origin
alias gpull='git pull origin'

#Opens PR for current branch
function openpr() {
  br=`git branch | grep "*"`
  remote=`git remote -v | grep "origin"`
  repo=$1
  parentBranch=$2
  google-chrome  ${remote}/${repo/* /}/compare/${parentBranch/* /}:${br/* /}\?expand\=1
}

#Laravel
alias lara-inst='composer create-project --prefer-dist laravel/laravel'


#Artisan
alias art="php artisan"
alias migrate="php artisan migrate"
alias migraterf="php artisan migrate:refresh"
alias migraterf="php artisan migrate:refresh"
alias serve="php artisan serve"
alias tinker='php artisan tinker'

#Composer
alias c='composer'
alias cr='composer require'
alias cda='composer dumpautoload --optimize'
alias cu='composer update'

#PHPUnit
t() {
  if [ -f vendor/bin/phpunit ]; then
    vendor/bin/phpunit "$@"
  else
    phpunit "$@"
  fi
}