##
## Change directories to a ~/Projects/ directory. Tab-completion of Projects/ works.
##

function p() {
  cd $PROJECTS/"$1";
}

function _p() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(/bin/ls PROJECTS)" -- $cur) )
}

complete -F _p p
