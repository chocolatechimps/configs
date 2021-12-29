#       Reid's zsh rice

PROMPT='%F{30}server%F{244} || %F{6}%1d%F{20} » %F{253}'
set -o vi

# general shortcuts

alias c='clear'
alias cls='clear; ls' 
alias h='cd ~'
alias ls='ls -G' 
alias reloadconfs='source ~/.zshrc'

#instant access to frequent configs
alias rczsh='vim ~/.zshrc'
alias rcvim='vim ~/.vimrc'
