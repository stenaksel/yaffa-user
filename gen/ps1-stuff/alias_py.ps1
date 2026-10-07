# Generated content — do not edit directly.
# Edit alias_py.yaml and re-run YAFFA generator.

# Check that python is on PATH
function _alias_func_req_py {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_py' -Value _alias_func_req_py -Option AllScope -Force

# Create a temp directory if not already existing
function _alias_func_req_ptemp_dir {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'dir' 'temp' 'missing a temp directory' 'mkdir -p temp' 'Creating a temp directory' 'abort')) { return }
}
Set-Alias -Name 'req_ptemp_dir' -Value _alias_func_req_ptemp_dir -Option AllScope -Force

# Run pip for the current Python with the given arguments (e.g. 'pp install requests')
function _alias_func_pp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pp' 'python -m pip' 'Run pip for the current Python with the given arguments (e.g. ''pp install requests'')' @args
}
Set-Alias -Name 'pp' -Value _alias_func_pp -Option AllScope -Force

# Create a virtual environment in .venv
function _alias_func_pvenv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pvenv' 'python -m venv .venv' 'Create a virtual environment in .venv' @args
}
Set-Alias -Name 'pvenv' -Value _alias_func_pvenv -Option AllScope -Force

# Activate the .venv virtual environment in the current shell
function _alias_func_pva {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  if (_YaffaReqTest 'dir' '.venv/Scripts') {
    _YaffaCall 'pva' '. .\.venv\Scripts\Activate.ps1' 'Activate the .venv virtual environment in the current shell' @args
  } elseif (_YaffaReqTest 'dir' '.venv/bin') {
    _YaffaCall 'pva' '. ./.venv/bin/Activate.ps1' 'Activate the .venv virtual environment in the current shell' @args
  } else {
    Write-Host '  [error] No .venv found — create one with ''pvenv''' -ForegroundColor Red
  }
}
Set-Alias -Name 'pva' -Value _alias_func_pva -Option AllScope -Force

# Install the project (editable, from pyproject.toml) or its requirements.txt
function _alias_func_pci {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  if (_YaffaReqTest 'file' 'pyproject.toml') {
    _YaffaCall 'pci' 'python -m pip install -e .' 'Install the project (editable, from pyproject.toml) or its requirements.txt' @args
  } elseif (_YaffaReqTest 'file' 'requirements.txt') {
    _YaffaCall 'pci' 'python -m pip install -r requirements.txt' 'Install the project (editable, from pyproject.toml) or its requirements.txt' @args
  } else {
    Write-Host '  [error] pci: no matching case — needs file ''pyproject.toml'' or file ''requirements.txt''' -ForegroundColor Red
  }
}
Set-Alias -Name 'pci' -Value _alias_func_pci -Option AllScope -Force

# Package the project (sdist and wheel into dist/) — needs the 'build' package
function _alias_func_pcp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'pyproject.toml' 'No pyproject.toml — run from a Python project root' '' '' 'abort')) { return }
  _YaffaCall 'pcp' 'python -m build' 'Package the project (sdist and wheel into dist/) — needs the ''build'' package' @args
}
Set-Alias -Name 'pcp' -Value _alias_func_pcp -Option AllScope -Force

# Python Check Updates - list installed packages with newer versions available
function _alias_func_pcu-d {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pcu-d' 'python -m pip list --outdated' 'Python Check Updates - list installed packages with newer versions available' @args
}
Set-Alias -Name 'pcu-d' -Value _alias_func_pcu-d -Option AllScope -Force
Set-Alias -Name 'pcu' -Value _alias_func_pcu-d -Option AllScope -Force
Set-Alias -Name 'pddu' -Value _alias_func_pcu-d -Option AllScope -Force

# Display the dependency tree for debugging library conflicts — needs the 'pipdeptree' package
function _alias_func_pdt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pdt' 'python -m pipdeptree' 'Display the dependency tree for debugging library conflicts — needs the ''pipdeptree'' package' @args
}
Set-Alias -Name 'pdt' -Value _alias_func_pdt -Option AllScope -Force

# Pip Freeze - displays the exact installed package versions
# (the closest Python counterpart of Maven's effective POM).
# (==> Use alias 'pfzs' to save it to the temp directory)
function _alias_func_pfz {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pfz' 'python -m pip freeze' 'Pip Freeze - displays the exact installed package versions
(the closest Python counterpart of Maven''s effective POM).
(==> Use alias ''pfzs'' to save it to the temp directory)
' @args
}
Set-Alias -Name 'pfz' -Value _alias_func_pfz -Option AllScope -Force

# Pip Freeze Save - Saves the installed package versions to temp/pip-freeze.txt
function _alias_func_pfzs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'dir' 'temp' 'missing a temp directory' 'mkdir -p temp' 'Creating a temp directory' 'abort')) { return }
  _YaffaCall 'pfzs' 'pfz > temp/pip-freeze.txt' 'Pip Freeze Save - Saves the installed package versions to temp/pip-freeze.txt' @args
}
Set-Alias -Name 'pfzs' -Value _alias_func_pfzs -Option AllScope -Force

# Run the tests with pytest
function _alias_func_pt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pt' 'python -m pytest' 'Run the tests with pytest' @args
}
Set-Alias -Name 'pt' -Value _alias_func_pt -Option AllScope -Force

# Check your Python sources for lint/code style violations — needs the 'ruff' package
function _alias_func_plc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'plc' 'python -m ruff check .' 'Check your Python sources for lint/code style violations — needs the ''ruff'' package' @args
}
Set-Alias -Name 'plc' -Value _alias_func_plc -Option AllScope -Force

# Format your Python sources — needs the 'ruff' package
function _alias_func_plf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'plf' 'python -m ruff format .' 'Format your Python sources — needs the ''ruff'' package' @args
}
Set-Alias -Name 'plf' -Value _alias_func_plf -Option AllScope -Force

# Open: Python Package Index (PyPI)
function _alias_func_pypi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'pypi' 'python -m webbrowser https://pypi.org/' 'Open: Python Package Index (PyPI)' @args
}
Set-Alias -Name 'pypi' -Value _alias_func_pypi -Option AllScope -Force
