#!/usr/bin/env bash

export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY="$(tty)"

alias ls="ls -FGhlT"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/local/bin/brew shellenv)"

# Added by `rbenv init` on Sun Dec  8 20:49:37 CST 2024
eval "$(rbenv init - --no-rehash bash)"
