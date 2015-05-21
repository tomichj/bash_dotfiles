# installed via homebrew, don't need path

if ! hash rbenv 2>/dev/null && [ -d ~/.rbenv/bin ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

# init according to man page
if hash rbenv 2>/dev/null; then
  eval "$(rbenv init -)"
fi
