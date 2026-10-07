# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_npm.yaml and re-run YAFFA generator.

# Check that npm is on PATH
_alias_func_req_npm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
}
alias req_npm='_alias_func_req_npm req_npm'

# Check that package.json exists
_alias_func_req_package_json() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
}
alias req_package_json='_alias_func_req_package_json req_package_json'

# "Clean Install" - Install exactly the dependencies in package-lock.json, removing node_modules first
_alias_func_nci() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm ci' '"Clean Install" - Install exactly the dependencies in package-lock.json, removing node_modules first' "$@"
}
alias nci='_alias_func_nci nci'

# Package the project into a tarball (.tgz) without publishing it
_alias_func_ncp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm pack' 'Package the project into a tarball (.tgz) without publishing it' "$@"
}
alias ncp='_alias_func_ncp ncp'

# npm Check Updates - list installed packages with newer versions available
_alias_func_ncu-d() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm outdated' 'npm Check Updates - list installed packages with newer versions available' "$@"
}
alias ncu-d='_alias_func_ncu-d ncu-d'
alias npmo='_alias_func_ncu-d npmo'
alias nddu='_alias_func_ncu-d nddu'

# Install packages and save them to dependencies in package.json
_alias_func_npmis() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm i -S' 'Install packages and save them to dependencies in package.json' "$@"
}
alias npmis='_alias_func_npmis npmis'

# Install packages and save them to devDependencies in package.json
_alias_func_npmid() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm i -D' 'Install packages and save them to devDependencies in package.json' "$@"
}
alias npmid='_alias_func_npmid npmid'

# Install, forcing npm to fetch remote resources even if a local copy exists on disk
_alias_func_npmif() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm i -f' 'Install, forcing npm to fetch remote resources even if a local copy exists on disk' "$@"
}
alias npmif='_alias_func_npmif npmif'

# Update the installed packages to the latest versions their ranges allow
_alias_func_npmu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm update' 'Update the installed packages to the latest versions their ranges allow' "$@"
}
alias npmu='_alias_func_npmu npmu'

# Run a script from package.json (e.g. 'npmr lint'; without a name, lists them)
_alias_func_npmr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm run' 'Run a script from package.json (e.g. '\''npmr lint'\''; without a name, lists them)' "$@"
}
alias npmr='_alias_func_npmr npmr'

# List the installed packages
_alias_func_npml() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm list' 'List the installed packages' "$@"
}
alias npml='_alias_func_npml npml'

# List the top-level installed packages only
_alias_func_npml0() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm ls --depth=0' 'List the top-level installed packages only' "$@"
}
alias npml0='_alias_func_npml0 npml0'

# Search the registry for packages
_alias_func_npmse() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm search' 'Search the registry for packages' "$@"
}
alias npmse='_alias_func_npmse npmse'

# Show the npm version
_alias_func_npmv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm -v' 'Show the npm version' "$@"
}
alias npmv='_alias_func_npmv npmv'

# Create a package.json for a new project
_alias_func_npminit() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm init' 'Create a package.json for a new project' "$@"
}
alias npminit='_alias_func_npminit npminit'

# Publish the package to the registry
_alias_func_npmp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "npm" "npm not on PATH — install Node.js (with npm) first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "package.json" "No package.json — run from a Node.js project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'npm publish' 'Publish the package to the registry' "$@"
}
alias npmp='_alias_func_npmp npmp'
