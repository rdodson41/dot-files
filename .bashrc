#!/usr/bin/env bash

export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY="$(tty)"

alias ls="ls -FGhlT"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/local/bin/brew shellenv)"
