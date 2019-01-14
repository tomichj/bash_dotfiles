#
# Postgres configuration for Postgres.app
#
if [ -d /Applications/Postgres.app/Contents/Versions/11 ]; then
  export POSTGRES_BIN=/Applications/Postgres.app/Contents/Versions/11/bin
  export PATH=$POSTGRES_BIN:${PATH}
fi
