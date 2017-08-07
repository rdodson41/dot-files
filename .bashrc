#!/usr/bin/env bash

export GNU_BIN="/usr/local/opt/coreutils/libexec/gnubin"

export GPG_TTY="$(tty)"

if [[ -d "${HOME}/Developer/go" ]]; then
  export GOPATH="${HOME}/Developer/go"
fi

if [[ -f "/usr/local/etc/bash_completion" ]]; then
  source "/usr/local/etc/bash_completion"
fi

if [[ -f "${HOME}/.iterm2_shell_integration.bash" ]]; then
  source "${HOME}/.iterm2_shell_integration.bash"
fi

if [[ -f "${HOME}/.nvm/nvm.sh" ]]; then
  source "${HOME}/.nvm/nvm.sh"
fi

if [[ -f "${HOME}/.rvm/scripts/rvm" ]]; then
  source "${HOME}/.rvm/scripts/rvm"
fi

eval "$(find "${HOME}/.bash" -type f -name *.sh -exec echo source \"{}\" \;)"

if [[ -d "${GNU_BIN}" ]]; then
  eval "$("${GNU_BIN}/dircolors" "${HOME}/.dircolors")"
elif dircolors --version &> /dev/null; then
  eval "$(dircolors "${HOME}/.dircolors")"
fi
