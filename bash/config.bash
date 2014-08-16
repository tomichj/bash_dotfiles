#!/bin/bash

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# fix spelling
shopt -s cdspell

# make bash check window after each command
# if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Tab complete for sudo
complete -cf sudo

# prevent overwriting files with cat
set -o noclobber

# Treat undefined variables as errors
# THIS BREAKS GIT COMPLETION!
#set -o nounset

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000
PROMPT_COMMAND='history -a'


# set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi

# Locale
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export CLICOLOR=true

complete -cf sudo # Tab complete for sudo

export VISUAL=emacs
export EDITOR=emacs
export PAGER=less
# export HISTFILE="$HOME/.bash.history"
umask 027
set -o emacs


# ---------------- local alias file ------------------
alias add-alias='cat >> ~/.alias.local; source ~/.alias.local'
if [ -f ~/.alias.local ]; then
  source ~/.alias.local
fi
