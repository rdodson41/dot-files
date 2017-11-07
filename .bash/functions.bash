#!/usr/bin/env bash

if which fzf > /dev/null; then
  p()
  {
    cd "$(find "${HOME}/Developer" -mindepth 1 -maxdepth 1 -type d | fzf --cycle --query="${1}" --select-1 "${@:2}")"
  }
fi
