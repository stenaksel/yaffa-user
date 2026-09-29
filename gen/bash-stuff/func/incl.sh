#!/bin/bash
# YAFFA/config/bash/incl.sh
# Configure in ~/.bashrc before sourcing this file:
#
#   readonly YAFFA_GEN="$HOME/.yaffa/gen/bash-stuff"   # <user folder>/gen/bash-stuff
#   readonly YAFFA_INCL='git, kt, mvn, my'   # optional; omit to load all groups
#   source "${YAFFA_GEN}/func/incl.sh"

_bs_func="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
_bs_root="${YAFFA_GEN:-${_bs_func%/*}}" # No YAFFA_GEN strips the last path segment from _bs_func
# The user folder whose config/func/bash/ functions are sourced last (below) —
# the same default as the generators. A leading '~' is expanded here, since a
# quoted YAFFA_USER_FOLDER='~/...' in ~/.bashrc isn't tilde-expanded by bash.
_bs_user="${YAFFA_USER_FOLDER:-$HOME/.yaffa}"
_bs_user="${_bs_user/#\~/$HOME}"

# Abbreviate $HOME as '~'. The tilde must be escaped: an unescaped one is
# tilde-expanded back into $HOME before the substitution, so nothing changes.
printf 'YAFFA included and initialized by "%s":\n' "${BASH_SOURCE[0]/#"$HOME"/\~}"
printf '\n  YAFFA_GEN = "%s"\n  YAFFA_INCL = "%s"\n  YAFFA_USER_FOLDER = "%s"\n\t _bs_root = "%s"\n\n' \
  "${YAFFA_GEN/#"$HOME"/\~}" "$YAFFA_INCL" "${_bs_user/#"$HOME"/\~}" "${_bs_root/#"$HOME"/\~}"

# Guarded: incl.sh can be re-sourced within the same shell process (e.g. bats
# runs every @test in one file's process sequentially), and a plain 'readonly'
# would abort that re-source with "readonly variable".
[[ -v CYAN_   ]] || readonly CYAN_=$'\e[1;38;5;44m' # bold + cyan
[[ -v YELLOW_ ]] || readonly YELLOW_=$'\e[1;33m' # bold + yellow
[[ -v RESET_  ]] || readonly RESET_=$'\e[0m'

# @description Print an optional description (yellow), followed by a "<name> => <cmd>" diagnostic (cmd in cyan), then eval cmd, forwarding any extra args
# @param name string Alias name, shown in the diagnostic line
# @param cmd string Shell command to eval
# @param desc string Optional description, printed in yellow above the diagnostic line (each line of a multi-line desc gets its own line)
_YaffaCall() {
  local name="$1" cmd="$2" desc="${3:-}"
  # 'desc' and any forwarded arguments are optional, so guard the shift: with
  # fewer than 3 positionals 'shift 3' shifts nothing and name/cmd would leak
  # into the argument list forwarded below.
  (($# >= 3)) && shift 3 || shift "$#"
  # When cmd starts with another YAFFA alias (e.g. regen-yaffa => yaffa-p),
  # this call is one step of a chain: remember its "name => cmd" line and let
  # the last alias of the chain print its own description followed by every
  # step line, one per line — instead of each alias printing its own block.
  local _first="${cmd%%[[:space:]]*}" _definition
  _definition="$(alias -- "$_first" 2>/dev/null)"
  if [[ "$_definition" == *"='_alias_"* || "$_definition" == *"='_YaffaCall "* ]]; then
    _YAFFA_STEPS+=("$(printf '%s => %s%s%s' "$name" "$CYAN_" "$cmd" "$RESET_")")
  else
    if [[ -n "$desc" ]]; then
      local _desc_line
      # Strip a single trailing newline (YAML '|' block scalars keep one) so it
      # doesn't read as a spurious blank last line below.
      while IFS= read -r _desc_line; do
        printf '%s%s%s\n' "$YELLOW_" "$_desc_line" "$RESET_"
      done <<<"${desc%$'\n'}"
    fi
    ((${#_YAFFA_STEPS[@]})) && printf '%s\n' "${_YAFFA_STEPS[@]}"
    _YAFFA_STEPS=()
    printf '%s => %s%s%s\n' "$name" "$CYAN_" "$cmd" "$RESET_"
  fi
  # Appending '"$@"' unconditionally is a *parse-time* syntax error for any
  # compound command (while/for/if) ending in a redirection — e.g.
  # `while ...; done < <(...) "$@"` fails to parse even when $@ is empty,
  # since a compound command's redirection can't be followed by another
  # word. Only append it when there's actually something to forward.
  if (($# > 0)); then
    eval "$cmd" '"$@"'
  else
    eval "$cmd"
  fi
  local rc=$?
  # A chain that stopped early (e.g. an inner requirement failed before its
  # _YaffaCall) must not leak its remembered steps into the next call.
  _YAFFA_STEPS=()
  # 127 is bash's dedicated "command not found" exit status — distinct from
  # a command that ran and merely failed on its own. This is a safety net
  # for aliases with no explicit `requires:` guard for cmd (e.g. a
  # typo, or a function that isn't actually sourced) —
  # not a replacement for `requires:`, which still catches this before ever
  # attempting the call.
  if ((rc == 127)); then
    printf "  [error] The specified command '%s' is not available! (Maybe NOT implemented if it's YAFFA sourced command!)\n" "$cmd" >&2
  fi
  return $rc
}

# Usage: _YaffaReqTest <type> <target>
# @description Check a single precondition: return 0 if met, 1 if not, 2 if the requirement type is malformed
# @param type string Requirement type: file | dir | cmd | env | expr
# @param target string What to check: a file or dir path, a command name, an environment variable name, or an expression
_YaffaReqTest() {
  case "$1" in
  file) [[ -f "$2" ]] ;;
  dir) [[ -d "$2" ]] ;;
  cmd) command -v "$2" &>/dev/null ;;
  env) [[ -n "${!2}" ]] ;;
  expr) eval "$2" ;;
  *)
  #    printf '  [error] unknown requirement type: %s\n' "$1" >&2
    printf "  [error] unknown requirement type: '%s'\n" "$1" >&2
    printf "Must be one of: file, dir, cmd, env, expr\n" >&2
    return 2
    ;;
  esac
}

# Usage: _YaffaReq <type> <target> <fail_msg> [fix_run] [fix_msg] [fix_on_fail]
# @description Evaluate a precondition and apply an optional fix, reporting the outcome
# @param type string Requirement type: file | dir | cmd | env | expr (see _YaffaReqTest)
# @param target string What to check (see _YaffaReqTest)
# @param fail_msg string Error text shown when the requirement is unmet
# @param fix_run string Optional command run to fix an unmet requirement before giving up
# @param fix_msg string Optional text shown while running fix_run (default: "Fixing: <target>")
# @param fix_on_fail string What to do if the fix doesn't help: abort (default) or warn and continue
_YaffaReq() {
  local type="$1" target="$2" message="$3"
  local fix_run="${4:-}" fix_msg="${5:-}" fix_on_fail="${6:-abort}"

  _YaffaReqTest "$type" "$target"
  local rc=$?
  ((rc == 0)) && return 0
  ((rc == 2)) && return 2 # malformed requirement: never satisfiable, never optional

  if [[ -n "$fix_run" ]]; then
    printf '  [fix] %s\n' "${fix_msg:-Fixing: $target}" >&2
    if eval "$fix_run" && _YaffaReqTest "$type" "$target"; then
      return 0
    fi
    if [[ "$fix_on_fail" == "warn" ]]; then
      printf '  [warn] %s\n' "$message" >&2
      return 0
    fi
    printf '  [error] %s\n' "$message" >&2
    return 1
  fi

  printf '  [error] %s\n' "$message" >&2
  return 1
}

# @description List defined aliases whose name/target match a pattern (via `alias | grep`)
# @param pattern string Pattern to grep for; whichever argument isn't a recognized option
# @param -             Invert the match (exclude aliases matching pattern); also: --invert, -inv
# @param -n            Include line numbers in the output
# @param --            End of options, so a pattern starting with '-' can still be passed
function alias-match() {
  local func_name="${FUNCNAME[0]}"
  if (($# == 0)); then
    printf '  [error] %s: needs at least a pattern to match -> exiting\n' "$func_name" >&2
    return 1
  fi

  local -a grep_opts=()
  local pattern=""

  while (($# > 0)); do
    case "$1" in
    - | --invert | -inv) grep_opts+=(--invert-match) ;;
    -n) grep_opts+=(--line-number) ;;
    --)
      shift
      break
      ;;
    *) pattern="$1" ;;
    esac
    shift
  done
  # A pattern after '--' takes precedence over one seen during option parsing
  (($# > 0)) && pattern="$1"

  if [[ -z "$pattern" ]]; then
    printf '  [error] %s: no pattern supplied -> exiting\n' "$func_name" >&2
    return 1
  fi

  alias | grep "${grep_opts[@]}" -- "$pattern"
}


if [[ -n "${YAFFA_INCL:-}" ]]; then
  printf '(YAFFA in "incl.sh"!) YAFFA_INCL => %s (Loading wanted aliases!)\n' "$YAFFA_INCL"
  IFS=',' read -ra _bs_groups <<<"$YAFFA_INCL"
  for _bs_g in "${_bs_groups[@]}"; do
    _bs_g="${_bs_g// /}"
    [[ -z "$_bs_g" ]] && continue
    _bs_f="${_bs_root}/alias_${_bs_g}.sh"
    printf '(YAFFA in "incl.sh"!) => %s\n' "${_bs_f/#"$HOME"/\~}"
    if [[ -f "$_bs_f" ]]; then
      source "$_bs_f"
    else
      printf '  [warn] no such alias group: %s\n' "$_bs_g" >&2
    fi
  done
else
  printf '\nFound no YAFFA_INCL variable! Will loading all available aliases! (YAFFA info from "incl.sh"!)\n'
  for _bs_f in "${_bs_root}"/alias_*.sh; do
    printf ' => %s\n' "${_bs_f/#"$HOME"/\~}"
    if [[ -f "$_bs_f" ]]; then
      source "$_bs_f"
    else
      printf '  [warn] no such alias file: %s\n' "$_bs_f" >&2
    fi
  done
fi

for _bs_f in "${_bs_func}"/*.sh; do
  [[ "$_bs_f" != "${BASH_SOURCE[0]}" ]] && [[ -f "$_bs_f" ]] && source "$_bs_f"
done
# The user's own functions, straight from their user folder's config/func/bash/
# (not generated), are sourced last, so a function they redefine wins over the
# project's. No such folder loads nothing.
for _bs_f in "${_bs_user}/config/func/bash"/*.sh; do
  [[ -f "$_bs_f" ]] && source "$_bs_f"
done

unset _bs_func _bs_root _bs_user _bs_groups _bs_g _bs_f
