# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_npm.yaml and re-run YAFFA generator.

# Check that npm is on PATH
_alias_func_req_omz_npm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
}
alias req_omz_npm='_alias_func_req_omz_npm req_omz_npm'

# Check that package.json exists
_alias_func_req_omz_package_json() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
}
alias req_omz_package_json='_alias_func_req_omz_package_json req_omz_package_json'

# Install packages globally (e.g. 'npmg typescript')
_alias_func_npmg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm i -g' 'Install packages globally (e.g. '\''npmg typescript'\'')' "$@"
}
alias npmg='_alias_func_npmg npmg'

# Run the project's start script
_alias_func_npmst() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm start' 'Run the project'\''s start script' "$@"
}
alias npmst='_alias_func_npmst npmst'

# Run the project's tests
_alias_func_npmt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm test' 'Run the project'\''s tests' "$@"
}
alias npmt='_alias_func_npmt npmt'

# Run the project's dev script
_alias_func_npmrd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm run dev' 'Run the project'\''s dev script' "$@"
}
alias npmrd='_alias_func_npmrd npmrd'

# Run the project's build script
_alias_func_npmrb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm run build' 'Run the project'\''s build script' "$@"
}
alias npmrb='_alias_func_npmrb npmrb'

# Show information about a package from the registry (e.g. 'npmi react')
_alias_func_npmi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm info' 'Show information about a package from the registry (e.g. '\''npmi react'\'')' "$@"
}
alias npmi='_alias_func_npmi npmi'
