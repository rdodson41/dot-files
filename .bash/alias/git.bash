#!/usr/bin/env bash

if [[ -f "${HOME}/.bash/alias/git.jq" ]] && which git jq > /dev/null; then
  eval "$(git config --get-regexp "^alias[.]" | jq --from-file "${HOME}/.bash/alias/git.jq" --raw-input --raw-output)"
fi