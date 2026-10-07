# Generated content — do not edit directly.
# Edit alias_omz_docker-compose.yaml and re-run YAFFA generator.

# Check that docker is on PATH
function _alias_func_req_omz_docker_compose {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_docker_compose' -Value _alias_func_req_omz_docker_compose -Option AllScope -Force

# Docker Compose main command (e.g. 'dco ls')
function _alias_func_dco {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dco' 'docker compose' 'Docker Compose main command (e.g. ''dco ls'')' @args
}
Set-Alias -Name 'dco' -Value _alias_func_dco -Option AllScope -Force

# Build, (re)create, start, and attach to containers for a service
function _alias_func_dcup {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcup' 'docker compose up' 'Build, (re)create, start, and attach to containers for a service' @args
}
Set-Alias -Name 'dcup' -Value _alias_func_dcup -Option AllScope -Force

# Same as 'dcup', but detached (in the background)
function _alias_func_dcupd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcupd' 'docker compose up -d' 'Same as ''dcup'', but detached (in the background)' @args
}
Set-Alias -Name 'dcupd' -Value _alias_func_dcupd -Option AllScope -Force

# Same as 'dcup', but build images before starting containers
function _alias_func_dcupb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcupb' 'docker compose up --build' 'Same as ''dcup'', but build images before starting containers' @args
}
Set-Alias -Name 'dcupb' -Value _alias_func_dcupb -Option AllScope -Force

# Same as 'dcup', but build images before starting containers, detached
function _alias_func_dcupdb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcupdb' 'docker compose up -d --build' 'Same as ''dcup'', but build images before starting containers, detached' @args
}
Set-Alias -Name 'dcupdb' -Value _alias_func_dcupdb -Option AllScope -Force

# Stop and remove the containers and networks of the project
function _alias_func_dcdn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcdn' 'docker compose down' 'Stop and remove the containers and networks of the project' @args
}
Set-Alias -Name 'dcdn' -Value _alias_func_dcdn -Option AllScope -Force

# Build or rebuild the services' images
function _alias_func_dcb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcb' 'docker compose build' 'Build or rebuild the services'' images' @args
}
Set-Alias -Name 'dcb' -Value _alias_func_dcb -Option AllScope -Force

# Parse, resolve and render the compose file in canonical format
function _alias_func_dcc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcc' 'docker compose config' 'Parse, resolve and render the compose file in canonical format' @args
}
Set-Alias -Name 'dcc' -Value _alias_func_dcc -Option AllScope -Force

# Execute a command inside a running service container
function _alias_func_dce {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dce' 'docker compose exec' 'Execute a command inside a running service container' @args
}
Set-Alias -Name 'dce' -Value _alias_func_dce -Option AllScope -Force

# Run a one-off command in a new service container
function _alias_func_dcr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcr' 'docker compose run' 'Run a one-off command in a new service container' @args
}
Set-Alias -Name 'dcr' -Value _alias_func_dcr -Option AllScope -Force

# List the project's containers
function _alias_func_dcps {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcps' 'docker compose ps' 'List the project''s containers' @args
}
Set-Alias -Name 'dcps' -Value _alias_func_dcps -Option AllScope -Force

# List the images used by the project's containers
function _alias_func_dci {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dci' 'docker compose images' 'List the images used by the project''s containers' @args
}
Set-Alias -Name 'dci' -Value _alias_func_dci -Option AllScope -Force

# Show the logs of the project's containers
function _alias_func_dcl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcl' 'docker compose logs' 'Show the logs of the project''s containers' @args
}
Set-Alias -Name 'dcl' -Value _alias_func_dcl -Option AllScope -Force

# Show the logs and follow the output
function _alias_func_dclf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dclf' 'docker compose logs -f' 'Show the logs and follow the output' @args
}
Set-Alias -Name 'dclf' -Value _alias_func_dclf -Option AllScope -Force

# Start existing service containers
function _alias_func_dcstart {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcstart' 'docker compose start' 'Start existing service containers' @args
}
Set-Alias -Name 'dcstart' -Value _alias_func_dcstart -Option AllScope -Force

# Stop running service containers without removing them
function _alias_func_dcstop {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcstop' 'docker compose stop' 'Stop running service containers without removing them' @args
}
Set-Alias -Name 'dcstop' -Value _alias_func_dcstop -Option AllScope -Force

# Restart service containers
function _alias_func_dcrestart {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcrestart' 'docker compose restart' 'Restart service containers' @args
}
Set-Alias -Name 'dcrestart' -Value _alias_func_dcrestart -Option AllScope -Force

# Force-stop service containers
function _alias_func_dck {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dck' 'docker compose kill' 'Force-stop service containers' @args
}
Set-Alias -Name 'dck' -Value _alias_func_dck -Option AllScope -Force

# Remove stopped service containers
function _alias_func_dcrm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcrm' 'docker compose rm' 'Remove stopped service containers' @args
}
Set-Alias -Name 'dcrm' -Value _alias_func_dcrm -Option AllScope -Force

# Pull the services' images
function _alias_func_dcpull {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcpull' 'docker compose pull' 'Pull the services'' images' @args
}
Set-Alias -Name 'dcpull' -Value _alias_func_dcpull -Option AllScope -Force

# Display real-time resource usage of the project's containers
function _alias_func_dcsts {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcsts' 'docker compose stats' 'Display real-time resource usage of the project''s containers' @args
}
Set-Alias -Name 'dcsts' -Value _alias_func_dcsts -Option AllScope -Force

# Show the Docker Compose version
function _alias_func_dcv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcv' 'docker compose version' 'Show the Docker Compose version' @args
}
Set-Alias -Name 'dcv' -Value _alias_func_dcv -Option AllScope -Force
