# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_helm.yaml and re-run YAFFA generator.

# Check that helm is on PATH
_alias_func_req_helm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
}
alias req_helm='_alias_func_req_helm req_helm'

# List the releases in the current namespace
_alias_func_hls() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm list' 'List the releases in the current namespace' "$@"
}
alias hls='_alias_func_hls hls'

# Show the status of a release
_alias_func_hst() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm status' 'Show the status of a release' "$@"
}
alias hst='_alias_func_hst hst'

# Roll a release back to a previous revision (e.g. 'hrb my-app 2')
_alias_func_hrb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm rollback' 'Roll a release back to a previous revision (e.g. '\''hrb my-app 2'\'')' "$@"
}
alias hrb='_alias_func_hrb hrb'

# Update the information on available charts from the chart repositories
_alias_func_hrepu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "helm" "helm not on PATH — install Helm first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'helm repo update' 'Update the information on available charts from the chart repositories' "$@"
}
alias hrepu='_alias_func_hrepu hrepu'
