# try homebrew first
if [ -f `brew --prefix`/opt/rbenv/completions/rbenv.bash ]; then
  source `brew --prefix`/opt/rbenv/completions/rbenv.bash
elif [[ -f ~/.rbenv/completions/rbenv.bash ]]; then
    ~/.rbenv/completions/rbenv.bash
fi
