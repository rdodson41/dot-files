#!/usr/bin/env bash

export GPG_TTY="$(tty)"

if [[ -f "${HOME}/.bash/aliases" ]]; then
  source "${HOME}/.bash/aliases"
fi

if [[ -f "${HOME}/.bash/prompt" ]]; then
  source "${HOME}/.bash/prompt"
fi
