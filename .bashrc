#!/usr/bin/env bash

if which brew > /dev/null && [[ -f "$(brew --prefix)/etc/bash_completion" ]]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

if [[ -f "${HOME}/.iterm2_shell_integration.bash" ]]; then
  source "${HOME}/.iterm2_shell_integration.bash"
fi

if [[ -f "${HOME}/.fzf.bash" ]]; then
  source "${HOME}/.fzf.bash"
fi

if [[ -f "${HOME}/.nvm/nvm.sh" ]]; then
  source "${HOME}/.nvm/nvm.sh"
fi

if [[ -f "$NVM_DIR/bash_completion" ]]; then
  source "$NVM_DIR/bash_completion"
fi

if [[ -f "${HOME}/.rvm/scripts/rvm" ]]; then
  source "${HOME}/.rvm/scripts/rvm"
fi

for path in $(find "${HOME}/.bash" -type f -name "*.bash"); do
  source "${path}"
done

if [[ -n "${COREUTILS_GNUBIN}" && -d "${COREUTILS_GNUBIN}" ]] && which "${COREUTILS_GNUBIN}/dircolors" > /dev/null; then
  eval "$("${COREUTILS_GNUBIN}/dircolors" "${HOME}/.dircolors")"
elif which dircolors > /dev/null; then
  eval "$(dircolors "${HOME}/.dircolors")"
fi

unset path
