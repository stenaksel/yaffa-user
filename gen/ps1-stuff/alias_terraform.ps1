# Generated content — do not edit directly.
# Edit alias_terraform.yaml and re-run YAFFA generator.

# Check that terraform is on PATH
function _alias_func_req_terraform {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_terraform' -Value _alias_func_req_terraform -Option AllScope -Force

# Apply the changes WITHOUT asking for approval
function _alias_func_tfaay {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfaay' 'terraform apply -auto-approve' 'Apply the changes WITHOUT asking for approval' @args
}
Set-Alias -Name 'tfaay' -Value _alias_func_tfaay -Option AllScope -Force

# Destroy all managed infrastructure WITHOUT asking for approval — irreversible
function _alias_func_tfday {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'terraform' 'terraform not on PATH — install Terraform first' '' '' 'abort')) { return }
  _YaffaCall 'tfday' 'terraform destroy -auto-approve' 'Destroy all managed infrastructure WITHOUT asking for approval — irreversible' @args
}
Set-Alias -Name 'tfday' -Value _alias_func_tfday -Option AllScope -Force
