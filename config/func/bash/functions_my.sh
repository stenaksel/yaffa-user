#!/bin/bash
# BASH-STUFF functions — edit this file directly, then run: bafs reload

# @description A function usable for showing pretty-prints output from a alias command,by piping into this command (alias | _show_pretty)
function _show_pretty() {
  # Split "alias name='value'" on the first '=' only; the value can hold spaces and '='
  awk '{
    sub(/^alias /, "")
    i = index($0, "=")
    val = substr($0, i + 1)
    gsub(/^'\''|'\''$/, "", val)
    printf "%-20s %s\n", substr($0, 1, i - 1), val
  }'
}

# @description Print a greeting message
# @param names string One or more names to greet

function greet_person() { # example function for alias "greet"
  local joined
  joined="$(printf '%s, ' "$@")"
  joined="${joined%, }"
  echo "Hello_${joined:+, $joined}!"
}

# @description Print a greeting message
# @param names string One or more names to greet

function greet_yaffa() { # example function
  echo "Hello YAFFA!"
}

