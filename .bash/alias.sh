#!/usr/bin/env bash

alias -- -="cd -"
alias -- ..="cd .."

if [[ -n "${COREUTILS_GNUBIN}" && -d "${COREUTILS_GNUBIN}" ]] && which "${COREUTILS_GNUBIN}/ls" > /dev/null; then
  alias ls="\"${COREUTILS_GNUBIN}/ls\" --format=long --human-readable --time-style=long-iso --classify --color=auto"
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

alias env-vim="env | grep ^VIM | sort"
alias env-ssh="env | grep ^SSH | sort"
alias env-gpg="env | grep ^GPG | sort"
alias env-gem="env | grep ^GEM | sort"
alias env-rvm="env | grep ^rvm | sort"
alias env-nvm="env | grep ^NVM | sort"

alias g="git"
alias g-="git checkout -"

alias y="yadm"
alias y-="yadm checkout -"

alias b="bundle"
alias bi="bundle install"
alias bu="bundle update"
alias bp="bundle package"
alias be="bundle exec"

if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

alias x="exit"
