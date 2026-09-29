# Generated content — do not edit directly.
# Edit alias_gradle.yaml and re-run YAFFA generator.

# Check that the Gradle wrapper (gradlew) exists
function _alias_req_gradlew {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_gradlew' -Value _alias_req_gradlew -Option AllScope -Force

# Create a temp directory if not already existing
function _alias_req_gtemp_dir {
  if (-not (_YaffaReq 'dir' 'temp' 'missing a temp directory' 'mkdir -p temp' 'Creating a temp directory' 'abort')) { return }
}
Set-Alias -Name 'req_gtemp_dir' -Value _alias_req_gtemp_dir -Option AllScope -Force

# Run the Gradle wrapper with the given tasks/options (e.g. 'gr run')
function _alias_gr {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'gr' './gradlew' 'Run the Gradle wrapper with the given tasks/options (e.g. ''gr run'')' @args
}
Set-Alias -Name 'gr' -Value _alias_gr -Option AllScope -Force

# "Clean Install" - Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)
function _alias_grci {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'grci' './gradlew clean build publishToMavenLocal' '"Clean Install" - Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)' @args
}
Set-Alias -Name 'grci' -Value _alias_grci -Option AllScope -Force

# "Clean Install (no tests)" - Fast project build skipping test execution
function _alias_grci- {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'grci-' './gradlew clean build publishToMavenLocal -x test' '"Clean Install (no tests)" - Fast project build skipping test execution' @args
}
Set-Alias -Name 'grci-' -Value _alias_grci- -Option AllScope -Force

# "clean build" - Package the project (e.g. JAR) without installing to local repository
function _alias_grcb {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'grcb' './gradlew clean build' '"clean build" - Package the project (e.g. JAR) without installing to local repository' @args
}
Set-Alias -Name 'grcb' -Value _alias_grcb -Option AllScope -Force

# "clean build" - Package the project (e.g. JAR) without installing to local repository
Set-Alias -Name 'grp' -Value _alias_grcb -Option AllScope -Force

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
function _alias_grcu-d {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'grcu-d' './gradlew dependencyUpdates' 'Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)' @args
}
Set-Alias -Name 'grcu-d' -Value _alias_grcu-d -Option AllScope -Force

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
Set-Alias -Name 'grcu' -Value _alias_grcu-d -Option AllScope -Force

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
Set-Alias -Name 'grddu' -Value _alias_grcu-d -Option AllScope -Force

# Display the dependency tree for debugging library conflicts
function _alias_grd {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'grd' './gradlew dependencies' 'Display the dependency tree for debugging library conflicts' @args
}
Set-Alias -Name 'grd' -Value _alias_grd -Option AllScope -Force

# Display the dependency tree for debugging library conflicts
Set-Alias -Name 'grdt' -Value _alias_grd -Option AllScope -Force

# Gradle Properties - displays the project's resolved properties
# (the closest Gradle counterpart of Maven's effective POM).
# (==> Use alias 'gpropss' to save it to the temp directory)
function _alias_gprops {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'gprops' './gradlew properties' 'Gradle Properties - displays the project''s resolved properties
(the closest Gradle counterpart of Maven''s effective POM).
(==> Use alias ''gpropss'' to save it to the temp directory)
' @args
}
Set-Alias -Name 'gprops' -Value _alias_gprops -Option AllScope -Force

# Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt
function _alias_gpropss {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  if (-not (_YaffaReq 'dir' 'temp' 'missing a temp directory' 'mkdir -p temp' 'Creating a temp directory' 'abort')) { return }
  _YaffaCall 'gpropss' 'gprops > temp/gradle-properties.txt' 'Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt' @args
}
Set-Alias -Name 'gpropss' -Value _alias_gpropss -Option AllScope -Force

# Run unit tests only
function _alias_gt {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'gt' './gradlew test' 'Run unit tests only' @args
}
Set-Alias -Name 'gt' -Value _alias_gt -Option AllScope -Force

# List the tasks available in this project
function _alias_gtasks {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'gtasks' './gradlew tasks' 'List the tasks available in this project' @args
}
Set-Alias -Name 'gtasks' -Value _alias_gtasks -Option AllScope -Force

# Display the build script classpath (plugins and their versions)
function _alias_gbe {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'gbe' './gradlew buildEnvironment' 'Display the build script classpath (plugins and their versions)' @args
}
Set-Alias -Name 'gbe' -Value _alias_gbe -Option AllScope -Force

# Stop all running Gradle daemons
function _alias_gstop {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  _YaffaCall 'gstop' './gradlew --stop' 'Stop all running Gradle daemons' @args
}
Set-Alias -Name 'gstop' -Value _alias_gstop -Option AllScope -Force

# Open: Gradle Plugin Portal
function _alias_grpp {
  if (-not (_YaffaReq 'file' 'gradlew' 'No gradlew — run from a Gradle project root (with the Gradle wrapper)' '' '' 'abort')) { return }
  if (-not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'grpp' 'python -m webbrowser https://plugins.gradle.org/' 'Open: Gradle Plugin Portal' @args
}
Set-Alias -Name 'grpp' -Value _alias_grpp -Option AllScope -Force

# Open: Gradle Plugin Portal
Set-Alias -Name 'gpps' -Value _alias_grpp -Option AllScope -Force
