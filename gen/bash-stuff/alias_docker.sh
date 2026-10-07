# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_docker.yaml and re-run YAFFA generator.

# Check that docker is on PATH
_alias_func_req_docker() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
}
alias req_docker='_alias_func_req_docker req_docker'

# Force the removal of a running container (uses SIGKILL)
_alias_func_drmf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container rm -f' 'Force the removal of a running container (uses SIGKILL)' "$@"
}
alias drmf='_alias_func_drmf drmf'

# Follow only new log output (no history)
_alias_func_dclft() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker compose logs -f --tail 0' 'Follow only new log output (no history)' "$@"
}
alias dclft='_alias_func_dclft dclft'
