#!/usr/bin/env bash

export GPG_TTY="$(tty)"

if which brew > /dev/null; then
  BREW_PREFIX="$(brew --prefix)"
fi

if [[ -f "${BREW_PREFIX}/etc/bash_completion" ]]; then
  source "${BREW_PREFIX}/etc/bash_completion"
fi

if [[ -f "${HOME}/.bash/aliases" ]]; then
  source "${HOME}/.bash/aliases"
fi

if [[ -f "${HOME}/.bash/prompt" ]]; then
  source "${HOME}/.bash/prompt"
fi
