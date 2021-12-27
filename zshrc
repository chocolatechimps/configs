
#rice for zsh prompt

#PROMPT='%F{30}%n%F{20} @ %F{6}%1d%F{20} >>> %F{253}'
PROMPT='%F{30}%n%F{244} || %F{6}%1d%F{20} >>> %F{253}'
RPROMPT="%F{63}%* %F{244}|| %F{61}%W %F{reset}"

set -o vi

# general shortcuts

alias c='clear'
alias cls='clear; ls'
alias home='cd ~'
alias ls='ls -G'
alias study='cd ~/Documents/school/classes/NSCI/3exam;ls'
alias e='exit'
# alias inq='cd ~/Documents/school/classes/WRIT/inquiry\ project/;ls'
alias reloadconfs='source ~/.zshrc'
alias test='zsh ~/bin/cdNotes.sh'
# alias notes='zsh ~/bin/cdNotes.sh'

#instant access to frequent configs
#prefix is always rc

alias rczsh='vim ~/.zshrc'
alias rcvim='vim ~/.vimrc'
alias clipyt='python3 ~/.scripts/clip-yt.py'
alias medicate='ssh root@66.42.115.224'

notes() {

    SEM="1-semester"
    CLASS1="esci"
    CLASS2="nsci"
    CLASS3="writ"
    CLASS4="span"


    if (( $# == 0 ))
    then cd ~/Documents/school/classes;
    fi

    if [[ $1 == $CLASS1 ]]
    then cd ~/Documents/school/classes/$CLASS1;
    fi

    if [[ $1 == $CLASS2 ]]
    then cd ~/Documents/school/classes/$CLASS2;
    fi

    if [[ $1 == $CLASS3 ]]
    then cd ~/Documents/school/classes/$CLASS3;
    fi


    if [[ $1 == $CLASS4 ]]
    then cd ~/Documents/school/classes/$CLASS4;
    fi


    ls
}

