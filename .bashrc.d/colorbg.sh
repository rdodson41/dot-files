#!/usr/bin/env bash

function colorbg-read {
  printf '\e]11;?\e\' > /dev/tty
  read -rs -n 25
  cut -c 6-23 <<< "${REPLY}"
}

function colorbg-luma {
  local PATTERN='^rgb:([0-9a-f]{4})/([0-9a-f]{4})/([0-9a-f]{4})$'

  if [[ "$(colorbg-read)" =~ ${PATTERN} ]]; then
    local R="$((16#"${BASH_REMATCH[1]}"))"
    local G="$((16#"${BASH_REMATCH[2]}"))"
    local B="$((16#"${BASH_REMATCH[3]}"))"
  fi

  bc <<< "scale=4; (0.2126 * ${R:-0} + 0.7152 * ${G:-0} + 0.0722 * ${B:-0}) / 65536"
}

function colorbg-dark {
  bc <<< "scale=4; $(colorbg-luma) < 0.5"
}

function colorbg {
  if (( "$(colorbg-dark)" )); then
    echo 'dark'
  else
    echo 'light'
  fi
}
