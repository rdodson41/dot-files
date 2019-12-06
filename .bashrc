#!/usr/bin/env bash

export GPG_TTY="$(tty)"

if which brew > /dev/null; then
  BASH_COMPLETION="$(brew --prefix)/etc/bash_completion"
  Z="$(brew --prefix)/etc/profile.d/z.sh"
else
  BASH_COMPLETION="/usr/share/bash-completion/bash_completion"
  Z="${HOME}/.opt/z/z.sh"
fi

if [[ -f "${BASH_COMPLETION}" ]]; then
  source "${BASH_COMPLETION}"
fi

if [[ -f "${Z}" ]]; then
  source "${Z}"
fi

if [[ -f "${HOME}/.fzf.bash" ]]; then
  source "${HOME}/.fzf.bash"
fi

if [[ -f "${HOME}/.bashrc.d/aliases" ]]; then
  source "${HOME}/.bashrc.d/aliases"
fi

if [[ -f "${HOME}/.bashrc.d/prompt" ]]; then
  source "${HOME}/.bashrc.d/prompt"
fi
