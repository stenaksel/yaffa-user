# Generated content — do not edit directly.
# Edit alias_omz_helm.yaml and re-run YAFFA generator.

# Check that helm is on PATH
function _alias_func_req_omz_helm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_helm' -Value _alias_func_req_omz_helm -Option AllScope -Force

# Short alias for helm
function _alias_func_h {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'h' 'helm' 'Short alias for helm' @args
}
Set-Alias -Name 'h' -Value _alias_func_h -Option AllScope -Force

# Install a chart as a new release (e.g. 'hin my-app ./chart')
function _alias_func_hin {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hin' 'helm install' 'Install a chart as a new release (e.g. ''hin my-app ./chart'')' @args
}
Set-Alias -Name 'hin' -Value _alias_func_hin -Option AllScope -Force

# Upgrade a release to a new chart version or values (e.g. 'hup my-app ./chart -f values.yaml')
function _alias_func_hup {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hup' 'helm upgrade' 'Upgrade a release to a new chart version or values (e.g. ''hup my-app ./chart -f values.yaml'')' @args
}
Set-Alias -Name 'hup' -Value _alias_func_hup -Option AllScope -Force

# Uninstall a release — irreversible
function _alias_func_hun {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hun' 'helm uninstall' 'Uninstall a release — irreversible' @args
}
Set-Alias -Name 'hun' -Value _alias_func_hun -Option AllScope -Force

# Search for charts (e.g. 'hse repo nginx' or 'hse hub nginx')
function _alias_func_hse {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'helm' 'helm not on PATH — install Helm first' '' '' 'abort')) { return }
  _YaffaCall 'hse' 'helm search' 'Search for charts (e.g. ''hse repo nginx'' or ''hse hub nginx'')' @args
}
Set-Alias -Name 'hse' -Value _alias_func_hse -Option AllScope -Force
