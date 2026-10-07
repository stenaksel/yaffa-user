# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_docker-compose.yaml and re-run YAFFA generator.

# Check that docker is on PATH
_alias_func_req_omz_docker_compose() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
}
alias req_omz_docker_compose='_alias_func_req_omz_docker_compose req_omz_docker_compose'

# Docker Compose main command (e.g. 'dco ls')
_alias_func_dco() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose' 'Docker Compose main command (e.g. '\''dco ls'\'')' "$@"
}
alias dco='_alias_func_dco dco'

# Build, (re)create, start, and attach to containers for a service
_alias_func_dcup() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose up' 'Build, (re)create, start, and attach to containers for a service' "$@"
}
alias dcup='_alias_func_dcup dcup'

# Same as 'dcup', but detached (in the background)
_alias_func_dcupd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose up -d' 'Same as '\''dcup'\'', but detached (in the background)' "$@"
}
alias dcupd='_alias_func_dcupd dcupd'

# Same as 'dcup', but build images before starting containers
_alias_func_dcupb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose up --build' 'Same as '\''dcup'\'', but build images before starting containers' "$@"
}
alias dcupb='_alias_func_dcupb dcupb'

# Same as 'dcup', but build images before starting containers, detached
_alias_func_dcupdb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose up -d --build' 'Same as '\''dcup'\'', but build images before starting containers, detached' "$@"
}
alias dcupdb='_alias_func_dcupdb dcupdb'

# Stop and remove the containers and networks of the project
_alias_func_dcdn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose down' 'Stop and remove the containers and networks of the project' "$@"
}
alias dcdn='_alias_func_dcdn dcdn'

# Build or rebuild the services' images
_alias_func_dcb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose build' 'Build or rebuild the services'\'' images' "$@"
}
alias dcb='_alias_func_dcb dcb'

# Parse, resolve and render the compose file in canonical format
_alias_func_dcc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose config' 'Parse, resolve and render the compose file in canonical format' "$@"
}
alias dcc='_alias_func_dcc dcc'

# Execute a command inside a running service container
_alias_func_dce() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose exec' 'Execute a command inside a running service container' "$@"
}
alias dce='_alias_func_dce dce'

# Run a one-off command in a new service container
_alias_func_dcr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose run' 'Run a one-off command in a new service container' "$@"
}
alias dcr='_alias_func_dcr dcr'

# List the project's containers
_alias_func_dcps() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose ps' 'List the project'\''s containers' "$@"
}
alias dcps='_alias_func_dcps dcps'

# List the images used by the project's containers
_alias_func_dci() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose images' 'List the images used by the project'\''s containers' "$@"
}
alias dci='_alias_func_dci dci'

# Show the logs of the project's containers
_alias_func_dcl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose logs' 'Show the logs of the project'\''s containers' "$@"
}
alias dcl='_alias_func_dcl dcl'

# Show the logs and follow the output
_alias_func_dclf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose logs -f' 'Show the logs and follow the output' "$@"
}
alias dclf='_alias_func_dclf dclf'

# Start existing service containers
_alias_func_dcstart() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose start' 'Start existing service containers' "$@"
}
alias dcstart='_alias_func_dcstart dcstart'

# Stop running service containers without removing them
_alias_func_dcstop() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose stop' 'Stop running service containers without removing them' "$@"
}
alias dcstop='_alias_func_dcstop dcstop'

# Restart service containers
_alias_func_dcrestart() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose restart' 'Restart service containers' "$@"
}
alias dcrestart='_alias_func_dcrestart dcrestart'

# Force-stop service containers
_alias_func_dck() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose kill' 'Force-stop service containers' "$@"
}
alias dck='_alias_func_dck dck'

# Remove stopped service containers
_alias_func_dcrm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose rm' 'Remove stopped service containers' "$@"
}
alias dcrm='_alias_func_dcrm dcrm'

# Pull the services' images
_alias_func_dcpull() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose pull' 'Pull the services'\'' images' "$@"
}
alias dcpull='_alias_func_dcpull dcpull'

# Display real-time resource usage of the project's containers
_alias_func_dcsts() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose stats' 'Display real-time resource usage of the project'\''s containers' "$@"
}
alias dcsts='_alias_func_dcsts dcsts'

# Show the Docker Compose version
_alias_func_dcv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose version' 'Show the Docker Compose version' "$@"
}
alias dcv='_alias_func_dcv dcv'
