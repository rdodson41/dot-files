#!/usr/bin/env bash

p()
{
  cd "$(find "${HOME}/Developer" -mindepth 1 -maxdepth 1 -type d | fzf --cycle --query="${1}" --select-1 "${@:2}")"
}
