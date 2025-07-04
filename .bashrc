#!/usr/bin/env bash

export GPG_TTY="$(tty)"
export CLOUDSDK_PYTHON_SITEPACKAGES=1

alias be="bundle exec"
alias k="kubectl"
alias la="ls -A"
alias ls="ls -FGhlT"

if command -v /opt/homebrew/bin/brew > /dev/null; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if command -v /usr/local/bin/brew > /dev/null; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

if command -v rbenv > /dev/null; then
  eval "$(rbenv init - --no-rehash bash)"
fi

if command -v pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

if command -v python > /dev/null; then
  export PATH="$(python -m site --user-base)/bin:${PATH}"
fi

if command -v go > /dev/null; then
  eval "$(go env)"
fi

if [[ -n "${GOPATH}" ]]; then
  export PATH="${PATH}:${GOPATH}/bin"
fi

if [[ -f "${HOME}/.cargo/env" ]]; then
  source "${HOME}/.cargo/env"
fi

if command -v fzf > /dev/null; then
  eval "$(fzf --bash)"
fi

if [[ -f "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
fi

if [[ -f "${HOMEBREW_PREFIX}/etc/profile.d/z.sh" ]]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/z.sh"
fi

if [[ -f "${HOME}/google-cloud-sdk/path.bash.inc" ]]; then
  source "${HOME}/google-cloud-sdk/path.bash.inc"
fi

if [[ -f "${HOME}/google-cloud-sdk/completion.bash.inc" ]]; then
  source "${HOME}/google-cloud-sdk/completion.bash.inc"
fi

if [[ -f "${HOME}/.bashrc.d/colorbg.sh" ]]; then
  source "${HOME}/.bashrc.d/colorbg.sh"
fi

if [[ -f "${HOME}/.bashrc.d/gke.sh" ]]; then
  source "${HOME}/.bashrc.d/gke.sh"
fi

if [[ -f "${HOME}/.bashrc.d/powerline-go.sh" ]]; then
  source "${HOME}/.bashrc.d/powerline-go.sh"
fi
