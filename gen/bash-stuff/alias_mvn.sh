# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_mvn.yaml and re-run YAFFA generator.

# Create a temp directory if not already existing
_alias_func_req_temp_dir() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_temp_dir='_alias_func_req_temp_dir req_temp_dir'

# Check that pom.xml exists
_alias_func_req_pom() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
}
alias req_pom='_alias_func_req_pom req_pom'

# Check that mvn is on PATH
_alias_func_req_mvn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
}
alias req_mvn='_alias_func_req_mvn req_mvn'

# Check that pom.xml exists and mvn is on PATH
_alias_func_req_pom_and_mvn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
}
alias req_pom_and_mvn='_alias_func_req_pom_and_mvn req_pom_and_mvn'

# Standard project build with clean, compile, test, and local install
_alias_func_mci() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn clean install' 'Standard project build with clean, compile, test, and local install' "$@"
}
alias mci='_alias_func_mci mci'

# Fast project build skipping test execution
_alias_func_mcist() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn clean install -DskipTests' 'Fast project build skipping test execution' "$@"
}
alias mcist='_alias_func_mcist mcist'

# Package the project (e.g. JAR) without installing to local repository
_alias_func_mcp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn clean package' 'Package the project (e.g. JAR) without installing to local repository' "$@"
}
alias mcp='_alias_func_mcp mcp'

# Maven Check Updates - Dependencies
_alias_func_mcu-d() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn versions:display-dependency-updates' 'Maven Check Updates - Dependencies' "$@"
}
alias mcu-d='_alias_func_mcu-d mcu-d'
alias mcu='_alias_func_mcu-d mcu'
alias mddu='_alias_func_mcu-d mddu'

# Maven Check Updates - Plugins
_alias_func_mcu-p() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn versions:display-plugin-updates' 'Maven Check Updates - Plugins' "$@"
}
alias mcu-p='_alias_func_mcu-p mcu-p'
alias mpu='_alias_func_mcu-p mpu'
alias mdpu='_alias_func_mcu-p mdpu'

# Display the dependency tree for debugging library conflicts
_alias_func_mdt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn dependency:tree' 'Display the dependency tree for debugging library conflicts' "$@"
}
alias mdt='_alias_func_mdt mdt'

# Maven Effective-Pom - displays the final, fully merged XML configuration
# that Maven actually uses to build your project.
# It resolves all inheritance from the Maven Super POM,
# processes properties interpolation, merges parent POMs,
# and factors in any active build profiles.
# (==> Use alias 'meps' to save it to the temp directory)
_alias_func_mep() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn help:effective-pom' 'Maven Effective-Pom - displays the final, fully merged XML configuration
that Maven actually uses to build your project.
It resolves all inheritance from the Maven Super POM,
processes properties interpolation, merges parent POMs,
and factors in any active build profiles.
(==> Use alias '\''meps'\'' to save it to the temp directory)
' "$@"
}
alias mep='_alias_func_mep mep'

# Maven Effective-Pom Save - Saves the effective POM to temp/effective-pom.xml
_alias_func_meps() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mep > temp/effective-pom.xml' 'Maven Effective-Pom Save - Saves the effective POM to temp/effective-pom.xml' "$@"
}
alias meps='_alias_func_meps meps'

# Run unit tests only
_alias_func_mvnt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'mvn test' 'Run unit tests only' "$@"
}
alias mvnt='_alias_func_mvnt mvnt'
