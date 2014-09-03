#!/bin/bash

_gradle() {
  local cur tasks

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  tasks='assemble build clean compile dependencies dists idea javadoc jar test uploadArchives war'
  cur=`echo $cur | sed 's/\\\\//g'`
  COMPREPLY=($(compgen -W "${tasks}" ${cur} | sed 's/\\\\//g') )
}

complete -F _gradle -o filenames gradle
complete -F _gradle -o filenames gradlew
