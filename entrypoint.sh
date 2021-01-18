#!/bin/sh -l

set -e
  
until curl -i -s -f -o /dev/null -u $INPUT_WAIT_USER:$INPUT_WAIT_PASS $INPUT_WAIT_URL; do
  >&2 echo "Service is not ready - waiting $INPUT_WAIT_TIME s"
  sleep $INPUT_WAIT_TIME
done

>&2 echo "Service is ready"

exit 0