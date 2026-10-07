# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_my.yaml and re-run YAFFA generator.

# Show repository or global options
alias gconf='_YaffaCall gconf '\''git config --list --show-origin'\'' '\''Show repository or global options'\'''

# Open: Maven Central Repository Search
_alias_func_mrep() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m webbrowser https://search.maven.org/' 'Open: Maven Central Repository Search' "$@"
}
alias mrep='_alias_func_mrep mrep'

# Open: Maven Central Repository Search
_alias_func_mvn_central() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m webbrowser https://search.maven.org/' 'Open: Maven Central Repository Search' "$@"
}
alias mvn_central='_alias_func_mvn_central mvn_central'
alias mcrs='_alias_func_mvn_central mcrs'
alias mvnc='_alias_func_mvn_central mvnc'

# Open: (JetBrain) Package Search
_alias_func_package-search() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m webbrowser https://package-search.jetbrains.com' 'Open: (JetBrain) Package Search' "$@"
}
alias package-search='_alias_func_package-search package-search'
alias pacs='_alias_func_package-search pacs'
alias jbps='_alias_func_package-search jbps'

# Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project
_alias_func_bdd() {
  local _yaffa_func_caller="$1"; shift
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall "$_yaffa_func_caller" 'mvn clean verify -PBDD' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall "$_yaffa_func_caller" './gradlew jvmTest --tests '\''*Cucumber*'\''' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  elif _YaffaReqTest file 'pytest.ini'; then
    _YaffaCall "$_yaffa_func_caller" 'python -m pytest features' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  elif _YaffaReqTest file 'requirements-dev.txt'; then
    _YaffaCall "$_yaffa_func_caller" 'python -m pytest features' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  else
    printf '  [error] %s\n' 'No Maven, Gradle or pytest project found here — run '\''bdd'\'' from a project root' >&2
    return 1
  fi
}
alias bdd='_alias_func_bdd bdd'

# Run the unit (TDD) tests — Maven, Gradle or pytest project
_alias_func_tdd() {
  local _yaffa_func_caller="$1"; shift
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall "$_yaffa_func_caller" 'mvn clean test' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall "$_yaffa_func_caller" './gradlew jvmTest' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  elif _YaffaReqTest file 'pytest.ini'; then
    _YaffaCall "$_yaffa_func_caller" 'python -m pytest tests' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  elif _YaffaReqTest file 'requirements-dev.txt'; then
    _YaffaCall "$_yaffa_func_caller" 'python -m pytest tests' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  else
    printf '  [error] %s\n' 'No Maven, Gradle or pytest project found here — run '\''tdd'\'' from a project root' >&2
    return 1
  fi
}
alias tdd='_alias_func_tdd tdd'
