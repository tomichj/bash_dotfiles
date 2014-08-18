#-----------------------
# Terminal colors
#-----------------------
export LSCOLORS=GxFxCxDxBxegedabagaced


#-----------------------
# PROMPT
#-----------------------

# foreground colors start with a 3. Red foreground: 31
# background colors start with a 4. Red background: 41
# 0 default, 1 bold, 22 not bold, 4 underlined, 24 not underlined, 5 blinking, 25 not blinking, 7 invers, 27 not invers
# 30 (black), 31 (red), 32 (green), 33 (yellow), 34 (blue), 35 ( magenta), 36 (cyan), 37 (white)
black='\[\033[0;30m\]'
BLACK='\[\033[1;30m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
magenta='\[\033[0;35m\]'
MAGENTA='\[\033[1;35m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
nc='\[\033[00m\]'  # No Color
NC='\[\033[01m\]'


###########################################################
# Default prompt. Ug.
export PS1='\[\033]0;\h\007\][\@] \h:\w% '


#-----------------------------------
# GIT PROMPT
#-----------------------------------

if type git > /dev/null 2>&1; then
  export PS1=$green'\u'$nc'@'$cyan'\h'$nc':'$magenta'\w'$NC$YELLOW'`git branch 2>/dev/null|cut -f2 -d\* -s`'$nc'% '
fi

