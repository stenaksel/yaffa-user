# Generated content — do not edit directly.
# Edit alias_mvn.yaml and re-run YAFFA generator.

# Create a temp directory if not already existing
function _alias_func_req_temp_dir {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'dir' 'temp' 'missing a temp directory' 'mkdir -p temp' 'Creating a temp directory' 'abort')) { return }
}
Set-Alias -Name 'req_temp_dir' -Value _alias_func_req_temp_dir -Option AllScope -Force

# Check that pom.xml exists
function _alias_func_req_pom {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_pom' -Value _alias_func_req_pom -Option AllScope -Force

# Check that mvn is on PATH
function _alias_func_req_mvn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_mvn' -Value _alias_func_req_mvn -Option AllScope -Force

# Check that pom.xml exists and mvn is on PATH
function _alias_func_req_pom_and_mvn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_pom_and_mvn' -Value _alias_func_req_pom_and_mvn -Option AllScope -Force

# Standard project build with clean, compile, test, and local install
function _alias_func_mci {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mci' 'mvn clean install' 'Standard project build with clean, compile, test, and local install' @args
}
Set-Alias -Name 'mci' -Value _alias_func_mci -Option AllScope -Force

# Fast project build skipping test execution
function _alias_func_mcist {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mcist' 'mvn clean install -DskipTests' 'Fast project build skipping test execution' @args
}
Set-Alias -Name 'mcist' -Value _alias_func_mcist -Option AllScope -Force

# Package the project (e.g. JAR) without installing to local repository
function _alias_func_mcp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mcp' 'mvn clean package' 'Package the project (e.g. JAR) without installing to local repository' @args
}
Set-Alias -Name 'mcp' -Value _alias_func_mcp -Option AllScope -Force

# Maven Check Updates - Dependencies
function _alias_func_mcu-d {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mcu-d' 'mvn versions:display-dependency-updates' 'Maven Check Updates - Dependencies' @args
}
Set-Alias -Name 'mcu-d' -Value _alias_func_mcu-d -Option AllScope -Force
Set-Alias -Name 'mcu' -Value _alias_func_mcu-d -Option AllScope -Force
Set-Alias -Name 'mddu' -Value _alias_func_mcu-d -Option AllScope -Force

# Maven Check Updates - Plugins
function _alias_func_mcu-p {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mcu-p' 'mvn versions:display-plugin-updates' 'Maven Check Updates - Plugins' @args
}
Set-Alias -Name 'mcu-p' -Value _alias_func_mcu-p -Option AllScope -Force
Set-Alias -Name 'mpu' -Value _alias_func_mcu-p -Option AllScope -Force
Set-Alias -Name 'mdpu' -Value _alias_func_mcu-p -Option AllScope -Force

# Display the dependency tree for debugging library conflicts
function _alias_func_mdt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mdt' 'mvn dependency:tree' 'Display the dependency tree for debugging library conflicts' @args
}
Set-Alias -Name 'mdt' -Value _alias_func_mdt -Option AllScope -Force

# Maven Effective-Pom - displays the final, fully merged XML configuration
# that Maven actually uses to build your project.
# It resolves all inheritance from the Maven Super POM,
# processes properties interpolation, merges parent POMs,
# and factors in any active build profiles.
# (==> Use alias 'meps' to save it to the temp directory)
function _alias_func_mep {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mep' 'mvn help:effective-pom' 'Maven Effective-Pom - displays the final, fully merged XML configuration
that Maven actually uses to build your project.
It resolves all inheritance from the Maven Super POM,
processes properties interpolation, merges parent POMs,
and factors in any active build profiles.
(==> Use alias ''meps'' to save it to the temp directory)
' @args
}
Set-Alias -Name 'mep' -Value _alias_func_mep -Option AllScope -Force

# Maven Effective-Pom Save - Saves the effective POM to temp/effective-pom.xml
function _alias_func_meps {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'dir' 'temp' 'missing a temp directory' 'mkdir -p temp' 'Creating a temp directory' 'abort')) { return }
  _YaffaCall 'meps' 'mep > temp/effective-pom.xml' 'Maven Effective-Pom Save - Saves the effective POM to temp/effective-pom.xml' @args
}
Set-Alias -Name 'meps' -Value _alias_func_meps -Option AllScope -Force

# Run unit tests only
function _alias_func_mvnt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pom.xml' 'No pom.xml — run from a Maven project root' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'mvn' 'mvn not on PATH — install Maven first' '' '' 'abort')) { return }
  _YaffaCall 'mvnt' 'mvn test' 'Run unit tests only' @args
}
Set-Alias -Name 'mvnt' -Value _alias_func_mvnt -Option AllScope -Force
