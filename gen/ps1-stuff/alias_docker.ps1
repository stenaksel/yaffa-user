# Generated content — do not edit directly.
# Edit alias_docker.yaml and re-run YAFFA generator.

# Check that docker is on PATH
function _alias_func_req_docker {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_docker' -Value _alias_func_req_docker -Option AllScope -Force

# Force the removal of a running container (uses SIGKILL)
function _alias_func_drmf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'drmf' 'docker container rm -f' 'Force the removal of a running container (uses SIGKILL)' @args
}
Set-Alias -Name 'drmf' -Value _alias_func_drmf -Option AllScope -Force

# Follow only new log output (no history)
function _alias_func_dclft {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dclft' 'docker compose logs -f --tail 0' 'Follow only new log output (no history)' @args
}
Set-Alias -Name 'dclft' -Value _alias_func_dclft -Option AllScope -Force
