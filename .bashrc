#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#make ls and grep have pretty colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

#little thingy
PS1='[\u@\h \W]\$ '

#vim mode for command line
set -o vi

#caps ranger depth at 1
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}
