puma-dev-restart() {
  if [ -d "tmp" ]; then
    touch tmp/restart.txt && rm -f tmp/restart.txt
  fi
}
