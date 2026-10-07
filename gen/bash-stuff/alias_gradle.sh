# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_gradle.yaml and re-run YAFFA generator.

# Check that the Gradle wrapper (gradlew) exists
_alias_func_req_gradlew() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
}
alias req_gradlew='_alias_func_req_gradlew req_gradlew'

# Create a temp directory if not already existing
_alias_func_req_gtemp_dir() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_gtemp_dir='_alias_func_req_gtemp_dir req_gtemp_dir'

# Run the Gradle wrapper with the given tasks/options (e.g. 'gr run')
_alias_func_gr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew' 'Run the Gradle wrapper with the given tasks/options (e.g. '\''gr run'\'')' "$@"
}
alias gr='_alias_func_gr gr'

# "Clean Install" - Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)
_alias_func_grci() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew clean build publishToMavenLocal' '"Clean Install" - Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)' "$@"
}
alias grci='_alias_func_grci grci'

# "Clean Install (no tests)" - Fast project build skipping test execution
_alias_func_grci-() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew clean build publishToMavenLocal -x test' '"Clean Install (no tests)" - Fast project build skipping test execution' "$@"
}
alias grci-='_alias_func_grci- grci-'

# "clean build" - Package the project (e.g. JAR) without installing to local repository
_alias_func_grcb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew clean build' '"clean build" - Package the project (e.g. JAR) without installing to local repository' "$@"
}
alias grcb='_alias_func_grcb grcb'
alias grp='_alias_func_grcb grp'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
_alias_func_grcu-d() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew dependencyUpdates' 'Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)' "$@"
}
alias grcu-d='_alias_func_grcu-d grcu-d'
alias grcu='_alias_func_grcu-d grcu'
alias grddu='_alias_func_grcu-d grddu'

# Display the dependency tree for debugging library conflicts
_alias_func_grd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew dependencies' 'Display the dependency tree for debugging library conflicts' "$@"
}
alias grd='_alias_func_grd grd'
alias grdt='_alias_func_grd grdt'

# Gradle Properties - displays the project's resolved properties
# (the closest Gradle counterpart of Maven's effective POM).
# (==> Use alias 'gpropss' to save it to the temp directory)
_alias_func_gprops() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew properties' 'Gradle Properties - displays the project'\''s resolved properties
(the closest Gradle counterpart of Maven'\''s effective POM).
(==> Use alias '\''gpropss'\'' to save it to the temp directory)
' "$@"
}
alias gprops='_alias_func_gprops gprops'

# Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt
_alias_func_gpropss() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gprops > temp/gradle-properties.txt' 'Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt' "$@"
}
alias gpropss='_alias_func_gpropss gpropss'

# Run unit tests only
_alias_func_gt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew test' 'Run unit tests only' "$@"
}
alias gt='_alias_func_gt gt'

# List the tasks available in this project
_alias_func_gtasks() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew tasks' 'List the tasks available in this project' "$@"
}
alias gtasks='_alias_func_gtasks gtasks'

# Display the build script classpath (plugins and their versions)
_alias_func_gbe() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew buildEnvironment' 'Display the build script classpath (plugins and their versions)' "$@"
}
alias gbe='_alias_func_gbe gbe'

# Stop all running Gradle daemons
_alias_func_gstop() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" './gradlew --stop' 'Stop all running Gradle daemons' "$@"
}
alias gstop='_alias_func_gstop gstop'

# Open: Gradle Plugin Portal
_alias_func_grpp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m webbrowser https://plugins.gradle.org/' 'Open: Gradle Plugin Portal' "$@"
}
alias grpp='_alias_func_grpp grpp'
alias gpps='_alias_func_grpp gpps'
