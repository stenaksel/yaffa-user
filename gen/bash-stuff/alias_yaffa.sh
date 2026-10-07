# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_yaffa.yaml and re-run YAFFA generator.

# Check that user have added the environment variable YAFFA_USER_FOLDER
_alias_func_req_yaffa_user() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq env "YAFFA_USER_FOLDER" "The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!" "" "" abort || return 1
}
alias req_yaffa_user='_alias_func_req_yaffa_user req_yaffa_user'

# Check that Python is on PATH
_alias_func_req_python() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
}
alias req_python='_alias_func_req_python req_python'

# Check that Gradle is on PATH
_alias_func_req_gradle() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gradlew" "gradlew not on PATH — install Gradle first" "" "" abort || return 1
}
alias req_gradle='_alias_func_req_gradle req_gradle'

# Regenerate YAFFA - run from YAFFA root to regenerate your shell files in <user folder>/gen (default ~/.yaffa/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
_alias_func_yaffa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq env "YAFFA_USER_FOLDER" "The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'yaffa-p' 'Regenerate YAFFA - run from YAFFA root to regenerate your shell files in <user folder>/gen (default ~/.yaffa/gen)
from the project'\''s config/ and your user folder'\''s config/ (For help use: '\''yaffa --help'\'')
' "$@"
}
alias yaffa='_alias_func_yaffa yaffa'
alias regen-yaffa='_alias_func_yaffa regen-yaffa'

# Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
_alias_func_yaffa-p() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq env "YAFFA_USER_FOLDER" "The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "YAFFA-P/src/generator.py" "To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python ./YAFFA-P/src/generator.py generate' 'Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
from the project'\''s config/ and your user folder'\''s config/ (For help use: '\''yaffa --help'\'')
' "$@"
}
alias yaffa-p='_alias_func_yaffa-p yaffa-p'

# Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
_alias_func_yaffa-k() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq env "YAFFA_USER_FOLDER" "The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "YAFFA-K/src/jvmMain/kotlin/yaffa/cli/Generator.kt" "To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'yaffa_k' 'Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
from the project'\''s config/ and your user folder'\''s config/ (For help use: '\''yaffa --help'\'')
' "$@"
}
alias yaffa-k='_alias_func_yaffa-k yaffa-k'
