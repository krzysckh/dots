export EDITOR="vim"
export TERMINAL="urxvt"

echo -ne "\033[5 q"

clear

alias clear='printf "\033c"'
alias cls='printf "\033c"'
alias post0='. /home/krzych/scripts/post0x0.sh'
alias sent='sent -c $(cat $HOME/.cache/wal/onebyone/c12) -b $(cat $HOME/.cache/wal/onebyone/c1)'

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias l='ls -F'

PS1='\u: \[\033[37m\]\W \[\033[34m\]➙\[\033[0m\] '
PS2='· '
