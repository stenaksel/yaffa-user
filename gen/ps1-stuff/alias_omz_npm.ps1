# Generated content — do not edit directly.
# Edit alias_omz_npm.yaml and re-run YAFFA generator.

# Check that npm is on PATH
function _alias_func_req_omz_npm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_npm' -Value _alias_func_req_omz_npm -Option AllScope -Force

# Check that package.json exists
function _alias_func_req_omz_package_json {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_package_json' -Value _alias_func_req_omz_package_json -Option AllScope -Force

# Install packages globally (e.g. 'npmg typescript')
function _alias_func_npmg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmg' 'npm i -g' 'Install packages globally (e.g. ''npmg typescript'')' @args
}
Set-Alias -Name 'npmg' -Value _alias_func_npmg -Option AllScope -Force

# Run the project's start script
function _alias_func_npmst {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npmst' 'npm start' 'Run the project''s start script' @args
}
Set-Alias -Name 'npmst' -Value _alias_func_npmst -Option AllScope -Force

# Run the project's tests
function _alias_func_npmt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npmt' 'npm test' 'Run the project''s tests' @args
}
Set-Alias -Name 'npmt' -Value _alias_func_npmt -Option AllScope -Force

# Run the project's dev script
function _alias_func_npmrd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npmrd' 'npm run dev' 'Run the project''s dev script' @args
}
Set-Alias -Name 'npmrd' -Value _alias_func_npmrd -Option AllScope -Force

# Run the project's build script
function _alias_func_npmrb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'package.json' 'No package.json — run from a Node.js project root' '' '' 'abort')) { return }
  _YaffaCall 'npmrb' 'npm run build' 'Run the project''s build script' @args
}
Set-Alias -Name 'npmrb' -Value _alias_func_npmrb -Option AllScope -Force

# Show information about a package from the registry (e.g. 'npmi react')
function _alias_func_npmi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'npm' 'npm not on PATH — install Node.js (with npm) first' '' '' 'abort')) { return }
  _YaffaCall 'npmi' 'npm info' 'Show information about a package from the registry (e.g. ''npmi react'')' @args
}
Set-Alias -Name 'npmi' -Value _alias_func_npmi -Option AllScope -Force
