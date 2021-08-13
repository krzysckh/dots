export EDITOR="vim"
export TERMINAL="urxvt"

set -o vi

echo -ne "\033[5 q"

#printf '\e]710;%s\007' "xft:Source Code Variable Regular:pixelsize=14"

clear

alias fserv='python3 -m http.server'
alias rst='. /home/krzych/scripts/reset.sh'
alias clear='printf "\033c"'
alias cls='printf "\033c"'
alias post0='. /home/krzych/scripts/post0x0.sh'
alias sent='sent -c $(cat $HOME/.cache/wal/onebyone/c12) -b $(cat $HOME/.cache/wal/onebyone/c1)'


echo "witaj, $USER"
echo ""

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias l='ls -F'
#PS1='[\u@\h]\W\$ '

PS1='\u: \[\033[37m\]\W \[\033[34m\]➙\[\033[0m\] '
PS2='· '
