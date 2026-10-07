# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_helm.yaml and re-run YAFFA generator.

# Check that helm is on PATH
_alias_func_req_omz_helm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
}
alias req_omz_helm='_alias_func_req_omz_helm req_omz_helm'

# Short alias for helm
_alias_func_h() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm' 'Short alias for helm' "$@"
}
alias h='_alias_func_h h'

# Install a chart as a new release (e.g. 'hin my-app ./chart')
_alias_func_hin() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm install' 'Install a chart as a new release (e.g. '\''hin my-app ./chart'\'')' "$@"
}
alias hin='_alias_func_hin hin'

# Upgrade a release to a new chart version or values (e.g. 'hup my-app ./chart -f values.yaml')
_alias_func_hup() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm upgrade' 'Upgrade a release to a new chart version or values (e.g. '\''hup my-app ./chart -f values.yaml'\'')' "$@"
}
alias hup='_alias_func_hup hup'

# Uninstall a release — irreversible
_alias_func_hun() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm uninstall' 'Uninstall a release — irreversible' "$@"
}
alias hun='_alias_func_hun hun'

# Search for charts (e.g. 'hse repo nginx' or 'hse hub nginx')
_alias_func_hse() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm search' 'Search for charts (e.g. '\''hse repo nginx'\'' or '\''hse hub nginx'\'')' "$@"
}
alias hse='_alias_func_hse hse'
