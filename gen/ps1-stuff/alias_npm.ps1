# Generated content — do not edit directly.
# Edit alias_npm.yaml and re-run YAFFA generator.

# Check that npm is on PATH
function _alias_func_req_npm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_npm' -Value _alias_func_req_npm -Option AllScope -Force

# Check that package.json exists
function _alias_func_req_package_json {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_package_json' -Value _alias_func_req_package_json -Option AllScope -Force

# "Clean Install" - Install exactly the dependencies in package-lock.json, removing node_modules first
function _alias_func_nci {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'nci' 'npm ci' '"Clean Install" - Install exactly the dependencies in package-lock.json, removing node_modules first' @args
}
Set-Alias -Name 'nci' -Value _alias_func_nci -Option AllScope -Force

# Package the project into a tarball (.tgz) without publishing it
function _alias_func_ncp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'ncp' 'npm pack' 'Package the project into a tarball (.tgz) without publishing it' @args
}
Set-Alias -Name 'ncp' -Value _alias_func_ncp -Option AllScope -Force

# npm Check Updates - list installed packages with newer versions available
function _alias_func_ncu-d {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'ncu-d' 'npm outdated' 'npm Check Updates - list installed packages with newer versions available' @args
}
Set-Alias -Name 'ncu-d' -Value _alias_func_ncu-d -Option AllScope -Force
Set-Alias -Name 'npmo' -Value _alias_func_ncu-d -Option AllScope -Force
Set-Alias -Name 'nddu' -Value _alias_func_ncu-d -Option AllScope -Force

# Install packages and save them to dependencies in package.json
function _alias_func_npmis {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmis' 'npm i -S' 'Install packages and save them to dependencies in package.json' @args
}
Set-Alias -Name 'npmis' -Value _alias_func_npmis -Option AllScope -Force

# Install packages and save them to devDependencies in package.json
function _alias_func_npmid {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmid' 'npm i -D' 'Install packages and save them to devDependencies in package.json' @args
}
Set-Alias -Name 'npmid' -Value _alias_func_npmid -Option AllScope -Force

# Install, forcing npm to fetch remote resources even if a local copy exists on disk
function _alias_func_npmif {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmif' 'npm i -f' 'Install, forcing npm to fetch remote resources even if a local copy exists on disk' @args
}
Set-Alias -Name 'npmif' -Value _alias_func_npmif -Option AllScope -Force

# Update the installed packages to the latest versions their ranges allow
function _alias_func_npmu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmu' 'npm update' 'Update the installed packages to the latest versions their ranges allow' @args
}
Set-Alias -Name 'npmu' -Value _alias_func_npmu -Option AllScope -Force

# Run a script from package.json (e.g. 'npmr lint'; without a name, lists them)
function _alias_func_npmr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npmr' 'npm run' 'Run a script from package.json (e.g. ''npmr lint''; without a name, lists them)' @args
}
Set-Alias -Name 'npmr' -Value _alias_func_npmr -Option AllScope -Force

# List the installed packages
function _alias_func_npml {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npml' 'npm list' 'List the installed packages' @args
}
Set-Alias -Name 'npml' -Value _alias_func_npml -Option AllScope -Force

# List the top-level installed packages only
function _alias_func_npml0 {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npml0' 'npm ls --depth=0' 'List the top-level installed packages only' @args
}
Set-Alias -Name 'npml0' -Value _alias_func_npml0 -Option AllScope -Force

# Search the registry for packages
function _alias_func_npmse {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmse' 'npm search' 'Search the registry for packages' @args
}
Set-Alias -Name 'npmse' -Value _alias_func_npmse -Option AllScope -Force

# Show the npm version
function _alias_func_npmv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmv' 'npm -v' 'Show the npm version' @args
}
Set-Alias -Name 'npmv' -Value _alias_func_npmv -Option AllScope -Force

# Create a package.json for a new project
function _alias_func_npminit {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npminit' 'npm init' 'Create a package.json for a new project' @args
}
Set-Alias -Name 'npminit' -Value _alias_func_npminit -Option AllScope -Force

# Publish the package to the registry
function _alias_func_npmp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npmp' 'npm publish' 'Publish the package to the registry' @args
}
Set-Alias -Name 'npmp' -Value _alias_func_npmp -Option AllScope -Force
