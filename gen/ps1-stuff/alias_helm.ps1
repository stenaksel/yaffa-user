# Generated content — do not edit directly.
# Edit alias_helm.yaml and re-run YAFFA generator.

# Check that helm is on PATH
function _alias_func_req_helm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_helm' -Value _alias_func_req_helm -Option AllScope -Force

# List the releases in the current namespace
function _alias_func_hls {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hls' 'helm list' 'List the releases in the current namespace' @args
}
Set-Alias -Name 'hls' -Value _alias_func_hls -Option AllScope -Force

# Show the status of a release
function _alias_func_hst {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hst' 'helm status' 'Show the status of a release' @args
}
Set-Alias -Name 'hst' -Value _alias_func_hst -Option AllScope -Force

# Roll a release back to a previous revision (e.g. 'hrb my-app 2')
function _alias_func_hrb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hrb' 'helm rollback' 'Roll a release back to a previous revision (e.g. ''hrb my-app 2'')' @args
}
Set-Alias -Name 'hrb' -Value _alias_func_hrb -Option AllScope -Force

# Update the information on available charts from the chart repositories
function _alias_func_hrepu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hrepu' 'helm repo update' 'Update the information on available charts from the chart repositories' @args
}
Set-Alias -Name 'hrepu' -Value _alias_func_hrepu -Option AllScope -Force
