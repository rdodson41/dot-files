#!/usr/bin/env bash

if [[ -f "${HOME}/.bashrc" ]]; then
  source "${HOME}/.bashrc"
fi

if [[ -e "${HOME}/.iterm2_shell_integration.bash" ]]; then
  source "${HOME}/.iterm2_shell_integration.bash"
fi
