# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_terraform.yaml and re-run YAFFA generator.

# Check that terraform is on PATH
_alias_func_req_terraform() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
}
alias req_terraform='_alias_func_req_terraform req_terraform'

# Apply the changes WITHOUT asking for approval
_alias_func_tfaay() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform apply -auto-approve' 'Apply the changes WITHOUT asking for approval' "$@"
}
alias tfaay='_alias_func_tfaay tfaay'

# Destroy all managed infrastructure WITHOUT asking for approval — irreversible
_alias_func_tfday() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform destroy -auto-approve' 'Destroy all managed infrastructure WITHOUT asking for approval — irreversible' "$@"
}
alias tfday='_alias_func_tfday tfday'
