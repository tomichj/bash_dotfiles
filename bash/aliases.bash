# ------------- essential aliases -----------
alias reload!='. ~/.bashrc'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias l='ls -l'
alias la='ls -la'

alias c='clear'

alias df='df -h'
alias du='du -h -c'
alias mkdir='mkdir -p -v'
alias grep='grep --color=auto'


# local aliases file outside of dotfiles
if [ -e ~/.aliases ]
then
  . ~/.aliases
fi
