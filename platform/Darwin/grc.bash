# GRC colorizes nifty unix tools all over the place
if hash brew 2>/dev/null && [ -e `brew --prefix`/bin/grc ]; then
  source `brew --prefix`/etc/grc.bashrc
fi
