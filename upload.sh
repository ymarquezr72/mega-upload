#!/bin/bash

set -e

bash -c  "nohup tail -f /github/home/.megaCmd/megacmdserver.log >&0 2>1" &
if [ -z "${USERNAME}" ]; then
  echo "Mega username must be provided as USERNAME environment variable"
  return 1
fi
if [ -z "${PASSWORD}" ]; then
  echo "Mega password must be provided as PASSWORD environment variable"
  return 1
fi

mega-login "${USERNAME}" "${PASSWORD}"
mega-put -c "$1" "$2"
mega-logout
