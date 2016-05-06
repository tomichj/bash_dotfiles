##
## Change directories to a $PROJECTS directory. Tab-completion of $PROJECTS works.
##
## $PROJECTS is typically defined in bash/bashrc.symlink.

function p() {
  cd $PROJECTS/"$1";
}

function _p() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(/bin/ls ${PROJECTS})" -- $cur) )
}

complete -F _p p
