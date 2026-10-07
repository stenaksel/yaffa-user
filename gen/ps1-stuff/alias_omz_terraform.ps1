# Generated content — do not edit directly.
# Edit alias_omz_terraform.yaml and re-run YAFFA generator.

# Check that terraform is on PATH
function _alias_func_req_omz_terraform {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_terraform' -Value _alias_func_req_omz_terraform -Option AllScope -Force

# Short alias for terraform
function _alias_func_tf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tf' 'terraform' 'Short alias for terraform' @args
}
Set-Alias -Name 'tf' -Value _alias_func_tf -Option AllScope -Force

# Initialize the working directory (providers, modules, backend)
function _alias_func_tfi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfi' 'terraform init' 'Initialize the working directory (providers, modules, backend)' @args
}
Set-Alias -Name 'tfi' -Value _alias_func_tfi -Option AllScope -Force

# Initialize, reconfiguring the backend and ignoring any saved configuration
function _alias_func_tfir {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfir' 'terraform init -reconfigure' 'Initialize, reconfiguring the backend and ignoring any saved configuration' @args
}
Set-Alias -Name 'tfir' -Value _alias_func_tfir -Option AllScope -Force

# Initialize, upgrading modules and providers to the newest allowed versions
function _alias_func_tfiu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfiu' 'terraform init -upgrade' 'Initialize, upgrading modules and providers to the newest allowed versions' @args
}
Set-Alias -Name 'tfiu' -Value _alias_func_tfiu -Option AllScope -Force

# Initialize with upgraded modules and providers, reconfiguring the backend
function _alias_func_tfiur {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfiur' 'terraform init -upgrade -reconfigure' 'Initialize with upgraded modules and providers, reconfiguring the backend' @args
}
Set-Alias -Name 'tfiur' -Value _alias_func_tfiur -Option AllScope -Force

# Format the configuration files in the current directory
function _alias_func_tff {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tff' 'terraform fmt' 'Format the configuration files in the current directory' @args
}
Set-Alias -Name 'tff' -Value _alias_func_tff -Option AllScope -Force

# Format the configuration files in the current directory and its subdirectories
function _alias_func_tffr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tffr' 'terraform fmt -recursive' 'Format the configuration files in the current directory and its subdirectories' @args
}
Set-Alias -Name 'tffr' -Value _alias_func_tffr -Option AllScope -Force

# Check that the configuration is syntactically valid and internally consistent
function _alias_func_tfv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfv' 'terraform validate' 'Check that the configuration is syntactically valid and internally consistent' @args
}
Set-Alias -Name 'tfv' -Value _alias_func_tfv -Option AllScope -Force

# Run the module's Terraform tests (*.tftest.hcl)
function _alias_func_tft {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tft' 'terraform test' 'Run the module''s Terraform tests (*.tftest.hcl)' @args
}
Set-Alias -Name 'tft' -Value _alias_func_tft -Option AllScope -Force

# Show the changes that apply would make
function _alias_func_tfp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfp' 'terraform plan' 'Show the changes that apply would make' @args
}
Set-Alias -Name 'tfp' -Value _alias_func_tfp -Option AllScope -Force

# Plan and save the plan to the file tfplan (==> apply it with 'tfapp')
function _alias_func_tfpo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfpo' 'terraform plan -out tfplan' 'Plan and save the plan to the file tfplan (==> apply it with ''tfapp'')' @args
}
Set-Alias -Name 'tfpo' -Value _alias_func_tfpo -Option AllScope -Force

# Plan and apply the changes, after asking for approval
function _alias_func_tfa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfa' 'terraform apply' 'Plan and apply the changes, after asking for approval' @args
}
Set-Alias -Name 'tfa' -Value _alias_func_tfa -Option AllScope -Force

# Apply the changes one resource at a time (-parallelism=1)
function _alias_func_tfap {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfap' 'terraform apply -parallelism=1' 'Apply the changes one resource at a time (-parallelism=1)' @args
}
Set-Alias -Name 'tfap' -Value _alias_func_tfap -Option AllScope -Force

# Apply the plan saved by 'tfpo' (the file tfplan)
function _alias_func_tfapp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfapp' 'terraform apply tfplan' 'Apply the plan saved by ''tfpo'' (the file tfplan)' @args
}
Set-Alias -Name 'tfapp' -Value _alias_func_tfapp -Option AllScope -Force

# Destroy all managed infrastructure, after asking for approval — irreversible
function _alias_func_tfd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfd' 'terraform destroy' 'Destroy all managed infrastructure, after asking for approval — irreversible' @args
}
Set-Alias -Name 'tfd' -Value _alias_func_tfd -Option AllScope -Force

# Destroy all managed infrastructure one resource at a time — irreversible
function _alias_func_tfdp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfdp' 'terraform destroy -parallelism=1' 'Destroy all managed infrastructure one resource at a time — irreversible' @args
}
Set-Alias -Name 'tfdp' -Value _alias_func_tfdp -Option AllScope -Force

# Show the root module's output values
function _alias_func_tfo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfo' 'terraform output' 'Show the root module''s output values' @args
}
Set-Alias -Name 'tfo' -Value _alias_func_tfo -Option AllScope -Force

# Show the current state or a saved plan
function _alias_func_tfsh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfsh' 'terraform show' 'Show the current state or a saved plan' @args
}
Set-Alias -Name 'tfsh' -Value _alias_func_tfsh -Option AllScope -Force

# Advanced state management (e.g. 'tfs list')
function _alias_func_tfs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfs' 'terraform state' 'Advanced state management (e.g. ''tfs list'')' @args
}
Set-Alias -Name 'tfs' -Value _alias_func_tfs -Option AllScope -Force

# Open an interactive console for evaluating expressions
function _alias_func_tfc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfc' 'terraform console' 'Open an interactive console for evaluating expressions' @args
}
Set-Alias -Name 'tfc' -Value _alias_func_tfc -Option AllScope -Force

# Manage workspaces (e.g. 'tfw new staging')
function _alias_func_tfw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfw' 'terraform workspace' 'Manage workspaces (e.g. ''tfw new staging'')' @args
}
Set-Alias -Name 'tfw' -Value _alias_func_tfw -Option AllScope -Force

# List the workspaces
function _alias_func_tfwl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfwl' 'terraform workspace list' 'List the workspaces' @args
}
Set-Alias -Name 'tfwl' -Value _alias_func_tfwl -Option AllScope -Force

# Switch to another workspace (e.g. 'tfws staging')
function _alias_func_tfws {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfws' 'terraform workspace select' 'Switch to another workspace (e.g. ''tfws staging'')' @args
}
Set-Alias -Name 'tfws' -Value _alias_func_tfws -Option AllScope -Force
