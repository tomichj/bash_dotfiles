alias ls='ls -CFG'

# gls overides for ls
# Made possible through contributions from generous benefactors like:
#   `brew install coreutils`
if hash gls 2>/dev/null; then
  alias ls="gls -F --color"
  alias l="gls -lh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
  alias lla="gls -lAh --color"
fi
