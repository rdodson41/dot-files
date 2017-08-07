#!/usr/bin/env bash

if [[ -f "${HOME}/.bash/alias/git.jq" ]]; then
  eval "$(git alias 2> /dev/null | jq --from-file "${HOME}/.bash/alias/git.jq" --raw-input --raw-output 2> /dev/null)"
fi
