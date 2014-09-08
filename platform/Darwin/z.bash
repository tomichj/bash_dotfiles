##
## set up z if it's installed
##

if hash brew 2>/dev/null && [ -f `brew --prefix`/etc/profile.d/z.sh ]; then
  . `brew --prefix`/etc/profile.d/z.sh
fi
