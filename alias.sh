alias _='sudo'
alias la='ls -lAh'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ll='ls -FGlAhp'
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

alias df="df -h"
alias diskusage="df"
alias fu="du -ch"
alias folderusage="fu"
alias tfu="du -sh"
alias totalfolderusage="tfu"

#Redis
alias rc="redis-cli flushall"

alias ip="curl icanhazip.com"
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias weather="curl wttr.in"

# Functions
mkcdir ()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}