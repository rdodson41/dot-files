#!/usr/bin/env bash

export PATH="${PATH}:${HOME}/Library/Python/3.9/bin"
export BASH_SILENCE_DEPRECATION_WARNING=1
export GPG_TTY="$(tty)"
export NVM_DIR="${HOME}/.nvm"

eval "$(/opt/homebrew/bin/brew shellenv)"

alias -- -="cd -"
alias -- ..="cd .."
alias ls="ls -FGhlT"
alias la="ls -A"
alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"
alias rgrep="rgrep --color"
alias zgrep="zgrep --color"
alias zegrep="zegrep --color"
alias zfgrep="zfgrep --color"
alias be="bundle exec"
alias f="fuck"
alias g="git"
alias k="kubectl"
alias y="yadm"

eval "$(thefuck --alias)"

if which brew > /dev/null && [[ -f "${HOME}/Library/Python/3.9/lib/python/site-packages/powerline/bindings/bash/powerline.sh" ]]; then
  source "${HOME}/Library/Python/3.9/lib/python/site-packages/powerline/bindings/bash/powerline.sh"
fi

if which brew > /dev/null && [[ -f "$(brew --prefix)/etc/bash_completion" ]]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

if which brew > /dev/null && [[ -f "$(brew --prefix)/etc/profile.d/z.sh" ]]; then
  source "$(brew --prefix)/etc/profile.d/z.sh"
fi

# The next line updates PATH for the Google Cloud SDK.
if which brew > /dev/null && [[ -f "$(brew --prefix)/opt/google-cloud-sdk/path.bash.inc" ]]; then
  source "$(brew --prefix)/opt/google-cloud-sdk/path.bash.inc"
fi

# The next line enables shell command completion for gcloud.
if which brew > /dev/null && [[ -f "$(brew --prefix)/opt/google-cloud-sdk/completion.bash.inc" ]]; then
  source "$(brew --prefix)/opt/google-cloud-sdk/completion.bash.inc"
fi

if [[ -f "${HOME}/.bashrc.d/gke.sh" ]]; then
  source "${HOME}/.bashrc.d/gke.sh"
fi

if [[ -f "${HOME}/.fzf.bash" ]]; then
  source "${HOME}/.fzf.bash"
fi

if [[ -s "${NVM_DIR}/nvm.sh" ]]; then
  source "${NVM_DIR}/nvm.sh"
fi

if [[ -s "$NVM_DIR/bash_completion" ]]; then
  source "$NVM_DIR/bash_completion"
fi
