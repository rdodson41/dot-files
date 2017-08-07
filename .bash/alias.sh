#!/usr/bin/env bash

alias -- -="cd -"
alias -- ..="cd .."

if [[ -d "${GNU_BIN}" ]]; then
  alias ls="\"${GNU_BIN}/ls\" --format=long --human-readable --time-style=long-iso --classify --color=auto"
  alias la="ls --almost-all"
elif ls --version &> /dev/null; then
  alias ls="ls --format=long --human-readable --time-style=long-iso --classify --color=auto"
  alias la="ls --almost-all"
else
  alias ls="ls -TFGlh"
  alias la="ls -A"
fi

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias zgrep="zgrep --color=auto"
alias zegrep="zegrep --color=auto"
alias zfgrep="zfgrep --color=auto"

alias env-ssh="env | grep ^SSH | sort"
alias env-gpg="env | grep ^GPG | sort"
alias env-gem="env | grep ^GEM | sort"
alias env-rvm="env | grep ^rvm | sort"
alias env-nvm="env | grep ^NVM | sort"
alias env-sdc="env | grep ^SDC | sort"
alias env-triton="env | grep ^TRITON | sort"
alias env-docker="env | grep ^DOCKER | sort"

alias g="git"
alias g-="git checkout -"

alias b="bundle"
alias bi="bundle install"
alias bu="bundle update"
alias be="bundle exec"

eval "$(thefuck --alias 2> /dev/null)"

alias x="exit"
