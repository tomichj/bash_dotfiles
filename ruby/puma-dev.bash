puma-dev-restart() {
  if [ -d "tmp" ]; then
    touch tmp/restart.txt && rm -f tmp/restart.txt
  fi
}

puma-dev-kill() {
  pkill -USR1 puma-dev
}
