
alias ls='ls -CFG'
alias ps-ssh='ps auxwww | grep "ssh -C" | grep -v grep'
alias ps-ssh-pids='ps-ssh | cut -b 8-15'
alias kill-ssh='ps-ssh; ps-ssh-pids | xargs kill'
alias psg='ps auxwww | grep '
alias psgi='psg -i'

# turn this into a function
alias tcpd8080="sudo tcpdump -s 0 -A -i lo0 'tcp port 8080 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias tcpd8081="sudo tcpdump -s 0 -A -i lo0 'tcp port 8081 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias netuse='lsof -r -i TCP -i UDP'

# set locale to fix some textmate bundle craziness
export LC_CTYPE=en_US.UTF-8

export POSTGRES_BIN=/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH=$POSTGRES_BIN:${PATH}
export PATH="/usr/local/heroku/bin:$PATH"
export MANPATH=/usr/local/share/man:${MANPATH}

alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
# alias java6='export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home; export PATH=${JAVA_HOME}/bin:${PATH}'
# alias java5='export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home; export PATH=${JAVA_HOME}/bin:${PATH}'

# open a man page in preview
pman () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

# open a mac page in text, using textmate
tman () {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

# if test $(which brew); then
#   [ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh
# fi

