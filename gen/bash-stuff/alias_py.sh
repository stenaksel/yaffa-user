# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_py.yaml and re-run YAFFA generator.

# Check that python is on PATH
_alias_func_req_py() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
}
alias req_py='_alias_func_req_py req_py'

# Create a temp directory if not already existing
_alias_func_req_ptemp_dir() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_ptemp_dir='_alias_func_req_ptemp_dir req_ptemp_dir'

# Run pip for the current Python with the given arguments (e.g. 'pp install requests')
_alias_func_pp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m pip' 'Run pip for the current Python with the given arguments (e.g. '\''pp install requests'\'')' "$@"
}
alias pp='_alias_func_pp pp'

# Create a virtual environment in .venv
_alias_func_pvenv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m venv .venv' 'Create a virtual environment in .venv' "$@"
}
alias pvenv='_alias_func_pvenv pvenv'

# Activate the .venv virtual environment in the current shell
_alias_func_pva() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  if _YaffaReqTest dir '.venv/Scripts'; then
    _YaffaCall "$_yaffa_func_caller" 'source .venv/Scripts/activate' 'Activate the .venv virtual environment in the current shell' "$@"
  elif _YaffaReqTest dir '.venv/bin'; then
    _YaffaCall "$_yaffa_func_caller" 'source .venv/bin/activate' 'Activate the .venv virtual environment in the current shell' "$@"
  else
    printf '  [error] %s\n' 'No .venv found — create one with '\''pvenv'\''' >&2
    return 1
  fi
}
alias pva='_alias_func_pva pva'

# Install the project (editable, from pyproject.toml) or its requirements.txt
_alias_func_pci() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  if _YaffaReqTest file 'pyproject.toml'; then
    _YaffaCall "$_yaffa_func_caller" 'python -m pip install -e .' 'Install the project (editable, from pyproject.toml) or its requirements.txt' "$@"
  elif _YaffaReqTest file 'requirements.txt'; then
    _YaffaCall "$_yaffa_func_caller" 'python -m pip install -r requirements.txt' 'Install the project (editable, from pyproject.toml) or its requirements.txt' "$@"
  else
    printf '  [error] %s\n' 'pci: no matching case — needs file '\''pyproject.toml'\'' or file '\''requirements.txt'\''' >&2
    return 1
  fi
}
alias pci='_alias_func_pci pci'

# Package the project (sdist and wheel into dist/) — needs the 'build' package
_alias_func_pcp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq file "pyproject.toml" "No pyproject.toml — run from a Python project root" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m build' 'Package the project (sdist and wheel into dist/) — needs the '\''build'\'' package' "$@"
}
alias pcp='_alias_func_pcp pcp'

# Python Check Updates - list installed packages with newer versions available
_alias_func_pcu-d() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m pip list --outdated' 'Python Check Updates - list installed packages with newer versions available' "$@"
}
alias pcu-d='_alias_func_pcu-d pcu-d'
alias pcu='_alias_func_pcu-d pcu'
alias pddu='_alias_func_pcu-d pddu'

# Display the dependency tree for debugging library conflicts — needs the 'pipdeptree' package
_alias_func_pdt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m pipdeptree' 'Display the dependency tree for debugging library conflicts — needs the '\''pipdeptree'\'' package' "$@"
}
alias pdt='_alias_func_pdt pdt'

# Pip Freeze - displays the exact installed package versions
# (the closest Python counterpart of Maven's effective POM).
# (==> Use alias 'pfzs' to save it to the temp directory)
_alias_func_pfz() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m pip freeze' 'Pip Freeze - displays the exact installed package versions
(the closest Python counterpart of Maven'\''s effective POM).
(==> Use alias '\''pfzs'\'' to save it to the temp directory)
' "$@"
}
alias pfz='_alias_func_pfz pfz'

# Pip Freeze Save - Saves the installed package versions to temp/pip-freeze.txt
_alias_func_pfzs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaHelpAsked "$@" || _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'pfz > temp/pip-freeze.txt' 'Pip Freeze Save - Saves the installed package versions to temp/pip-freeze.txt' "$@"
}
alias pfzs='_alias_func_pfzs pfzs'

# Run the tests with pytest
_alias_func_pt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m pytest' 'Run the tests with pytest' "$@"
}
alias pt='_alias_func_pt pt'

# Check your Python sources for lint/code style violations — needs the 'ruff' package
_alias_func_plc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m ruff check .' 'Check your Python sources for lint/code style violations — needs the '\''ruff'\'' package' "$@"
}
alias plc='_alias_func_plc plc'

# Format your Python sources — needs the 'ruff' package
_alias_func_plf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m ruff format .' 'Format your Python sources — needs the '\''ruff'\'' package' "$@"
}
alias plf='_alias_func_plf plf'

# Open: Python Package Index (PyPI)
_alias_func_pypi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'python -m webbrowser https://pypi.org/' 'Open: Python Package Index (PyPI)' "$@"
}
alias pypi='_alias_func_pypi pypi'
