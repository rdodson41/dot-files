#!/usr/bin/env bash

export PATH="$(cat /etc/paths /etc/paths.d/* | paste -s -d : -)"
export PATH="${HOME}/.bin:${PATH}"
export PATH="${HOME}/.local/bin:${PATH}"

export COREUTILS_GNUBIN="$(brew --prefix)/opt/coreutils/libexec/gnubin"
export COREUTILS_GNUMAN="$(brew --prefix)/opt/coreutils/libexec/gnuman"
export FINDUTILS_GNUBIN="$(brew --prefix)/opt/findutils/libexec/gnubin"
export FINDUTILS_GNUMAN="$(brew --prefix)/opt/findutils/libexec/gnuman"

export GPG_TTY="$(tty)"

if [[ -d "${HOME}/Developer/go" ]]; then
  export GOPATH="${HOME}/Developer/go"
fi

if [[ -f "$(brew --prefix)/etc/bash_completion" ]]; then
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

for path in $(find "${HOME}/.bash" -type f -name "*.sh"); do
  source "${path}"
done

if [[ -d "${COREUTILS_GNUBIN}" ]]; then
  eval "$("${COREUTILS_GNUBIN}/dircolors" "${HOME}/.dircolors")"
elif dircolors --version &> /dev/null; then
  eval "$(dircolors "${HOME}/.dircolors")"
fi

unset path
