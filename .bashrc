#!/usr/bin/env bash

export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY="$(tty)"
export PYENV_ROOT="${HOME}/.pyenv"

if command -v pyenv > /dev/null; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
fi

alias ls="ls -FGhlT"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/local/bin/brew shellenv)"

# Added by `rbenv init` on Sun Dec  8 20:49:37 CST 2024
eval "$(rbenv init - --no-rehash bash)"

eval "$(pyenv init -)"

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
fi

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/z.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/z.sh"
fi
