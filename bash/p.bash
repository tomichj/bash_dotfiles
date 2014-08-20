##
## switch directories to a project. tab-completion works.
##
function p() {
  cd $PROJECTS/"$1";
}


function _p() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(ls $PROJECTS)" -- $cur) )
}

complete -F _p p

