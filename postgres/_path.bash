#
# Postgres configuration for Postgres.app
#
if [ -d /Applications/Postgres.app/Contents/Versions/9.3 ]; then
  export POSTGRES_BIN=/Applications/Postgres.app/Contents/Versions/9.3/bin
  export PATH=$POSTGRES_BIN:${PATH}
fi
