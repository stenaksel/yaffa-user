# shellcheck shell=bash
# YAFFA/config/bash/incl.sh — a library to source, not a script to run.
# Configure in ~/.bashrc before sourcing this file:
#
#   export YAFFA_USER_FOLDER="$HOME/.yaffa"   # your user folder
#   readonly YAFFA_INCL='git, kt, mvn, my'   # optional; omit to load all groups
#   source "$YAFFA_USER_FOLDER/gen/bash-stuff/func/incl.sh"

# Private helpers get a leading underscore plus the prefix: "_Yaffa" #TODO ? "_YaffaFunc" / "_yfunc"
#
# Everything here runs inside the caller's shell, so this file never uses
# 'exit', 'set -e'/'set -u', a top-level 'cd' or changes IFS, and unsets its
# own _bs_* temporaries at the end. It is safe to source again (e.g. after
# editing config) and prints nothing in a non-interactive shell.

# Bash 4.2+ only ([[ -v ]], local -A): stop here in zsh, sh (bash in POSIX
# mode rejects names like alias-match) or an older bash (e.g.
# macOS' /bin/bash 3.2) rather than fail half-way through loading.
if [ -z "${BASH_VERSION:-}" ] || shopt -oq posix || ((BASH_VERSINFO[0] < 4 || (BASH_VERSINFO[0] == 4 && BASH_VERSINFO[1] < 2))); then
  printf 'YAFFA: incl.sh needs bash 4.2 or newer (not sh) - not loaded.\n' >&2
  return 1
fi
# Run as a script ('bash incl.sh') it would define everything in a child shell
# that exits right away — say so instead of silently doing nothing. ('exit' is
# fine here: there's no caller's shell to close.)
if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  printf 'YAFFA: %s must be sourced, not run: source "%s"\n' "${0##*/}" "$0" >&2
  exit 1
fi

# @description Print a loading message to stdout — only in an interactive shell, so a non-interactive one (scp, rsync, 'bash -c', CI) gets no output from sourcing YAFFA
# @param format string printf format
# @param args string printf arguments
function _YaffaInfo() {
  [[ $- == *i* ]] || return 0
  # shellcheck disable=SC2059 # the format is the caller's
  printf "$@"
}

_bs_func="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
_bs_root="${_bs_func%/*}" # the generated folder (bash-stuff/) this func/ is in
# The user folder whose config/func/bash/ functions are sourced last (below) —
# the same default as the generators. A leading '~' is expanded here, since a
# quoted YAFFA_USER_FOLDER='~/...' in ~/.bashrc isn't tilde-expanded by bash.
_bs_user="${YAFFA_USER_FOLDER:-$HOME/.yaffa}"
_bs_user="${_bs_user/#\~/$HOME}"

# Abbreviate $HOME as '~'. The tilde must be escaped: an unescaped one is
# tilde-expanded back into $HOME before the substitution, so nothing changes.
_YaffaInfo 'YAFFA included and initialized by "%s":\n' "${BASH_SOURCE[0]/#"$HOME"/\~}"
_YaffaInfo '\n  YAFFA_INCL = "%s"\n  YAFFA_USER_FOLDER = "%s"\n\t _bs_root = "%s"\n\n' \
  "$YAFFA_INCL" "${_bs_user/#"$HOME"/\~}" "${_bs_root/#"$HOME"/\~}"

# Guarded: incl.sh can be re-sourced within the same shell process (e.g. bats
# runs every @test in one file's process sequentially), and a plain 'readonly'
# would abort that re-source with "readonly variable".
[[ -v CYAN_   ]] || readonly CYAN_=$'\e[1;38;5;44m' # bold + cyan
[[ -v YELLOW_ ]] || readonly YELLOW_=$'\e[1;33m' # bold + yellow
[[ -v RESET_  ]] || readonly RESET_=$'\e[0m'

# @description Print the value of one key=value line of a generator.properties file ('#' starts a comment line; a "quoted" value is taken exactly as written between the quotes), or a default
# @param file string The properties file (a missing file gives the default)
# @param key string The key to look up, e.g. output.step
# @param default string The value when the file has no such key
function _YaffaProperty() {
  local _file="$1" _key="$2" _value="$3" _line _k
  if [[ -f "$_file" ]]; then
    while IFS= read -r _line || [[ -n "$_line" ]]; do
      _line="${_line%$'\r'}"
      [[ "$_line" =~ ^[[:space:]]*(#|$) || "$_line" != *=* ]] && continue
      _k="${_line%%=*}"
      [[ "${_k//[[:space:]]/}" == "$_key" ]] || continue
      _value="${_line#*=}"
      _value="${_value#"${_value%%[![:space:]]*}"}"
      _value="${_value%"${_value##*[![:space:]]}"}"
      [[ "$_value" == \"*\" && ${#_value} -ge 2 ]] && _value="${_value:1:${#_value}-2}"
    done <"$_file"
  fi
  printf '%s' "$_value"
}

# @description Set a variable to a template with each <placeholder> replaced by its value, in one pass (a value's own text is never replaced again; an unknown placeholder stays as written)
# @param var string The variable to set
# @param template string The template, e.g. '  <name> => <command>'
# @param pairs string Placeholder names and values, e.g. name hi command 'echo hi'
function _YaffaFormat() {
  local _yf_var="$1" _yf_rest="$2" _yf_done="" _yf_re='<([A-Za-z]+)>'
  shift 2
  local -A _yf_values=()
  while (($# >= 2)); do
    _yf_values["$1"]="$2"
    shift 2
  done
  while [[ "$_yf_rest" =~ $_yf_re ]]; do
    _yf_done+="${_yf_rest%%"${BASH_REMATCH[0]}"*}"
    if [[ -v "_yf_values[${BASH_REMATCH[1]}]" ]]; then
      _yf_done+="${_yf_values[${BASH_REMATCH[1]}]}"
    else
      _yf_done+="${BASH_REMATCH[0]}"
    fi
    _yf_rest="${_yf_rest#*"${BASH_REMATCH[0]}"}"
  done
  printf -v "$_yf_var" '%s' "$_yf_done$_yf_rest"
}

# Output layout (SPEC.md §4), from generator.properties: next to this file in
# the generated func/, or in config/ when sourced from config/func/bash/ itself.
# One template per kind of line printed while an alias runs (_YaffaCall,
# _YaffaReq); a missing key keeps the default layout.
_bs_props="${_bs_func}/generator.properties"
[[ -f "$_bs_props" ]] || _bs_props="${_bs_func%/*/*}/generator.properties"
_YAFFA_FMT_DESCRIPTION="$(_YaffaProperty "$_bs_props" output.description '  <description>')"
_YAFFA_FMT_STEP="$(_YaffaProperty "$_bs_props" output.step '  <name> => <command>')"
_YAFFA_FMT_MESSAGE="$(_YaffaProperty "$_bs_props" output.message '  [<level>] <message>')"
# The order of output.description and output.step in the file is the order
# they're shown (a key the file doesn't have comes last): 1 shows the steps first.
_YAFFA_STEPS_FIRST=0
if [[ -f "$_bs_props" ]]; then
  while IFS= read -r _bs_line || [[ -n "$_bs_line" ]]; do
    [[ "$_bs_line" == *=* ]] || continue
    _bs_line="${_bs_line%%=*}"
    _bs_line="${_bs_line//[[:space:]]/}"
    [[ "$_bs_line" == output.description ]] && break
    [[ "$_bs_line" == output.step ]] && _YAFFA_STEPS_FIRST=1 && break
  done <"$_bs_props"
fi

# @description Print one requirement or runtime message to stderr, laid out by output.message
# @param level string fix, warn or error
# @param message string What to report
function _YaffaMessage() {
  local _line
  _YaffaFormat _line "$_YAFFA_FMT_MESSAGE" level "$1" message "$2"
  printf '%s\n' "$_line" >&2
}

# @description Print an optional description (yellow), followed by a "<name> => <cmd>" diagnostic (cmd in cyan) to stderr, then eval cmd, forwarding any extra args
# @param name string Alias name, shown in the diagnostic line
# @param cmd string Shell command to eval
# @param desc string Optional description, printed in yellow above the diagnostic line (each line of a multi-line desc gets its own line)
function _YaffaCall() {
  local name="$1" cmd="$2" desc="${3:-}"
  # 'desc' and any forwarded arguments are optional, so guard the shift: with
  # fewer than 3 positionals 'shift 3' shifts nothing and name/cmd would leak
  # into the argument list forwarded below.
  (($# >= 3)) && shift 3 || shift "$#"
  # When cmd starts with another YAFFA alias (e.g. meps => mep), this call is
  # one step of a chain: remember its "name => cmd" line and let the last
  # alias of the chain print every step line, one per line — instead of each
  # alias printing its own block. The description shown is the first alias's,
  # the one the user typed (or the last alias's, when the first has none).
  # All of it goes to stderr, so a redirect in the command (meps' '> temp/…')
  # doesn't capture it, and neither does piping the alias's output.
  local _first="${cmd%%[[:space:]]*}" _definition
  _definition="$(alias -- "$_first" 2>/dev/null)"
  if [[ "$_definition" == *"='_alias_func_"* || "$_definition" == *"='_YaffaCall "* ]]; then
    ((${#_YAFFA_STEPS[@]})) || _YAFFA_DESC="$desc"
    local _step
    _YaffaFormat _step "$_YAFFA_FMT_STEP" name "$name" command "$CYAN_$cmd$RESET_"
    _YAFFA_STEPS+=("$_step")
  else
    ((${#_YAFFA_STEPS[@]})) && [[ -n "$_YAFFA_DESC" ]] && desc="$_YAFFA_DESC"
    local -a _desc_lines=() _steps=("${_YAFFA_STEPS[@]}")
    if [[ -n "$desc" ]]; then
      local _desc_line _line
      # Strip a single trailing newline (YAML '|' block scalars keep one) so it
      # doesn't read as a spurious blank last line below.
      while IFS= read -r _desc_line; do
        _YaffaFormat _line "$_YAFFA_FMT_DESCRIPTION" description "$YELLOW_$_desc_line$RESET_"
        _desc_lines+=("$_line")
      done <<<"${desc%$'\n'}"
    fi
    _YAFFA_STEPS=() _YAFFA_DESC=""
    local _step
    _YaffaFormat _step "$_YAFFA_FMT_STEP" name "$name" command "$CYAN_$cmd$RESET_"
    _steps+=("$_step")
    # Description and steps in the order generator.properties lists them.
    if ((_YAFFA_STEPS_FIRST)); then
      printf '%s\n' "${_steps[@]}" "${_desc_lines[@]}" >&2
    else
      printf '%s\n' "${_desc_lines[@]}" "${_steps[@]}" >&2
    fi
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
  _YAFFA_STEPS=() _YAFFA_DESC=""
  # 127 is bash's dedicated "command not found" exit status — distinct from
  # a command that ran and merely failed on its own. This is a safety net
  # for aliases with no explicit `requires:` guard for cmd (e.g. a
  # typo, or a function that isn't actually sourced) —
  # not a replacement for `requires:`, which still catches this before ever
  # attempting the call.
  if ((rc == 127)); then
    _YaffaMessage error "The specified command '$cmd' is not available! (Maybe NOT implemented if it's YAFFA sourced command!)"
  fi
  return $rc
}

# Usage: _YaffaReqTest <type> <target>
# @description Check a single precondition: return 0 if met, 1 if not, 2 if the requirement type is malformed
# @param type string Requirement type: file | dir | cmd | env | expr
# @param target string What to check: a file or dir path, a command name, an environment variable name, or an expression
function _YaffaReqTest() {
  case "$1" in
  file) [[ -f "$2" ]] ;;
  dir) [[ -d "$2" ]] ;;
  cmd) command -v "$2" &>/dev/null ;;
  env) [[ -n "${!2}" ]] ;;
  expr) eval "$2" ;;
  *)
  #    printf '  [error] unknown requirement type: %s\n' "$1" >&2
    _YaffaMessage error "unknown requirement type: '$1'"
    printf "Must be one of: file, dir, cmd, env, expr\n" >&2
    return 2
    ;;
  esac
}

# @description Succeed if one of the arguments is --help: an alias called for its help skips its requirement checks
# @param args string The alias's arguments
function _YaffaHelpAsked() {
  local arg
  for arg in "$@"; do
    [[ "$arg" == "--help" ]] && return 0
  done
  return 1
}

# Usage: _YaffaReq <type> <target> <fail_msg> [fix_run] [fix_msg] [fix_on_fail]
# @description Evaluate a precondition and apply an optional fix, reporting the outcome
# @param type string Requirement type: file | dir | cmd | env | expr (see _YaffaReqTest)
# @param target string What to check (see _YaffaReqTest)
# @param fail_msg string Error text shown when the requirement is unmet
# @param fix_run string Optional command run to fix an unmet requirement before giving up
# @param fix_msg string Optional text shown while running fix_run (default: "Fixing: <target>")
# @param fix_on_fail string What to do if the fix doesn't help: abort (default) or warn and continue
function _YaffaReq() {
  local type="$1" target="$2" message="$3"
  local fix_run="${4:-}" fix_msg="${5:-}" fix_on_fail="${6:-abort}"

  _YaffaReqTest "$type" "$target"
  local rc=$?
  ((rc == 0)) && return 0
  ((rc == 2)) && return 2 # malformed requirement: never satisfiable, never optional

  if [[ -n "$fix_run" ]]; then
    _YaffaMessage fix "${fix_msg:-Fixing: $target}"
    if eval "$fix_run" && _YaffaReqTest "$type" "$target"; then
      return 0
    fi
    if [[ "$fix_on_fail" == "warn" ]]; then
      _YaffaMessage warn "$message"
      return 0
    fi
    _YaffaMessage error "$message"
    return 1
  fi

  _YaffaMessage error "$message"
  return 1
}

# @description List defined aliases whose name/target match a pattern (via `alias | grep`), optionally only the ones YAFFA generated
# @param pattern string Pattern to grep for; whichever argument isn't a recognized option; optional with -y or -g
# @param -             Invert the match (exclude aliases matching pattern); also: --invert, -inv
# @param -n            Include line numbers in the output
# @param -y            Only the aliases YAFFA generated (calling _alias_func_<name> or _YaffaCall); also: --yaffa
# @param -g string Only the aliases of this YAFFA group, i.e. from alias_<group>.yaml (implies -y); may be repeated; also: --group
# @param --            End of options, so a pattern starting with '-' can still be passed
function alias-match() {
  local func_name="${FUNCNAME[0]}"
  if (($# == 0)); then
    printf '  [error] %s: needs at least a pattern to match -> exiting\n' "$func_name" >&2
    return 1
  fi

  # This function's own file is <bash-stuff>/func/incl.sh, next to the alias_<group>.sh files.
  local bash_stuff="${BASH_SOURCE[0]%/*}/.."
  local -a grep_opts=() group_files=()
  local pattern="" yaffa_only=""

  while (($# > 0)); do
    case "$1" in
    - | --invert | -inv) grep_opts+=(--invert-match) ;;
    -n) grep_opts+=(--line-number) ;;
    -y | --yaffa) yaffa_only=1 ;;
    -g | --group)
      if (($# < 2)); then
        printf '  [error] %s: %s needs a group name -> exiting\n' "$func_name" "$1" >&2
        return 1
      fi
      if [[ ! -f "${bash_stuff}/alias_$2.sh" ]]; then
        printf "  [error] %s: no YAFFA group '%s' (no alias_%s.sh) -> exiting\n" "$func_name" "$2" "$2" >&2
        return 1
      fi
      group_files+=("${bash_stuff}/alias_$2.sh")
      yaffa_only=1
      shift
      ;;
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

  if [[ -z "$pattern" && -z "$yaffa_only" ]]; then
    printf '  [error] %s: no pattern supplied -> exiting\n' "$func_name" >&2
    return 1
  fi

  local listing
  listing="$(alias)"
  if [[ -n "$yaffa_only" ]]; then
    # A YAFFA alias calls its wrapper function or, a simple one, _YaffaCall
    # directly (SPEC.md §3.2).
    listing="$(grep -E -- "^alias [^=]+='(_alias_func_|_YaffaCall )" <<<"$listing")" || return
  fi
  if ((${#group_files[@]} > 0)); then
    # A simple alias carries no trace of its file in the shell, so take the
    # group's alias names from its generated alias_<group>.sh.
    local -A in_group=()
    local name line in_listing=""
    while IFS= read -r name; do
      in_group["$name"]=1
    done < <(sed -nE 's/^alias ([^=]+)=.*/\1/p' "${group_files[@]}")
    while IFS= read -r line; do
      name="${line#alias }"
      name="${name%%=*}"
      [[ -n "${in_group[$name]:-}" ]] && in_listing+="${line}"$'\n'
    done <<<"$listing"
    [[ -n "$in_listing" ]] || return 1
    listing="${in_listing%$'\n'}"
  fi

  # An empty pattern (allowed with -y/-g) matches every line.
  grep "${grep_opts[@]}" -- "$pattern" <<<"$listing"
}


if [[ -n "${YAFFA_INCL:-}" ]]; then
  _YaffaInfo '(YAFFA in "incl.sh"!) YAFFA_INCL => %s (Loading wanted aliases!)\n' "$YAFFA_INCL"
  IFS=',' read -ra _bs_groups <<<"$YAFFA_INCL"
  for _bs_g in "${_bs_groups[@]}"; do
    _bs_g="${_bs_g// /}"
    [[ -z "$_bs_g" ]] && continue
    _bs_f="${_bs_root}/alias_${_bs_g}.sh"
    _YaffaInfo '(YAFFA in "incl.sh"!) => %s\n' "${_bs_f/#"$HOME"/\~}"
    if [[ -f "$_bs_f" ]]; then
      source "$_bs_f"
    else
      printf '  [warn] no such alias group: %s\n' "$_bs_g" >&2
    fi
  done
else
  _YaffaInfo '\nFound no YAFFA_INCL variable! Will load all available aliases! (YAFFA info from "incl.sh"!)\n'
  for _bs_f in "${_bs_root}"/alias_*.sh; do
    _YaffaInfo ' => %s\n' "${_bs_f/#"$HOME"/\~}"
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

unset _bs_func _bs_root _bs_user _bs_groups _bs_g _bs_f _bs_props _bs_line
