#!/bin/sh

if [ "$#" -gt 1 ]; then
  printf 'Usage: %s [password]\n' "$0" >&2
  exit 2
fi

if [ "$#" -eq 1 ]; then
  guess=$1
else
  printf 'Enter password: '
  IFS= read -r guess || exit 2
fi

if [ "$guess" = 'hai_nile' ]; then
  printf 'Correct! You found the password.\n'
  exit 0
fi

printf 'Not quite. Keep searching!\n'
exit 1
