##
## set up z if it's installed
##

if hash brew 2>/dev/null; then
  [ -f `brew --prefix`/etc/profile.d/z.sh ] && . `brew --prefix`/etc/profile.d/z.sh
fi
