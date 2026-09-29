#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_gradle.yaml and re-run YAFFA generator.

# Check that the Gradle wrapper (gradlew) exists
_alias_req_gradlew() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
}
alias req_gradlew='_alias_req_gradlew'

# Create a temp directory if not already existing
_alias_req_gtemp_dir() {
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_gtemp_dir='_alias_req_gtemp_dir'

# Run the Gradle wrapper with the given tasks/options (e.g. 'gr run')
_alias_gr() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gr './gradlew' 'Run the Gradle wrapper with the given tasks/options (e.g. '\''gr run'\'')' "$@"
}
alias gr='_alias_gr'

# "Clean Install" - Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)
_alias_grci() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall grci './gradlew clean build publishToMavenLocal' '"Clean Install" - Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)' "$@"
}
alias grci='_alias_grci'

# "Clean Install (no tests)" - Fast project build skipping test execution
_alias_grci-() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall grci- './gradlew clean build publishToMavenLocal -x test' '"Clean Install (no tests)" - Fast project build skipping test execution' "$@"
}
alias grci-='_alias_grci-'

# "clean build" - Package the project (e.g. JAR) without installing to local repository
_alias_grcb() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall grcb './gradlew clean build' '"clean build" - Package the project (e.g. JAR) without installing to local repository' "$@"
}
alias grcb='_alias_grcb'

# "clean build" - Package the project (e.g. JAR) without installing to local repository
alias grp='_alias_grcb'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
_alias_grcu-d() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall grcu-d './gradlew dependencyUpdates' 'Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)' "$@"
}
alias grcu-d='_alias_grcu-d'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
alias grcu='_alias_grcu-d'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
alias grddu='_alias_grcu-d'

# Display the dependency tree for debugging library conflicts
_alias_grd() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall grd './gradlew dependencies' 'Display the dependency tree for debugging library conflicts' "$@"
}
alias grd='_alias_grd'

# Display the dependency tree for debugging library conflicts
alias grdt='_alias_grd'

# Gradle Properties - displays the project's resolved properties
# (the closest Gradle counterpart of Maven's effective POM).
# (==> Use alias 'gpropss' to save it to the temp directory)
_alias_gprops() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gprops './gradlew properties' 'Gradle Properties - displays the project'\''s resolved properties
(the closest Gradle counterpart of Maven'\''s effective POM).
(==> Use alias '\''gpropss'\'' to save it to the temp directory)
' "$@"
}
alias gprops='_alias_gprops'

# Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt
_alias_gpropss() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall gpropss 'gprops > temp/gradle-properties.txt' 'Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt' "$@"
}
alias gpropss='_alias_gpropss'

# Run unit tests only
_alias_gt() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gt './gradlew test' 'Run unit tests only' "$@"
}
alias gt='_alias_gt'

# List the tasks available in this project
_alias_gtasks() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gtasks './gradlew tasks' 'List the tasks available in this project' "$@"
}
alias gtasks='_alias_gtasks'

# Display the build script classpath (plugins and their versions)
_alias_gbe() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gbe './gradlew buildEnvironment' 'Display the build script classpath (plugins and their versions)' "$@"
}
alias gbe='_alias_gbe'

# Stop all running Gradle daemons
_alias_gstop() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gstop './gradlew --stop' 'Stop all running Gradle daemons' "$@"
}
alias gstop='_alias_gstop'

# Open: Gradle Plugin Portal
_alias_grpp() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall grpp 'python -m webbrowser https://plugins.gradle.org/' 'Open: Gradle Plugin Portal' "$@"
}
alias grpp='_alias_grpp'

# Open: Gradle Plugin Portal
alias gpps='_alias_grpp'
