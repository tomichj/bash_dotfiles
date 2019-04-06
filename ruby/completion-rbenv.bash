# try homebrew first
if hash brew 2>/dev/null && [ -f `brew --prefix`/opt/rbenv/completions/rbenv.bash ]; then
  source `brew --prefix`/opt/rbenv/completions/rbenv.bash
elif [[ -e ~/.rbenv/completions/rbenv.bash ]]; then
    . ~/.rbenv/completions/rbenv.bash
fi
