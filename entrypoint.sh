#!/bin/sh -l

set -e

cmd="$@"
  
until curl -i -s -f -o /dev/null -u $INPUT_USER:$INPUT_PASS $INPUT_URL; do
  >&2 echo "Service is not ready - waiting $INPUT_TIME"
  sleep $INPUT_TIME
done

>&2 echo "Service is ready"

exit 0