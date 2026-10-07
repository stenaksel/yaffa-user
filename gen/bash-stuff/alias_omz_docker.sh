# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_docker.yaml and re-run YAFFA generator.

# Check that docker is on PATH
_alias_func_req_omz_docker() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
}
alias req_omz_docker='_alias_func_req_omz_docker req_omz_docker'

# Build an image from a Dockerfile
_alias_func_dbl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker build' 'Build an image from a Dockerfile' "$@"
}
alias dbl='_alias_func_dbl dbl'

# Build an image from a Dockerfile (same as docker build)
_alias_func_dib() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image build' 'Build an image from a Dockerfile (same as docker build)' "$@"
}
alias dib='_alias_func_dib dib'

# Display detailed information on one or more images
_alias_func_dii() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image inspect' 'Display detailed information on one or more images' "$@"
}
alias dii='_alias_func_dii dii'

# List docker images
_alias_func_dils() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image ls' 'List docker images' "$@"
}
alias dils='_alias_func_dils dils'

# Push an image or repository to a remote registry
_alias_func_dipu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image push' 'Push an image or repository to a remote registry' "$@"
}
alias dipu='_alias_func_dipu dipu'

# Pull an image or a repository from a registry
_alias_func_dpu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker pull' 'Pull an image or a repository from a registry' "$@"
}
alias dpu='_alias_func_dpu dpu'

# Add a name and tag to a particular image
_alias_func_dit() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image tag' 'Add a name and tag to a particular image' "$@"
}
alias dit='_alias_func_dit dit'

# Remove one or more images
_alias_func_dirm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image rm' 'Remove one or more images' "$@"
}
alias dirm='_alias_func_dirm dirm'

# Remove all images not referenced by any container — irreversible
_alias_func_dipru() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker image prune -a' 'Remove all images not referenced by any container — irreversible' "$@"
}
alias dipru='_alias_func_dipru dipru'

# List the running containers
_alias_func_dps() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker ps' 'List the running containers' "$@"
}
alias dps='_alias_func_dps dps'

# List all containers, running and stopped
_alias_func_dpsa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker ps -a' 'List all containers, running and stopped' "$@"
}
alias dpsa='_alias_func_dpsa dpsa'

# List the running containers (same as docker ps)
_alias_func_dcls() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container ls' 'List the running containers (same as docker ps)' "$@"
}
alias dcls='_alias_func_dcls dcls'

# List all containers, running and stopped (same as docker ps -a)
_alias_func_dclsa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container ls -a' 'List all containers, running and stopped (same as docker ps -a)' "$@"
}
alias dclsa='_alias_func_dclsa dclsa'

# Display detailed information on one or more containers
_alias_func_dcin() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container inspect' 'Display detailed information on one or more containers' "$@"
}
alias dcin='_alias_func_dcin dcin'

# Create a new container and start it using the specified command
_alias_func_dr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container run' 'Create a new container and start it using the specified command' "$@"
}
alias dr='_alias_func_dr dr'

# Create a new container and start it in an interactive shell
_alias_func_drit() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container run -it' 'Create a new container and start it in an interactive shell' "$@"
}
alias drit='_alias_func_drit drit'

# Run a new command in a running container
_alias_func_dxc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container exec' 'Run a new command in a running container' "$@"
}
alias dxc='_alias_func_dxc dxc'

# Run a new command in a running container in an interactive shell (e.g. 'dxcit my-app sh')
_alias_func_dxcit() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container exec -it' 'Run a new command in a running container in an interactive shell (e.g. '\''dxcit my-app sh'\'')' "$@"
}
alias dxcit='_alias_func_dxcit dxcit'

# Fetch the logs of a container
_alias_func_dlo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container logs' 'Fetch the logs of a container' "$@"
}
alias dlo='_alias_func_dlo dlo'

# List port mappings or a specific mapping for the container
_alias_func_dpo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container port' 'List port mappings or a specific mapping for the container' "$@"
}
alias dpo='_alias_func_dpo dpo'

# Start one or more stopped containers
_alias_func_dst() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container start' 'Start one or more stopped containers' "$@"
}
alias dst='_alias_func_dst dst'

# Restart one or more containers
_alias_func_drs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container restart' 'Restart one or more containers' "$@"
}
alias drs='_alias_func_drs drs'

# Stop one or more running containers
_alias_func_dstp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container stop' 'Stop one or more running containers' "$@"
}
alias dstp='_alias_func_dstp dstp'

# Stop all running containers
_alias_func_dsta() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker stop $(docker ps -q)' 'Stop all running containers' "$@"
}
alias dsta='_alias_func_dsta dsta'

# Remove the specified container(s)
_alias_func_drm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container rm' 'Remove the specified container(s)' "$@"
}
alias drm='_alias_func_drm drm'

# Remove all stopped containers — irreversible
_alias_func_dcprune() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker container prune' 'Remove all stopped containers — irreversible' "$@"
}
alias dcprune='_alias_func_dcprune dcprune'

# Display real-time streaming statistics for containers
_alias_func_dsts() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker stats' 'Display real-time streaming statistics for containers' "$@"
}
alias dsts='_alias_func_dsts dsts'

# Display the running processes of a container
_alias_func_dtop() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker top' 'Display the running processes of a container' "$@"
}
alias dtop='_alias_func_dtop dtop'

# List all networks the engine daemon knows about
_alias_func_dnls() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network ls' 'List all networks the engine daemon knows about' "$@"
}
alias dnls='_alias_func_dnls dnls'

# Return information about one or more networks
_alias_func_dni() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network inspect' 'Return information about one or more networks' "$@"
}
alias dni='_alias_func_dni dni'

# Create a new network
_alias_func_dnc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network create' 'Create a new network' "$@"
}
alias dnc='_alias_func_dnc dnc'

# Connect a container to a network
_alias_func_dncn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network connect' 'Connect a container to a network' "$@"
}
alias dncn='_alias_func_dncn dncn'

# Disconnect a container from a network
_alias_func_dndcn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network disconnect' 'Disconnect a container from a network' "$@"
}
alias dndcn='_alias_func_dndcn dndcn'

# Remove one or more networks
_alias_func_dnrm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network rm' 'Remove one or more networks' "$@"
}
alias dnrm='_alias_func_dnrm dnrm'

# Remove all unused networks
_alias_func_dnprune() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker network prune' 'Remove all unused networks' "$@"
}
alias dnprune='_alias_func_dnprune dnprune'

# List all the volumes known to docker
_alias_func_dvls() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker volume ls' 'List all the volumes known to docker' "$@"
}
alias dvls='_alias_func_dvls dvls'

# Display detailed information about one or more volumes
_alias_func_dvi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker volume inspect' 'Display detailed information about one or more volumes' "$@"
}
alias dvi='_alias_func_dvi dvi'

# Remove all unused local volumes — irreversible
_alias_func_dvprune() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker volume prune' 'Remove all unused local volumes — irreversible' "$@"
}
alias dvprune='_alias_func_dvprune dvprune'

# Remove all unused containers, networks and dangling images — irreversible
_alias_func_dsprune() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "docker" "docker not on PATH — install Docker first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'docker system prune' 'Remove all unused containers, networks and dangling images — irreversible' "$@"
}
alias dsprune='_alias_func_dsprune dsprune'
