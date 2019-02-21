puma-dev-restart() {
  if [ -d "tmp" ]; then
    touch tmp/restart.txt && rm -f tmp/restart.txt
  fi
}

puma-dev-kill() {
  pkill -USR1 puma-dev
  ps auxwww | grep puma | grep -v grep | cut -b 14-22 | xargs kill
}

alias puma-dev-logs='tail -f ~/Library/Logs/puma-dev.log'
