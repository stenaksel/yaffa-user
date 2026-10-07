# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_terraform.yaml and re-run YAFFA generator.

# Check that terraform is on PATH
_alias_func_req_omz_terraform() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
}
alias req_omz_terraform='_alias_func_req_omz_terraform req_omz_terraform'

# Short alias for terraform
_alias_func_tf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform' 'Short alias for terraform' "$@"
}
alias tf='_alias_func_tf tf'

# Initialize the working directory (providers, modules, backend)
_alias_func_tfi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform init' 'Initialize the working directory (providers, modules, backend)' "$@"
}
alias tfi='_alias_func_tfi tfi'

# Initialize, reconfiguring the backend and ignoring any saved configuration
_alias_func_tfir() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform init -reconfigure' 'Initialize, reconfiguring the backend and ignoring any saved configuration' "$@"
}
alias tfir='_alias_func_tfir tfir'

# Initialize, upgrading modules and providers to the newest allowed versions
_alias_func_tfiu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform init -upgrade' 'Initialize, upgrading modules and providers to the newest allowed versions' "$@"
}
alias tfiu='_alias_func_tfiu tfiu'

# Initialize with upgraded modules and providers, reconfiguring the backend
_alias_func_tfiur() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform init -upgrade -reconfigure' 'Initialize with upgraded modules and providers, reconfiguring the backend' "$@"
}
alias tfiur='_alias_func_tfiur tfiur'

# Format the configuration files in the current directory
_alias_func_tff() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform fmt' 'Format the configuration files in the current directory' "$@"
}
alias tff='_alias_func_tff tff'

# Format the configuration files in the current directory and its subdirectories
_alias_func_tffr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform fmt -recursive' 'Format the configuration files in the current directory and its subdirectories' "$@"
}
alias tffr='_alias_func_tffr tffr'

# Check that the configuration is syntactically valid and internally consistent
_alias_func_tfv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform validate' 'Check that the configuration is syntactically valid and internally consistent' "$@"
}
alias tfv='_alias_func_tfv tfv'

# Run the module's Terraform tests (*.tftest.hcl)
_alias_func_tft() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform test' 'Run the module'\''s Terraform tests (*.tftest.hcl)' "$@"
}
alias tft='_alias_func_tft tft'

# Show the changes that apply would make
_alias_func_tfp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform plan' 'Show the changes that apply would make' "$@"
}
alias tfp='_alias_func_tfp tfp'

# Plan and save the plan to the file tfplan (==> apply it with 'tfapp')
_alias_func_tfpo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform plan -out tfplan' 'Plan and save the plan to the file tfplan (==> apply it with '\''tfapp'\'')' "$@"
}
alias tfpo='_alias_func_tfpo tfpo'

# Plan and apply the changes, after asking for approval
_alias_func_tfa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform apply' 'Plan and apply the changes, after asking for approval' "$@"
}
alias tfa='_alias_func_tfa tfa'

# Apply the changes one resource at a time (-parallelism=1)
_alias_func_tfap() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform apply -parallelism=1' 'Apply the changes one resource at a time (-parallelism=1)' "$@"
}
alias tfap='_alias_func_tfap tfap'

# Apply the plan saved by 'tfpo' (the file tfplan)
_alias_func_tfapp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform apply tfplan' 'Apply the plan saved by '\''tfpo'\'' (the file tfplan)' "$@"
}
alias tfapp='_alias_func_tfapp tfapp'

# Destroy all managed infrastructure, after asking for approval — irreversible
_alias_func_tfd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform destroy' 'Destroy all managed infrastructure, after asking for approval — irreversible' "$@"
}
alias tfd='_alias_func_tfd tfd'

# Destroy all managed infrastructure one resource at a time — irreversible
_alias_func_tfdp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform destroy -parallelism=1' 'Destroy all managed infrastructure one resource at a time — irreversible' "$@"
}
alias tfdp='_alias_func_tfdp tfdp'

# Show the root module's output values
_alias_func_tfo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform output' 'Show the root module'\''s output values' "$@"
}
alias tfo='_alias_func_tfo tfo'

# Show the current state or a saved plan
_alias_func_tfsh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform show' 'Show the current state or a saved plan' "$@"
}
alias tfsh='_alias_func_tfsh tfsh'

# Advanced state management (e.g. 'tfs list')
_alias_func_tfs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform state' 'Advanced state management (e.g. '\''tfs list'\'')' "$@"
}
alias tfs='_alias_func_tfs tfs'

# Open an interactive console for evaluating expressions
_alias_func_tfc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform console' 'Open an interactive console for evaluating expressions' "$@"
}
alias tfc='_alias_func_tfc tfc'

# Manage workspaces (e.g. 'tfw new staging')
_alias_func_tfw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform workspace' 'Manage workspaces (e.g. '\''tfw new staging'\'')' "$@"
}
alias tfw='_alias_func_tfw tfw'

# List the workspaces
_alias_func_tfwl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform workspace list' 'List the workspaces' "$@"
}
alias tfwl='_alias_func_tfwl tfwl'

# Switch to another workspace (e.g. 'tfws staging')
_alias_func_tfws() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "terraform" "terraform not on PATH — install Terraform first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'terraform workspace select' 'Switch to another workspace (e.g. '\''tfws staging'\'')' "$@"
}
alias tfws='_alias_func_tfws tfws'
