#!/usr/bin/env bash

if which brew > /dev/null; then
  export COREUTILS_GNUBIN="$(brew --prefix coreutils)/libexec/gnubin"
fi

export GOPATH="${HOME}/Developer/go"

if [[ -f "${HOME}/.bashrc" ]]; then
	source "${HOME}/.bashrc"
fi
