#!/usr/bin/env bash

export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY="$(tty)"

alias ls="ls -FGhlT"

if command -v /opt/homebrew/bin/brew > /dev/null; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if command -v /usr/local/bin/brew > /dev/null; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Added by `rbenv init` on Sun Dec  8 20:49:37 CST 2024
if command -v rbenv > /dev/null; then
  eval "$(rbenv init - --no-rehash bash)"
fi

if command -v pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

if command -v python > /dev/null; then
  export PATH="$(python -m site --user-base)/bin:${PATH}"
fi

# Set up fzf key bindings and fuzzy completion
if command -v fzf > /dev/null; then
  eval "$(fzf --bash)"
fi

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
fi

if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/z.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/z.sh"
fi

if [[ -r "$(pip show powerline-status | awk '/^Location:/ { print($2) }')/powerline/bindings/bash/powerline.sh" ]]; then
  source "$(pip show powerline-status | awk '/^Location:/ { print($2) }')/powerline/bindings/bash/powerline.sh"
fi
