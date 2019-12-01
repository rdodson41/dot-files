#!/usr/bin/env bash

export GPG_TTY="$(tty)"

if [[ -f "${HOME}/.bash_aliases" ]]; then
  source "${HOME}/.bash_aliases"
fi

if [[ -f "${HOME}/.bash_prompt" ]]; then
  source "${HOME}/.bash_prompt"
fi
