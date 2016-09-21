puma-dev-restart() {
  if [ -d "tmp" ]; then
    touch tmp/restart.txt && rm -f tmp/restart.txt
  fi
}

puma-dev-kill() {
  pkill -USR1 puma-dev
}

# restart-puma-dev() {
#   read -p "Are you sure? " -n 1 -r
#   echo
#   if [[ ! $REPLY =~ ^[Yy]$ ]]
#   then
#     exit 1
#   fi
#
#   pids puma-dev | xargs kill
# }
