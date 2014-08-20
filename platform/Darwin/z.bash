##
## set up z if it's installed
##

if test $(which brew); then
  [ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh
fi
