#!/usr/bin/env sh
# USAGE
# ./keep-alive.sh URL1 URL2 URL3
#
array=$@
echo "target: ${array}"
echo "under operation..."
while true; do
  for url in $array; do
    curl -s --show-error $url > /dev/null
  done
  sleep 2 # in seconds.
  # replace above with 120 or smth on release.
done
