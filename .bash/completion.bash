#!/usr/bin/env bash

if which curl > /dev/null; then
  complete -A hostname curl
fi

if type -t __git_complete > /dev/null; then
  __git_complete g __git_main
  __git_complete y __git_main
fi
