#!/usr/bin/env bash

export GPG_TTY="$(tty)"
export NVM_DIR="${HOME}/.nvm"

if which brew > /dev/null; then
  BASH_COMPLETION="$(brew --prefix)/etc/bash_completion"
  POWERLINE="$(brew --prefix)/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh"
  Z="$(brew --prefix)/etc/profile.d/z.sh"
else
  BASH_COMPLETION="/usr/share/bash-completion/bash_completion"
  POWERLINE="/usr/local/lib/python3.7/dist-packages/powerline/bindings/bash/powerline.sh"
  Z="${HOME}/.opt/z/z.sh"
fi

if [[ -f "${BASH_COMPLETION}" ]]; then
  source "${BASH_COMPLETION}"
fi

if [[ -f "${POWERLINE}" ]]; then
  source "${POWERLINE}"
fi

if [[ -f "${Z}" ]]; then
  source "${Z}"
fi

if [[ -e "${HOME}/.iterm2_shell_integration.bash" ]]; then
  source "${HOME}/.iterm2_shell_integration.bash"
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

export PATH="${PATH}:${HOME}/.rvm/bin"

if [[ -f "${HOME}/.bashrc.d/aliases" ]]; then
  source "${HOME}/.bashrc.d/aliases"
fi
