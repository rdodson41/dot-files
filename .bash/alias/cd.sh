#!/usr/bin/env bash

if [[ -d "${HOME}/Developer" ]]; then
  eval "$(find "${HOME}/Developer" -mindepth 1 -maxdepth 1 -type d -exec echo alias "\"cd-\$(basename {})\"=\"cd \\\"{}\\\"\"" \;)"
fi
