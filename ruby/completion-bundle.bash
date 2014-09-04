#! bash
# bash completion for the `bundle` command.
# 
# Updated for Bundler 1.7.2 by Justin Tomich.
#
# Copyright (c) 2011-2013 Daniel Luz <dev at mernen dot com>.
# Distributed under the MIT license.
# http://mernen.com/projects/completion-ruby
#
# To use, source this file on bash:
#   . completion-bundle

__bundle() {
  local cur=$2
  local prev=$3
  local bundle_command
  __bundle_get_command
  COMPREPLY=()

  local options
  if [[ $cur = -* ]]; then
      options="--no-color --verbose"
      if [[ -z $bundle_command ]]; then
          options="$options --version --help"
      fi
  else
      if [[ -z $bundle_command || $bundle_command = help ]]; then
        options="install update package exec config help
          check list show outdated console open viz init gem platform clean"
      fi
  fi
  COMPREPLY=($(compgen -W "$options" -- "$cur"))
}

__bundle_get_command() {
    local i
    for ((i=1; i < $COMP_CWORD; ++i)); do
        local arg=${COMP_WORDS[$i]}

        case $arg in
        [^-]*)
            bundle_command=$arg
            return;;
        --version)
            # command-killer
            bundle_command=-
            return;;
        --help)
            bundle_command=help
            return;;
        esac
    done
}


complete -F __bundle -o bashdefault -o default bundle
# vim: ai ft=sh sw=4 sts=2 et
