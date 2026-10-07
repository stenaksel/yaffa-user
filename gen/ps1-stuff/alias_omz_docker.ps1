# Generated content — do not edit directly.
# Edit alias_omz_docker.yaml and re-run YAFFA generator.

# Check that docker is on PATH
function _alias_func_req_omz_docker {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_docker' -Value _alias_func_req_omz_docker -Option AllScope -Force

# Build an image from a Dockerfile
function _alias_func_dbl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dbl' 'docker build' 'Build an image from a Dockerfile' @args
}
Set-Alias -Name 'dbl' -Value _alias_func_dbl -Option AllScope -Force

# Build an image from a Dockerfile (same as docker build)
function _alias_func_dib {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dib' 'docker image build' 'Build an image from a Dockerfile (same as docker build)' @args
}
Set-Alias -Name 'dib' -Value _alias_func_dib -Option AllScope -Force

# Display detailed information on one or more images
function _alias_func_dii {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dii' 'docker image inspect' 'Display detailed information on one or more images' @args
}
Set-Alias -Name 'dii' -Value _alias_func_dii -Option AllScope -Force

# List docker images
function _alias_func_dils {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dils' 'docker image ls' 'List docker images' @args
}
Set-Alias -Name 'dils' -Value _alias_func_dils -Option AllScope -Force

# Push an image or repository to a remote registry
function _alias_func_dipu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dipu' 'docker image push' 'Push an image or repository to a remote registry' @args
}
Set-Alias -Name 'dipu' -Value _alias_func_dipu -Option AllScope -Force

# Pull an image or a repository from a registry
function _alias_func_dpu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dpu' 'docker pull' 'Pull an image or a repository from a registry' @args
}
Set-Alias -Name 'dpu' -Value _alias_func_dpu -Option AllScope -Force

# Add a name and tag to a particular image
function _alias_func_dit {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dit' 'docker image tag' 'Add a name and tag to a particular image' @args
}
Set-Alias -Name 'dit' -Value _alias_func_dit -Option AllScope -Force

# Remove one or more images
function _alias_func_dirm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dirm' 'docker image rm' 'Remove one or more images' @args
}
Set-Alias -Name 'dirm' -Value _alias_func_dirm -Option AllScope -Force

# Remove all images not referenced by any container — irreversible
function _alias_func_dipru {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dipru' 'docker image prune -a' 'Remove all images not referenced by any container — irreversible' @args
}
Set-Alias -Name 'dipru' -Value _alias_func_dipru -Option AllScope -Force

# List the running containers
function _alias_func_dps {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dps' 'docker ps' 'List the running containers' @args
}
Set-Alias -Name 'dps' -Value _alias_func_dps -Option AllScope -Force

# List all containers, running and stopped
function _alias_func_dpsa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dpsa' 'docker ps -a' 'List all containers, running and stopped' @args
}
Set-Alias -Name 'dpsa' -Value _alias_func_dpsa -Option AllScope -Force

# List the running containers (same as docker ps)
function _alias_func_dcls {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcls' 'docker container ls' 'List the running containers (same as docker ps)' @args
}
Set-Alias -Name 'dcls' -Value _alias_func_dcls -Option AllScope -Force

# List all containers, running and stopped (same as docker ps -a)
function _alias_func_dclsa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dclsa' 'docker container ls -a' 'List all containers, running and stopped (same as docker ps -a)' @args
}
Set-Alias -Name 'dclsa' -Value _alias_func_dclsa -Option AllScope -Force

# Display detailed information on one or more containers
function _alias_func_dcin {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcin' 'docker container inspect' 'Display detailed information on one or more containers' @args
}
Set-Alias -Name 'dcin' -Value _alias_func_dcin -Option AllScope -Force

# Create a new container and start it using the specified command
function _alias_func_dr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dr' 'docker container run' 'Create a new container and start it using the specified command' @args
}
Set-Alias -Name 'dr' -Value _alias_func_dr -Option AllScope -Force

# Create a new container and start it in an interactive shell
function _alias_func_drit {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'drit' 'docker container run -it' 'Create a new container and start it in an interactive shell' @args
}
Set-Alias -Name 'drit' -Value _alias_func_drit -Option AllScope -Force

# Run a new command in a running container
function _alias_func_dxc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dxc' 'docker container exec' 'Run a new command in a running container' @args
}
Set-Alias -Name 'dxc' -Value _alias_func_dxc -Option AllScope -Force

# Run a new command in a running container in an interactive shell (e.g. 'dxcit my-app sh')
function _alias_func_dxcit {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dxcit' 'docker container exec -it' 'Run a new command in a running container in an interactive shell (e.g. ''dxcit my-app sh'')' @args
}
Set-Alias -Name 'dxcit' -Value _alias_func_dxcit -Option AllScope -Force

# Fetch the logs of a container
function _alias_func_dlo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dlo' 'docker container logs' 'Fetch the logs of a container' @args
}
Set-Alias -Name 'dlo' -Value _alias_func_dlo -Option AllScope -Force

# List port mappings or a specific mapping for the container
function _alias_func_dpo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dpo' 'docker container port' 'List port mappings or a specific mapping for the container' @args
}
Set-Alias -Name 'dpo' -Value _alias_func_dpo -Option AllScope -Force

# Start one or more stopped containers
function _alias_func_dst {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dst' 'docker container start' 'Start one or more stopped containers' @args
}
Set-Alias -Name 'dst' -Value _alias_func_dst -Option AllScope -Force

# Restart one or more containers
function _alias_func_drs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'drs' 'docker container restart' 'Restart one or more containers' @args
}
Set-Alias -Name 'drs' -Value _alias_func_drs -Option AllScope -Force

# Stop one or more running containers
function _alias_func_dstp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dstp' 'docker container stop' 'Stop one or more running containers' @args
}
Set-Alias -Name 'dstp' -Value _alias_func_dstp -Option AllScope -Force

# Stop all running containers
function _alias_func_dsta {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dsta' 'docker stop (docker ps -q)' 'Stop all running containers' @args
}
Set-Alias -Name 'dsta' -Value _alias_func_dsta -Option AllScope -Force

# Remove the specified container(s)
function _alias_func_drm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'drm' 'docker container rm' 'Remove the specified container(s)' @args
}
Set-Alias -Name 'drm' -Value _alias_func_drm -Option AllScope -Force

# Remove all stopped containers — irreversible
function _alias_func_dcprune {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dcprune' 'docker container prune' 'Remove all stopped containers — irreversible' @args
}
Set-Alias -Name 'dcprune' -Value _alias_func_dcprune -Option AllScope -Force

# Display real-time streaming statistics for containers
function _alias_func_dsts {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dsts' 'docker stats' 'Display real-time streaming statistics for containers' @args
}
Set-Alias -Name 'dsts' -Value _alias_func_dsts -Option AllScope -Force

# Display the running processes of a container
function _alias_func_dtop {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dtop' 'docker top' 'Display the running processes of a container' @args
}
Set-Alias -Name 'dtop' -Value _alias_func_dtop -Option AllScope -Force

# List all networks the engine daemon knows about
function _alias_func_dnls {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dnls' 'docker network ls' 'List all networks the engine daemon knows about' @args
}
Set-Alias -Name 'dnls' -Value _alias_func_dnls -Option AllScope -Force

# Return information about one or more networks
function _alias_func_dni {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dni' 'docker network inspect' 'Return information about one or more networks' @args
}
Set-Alias -Name 'dni' -Value _alias_func_dni -Option AllScope -Force

# Create a new network
function _alias_func_dnc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dnc' 'docker network create' 'Create a new network' @args
}
Set-Alias -Name 'dnc' -Value _alias_func_dnc -Option AllScope -Force

# Connect a container to a network
function _alias_func_dncn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dncn' 'docker network connect' 'Connect a container to a network' @args
}
Set-Alias -Name 'dncn' -Value _alias_func_dncn -Option AllScope -Force

# Disconnect a container from a network
function _alias_func_dndcn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dndcn' 'docker network disconnect' 'Disconnect a container from a network' @args
}
Set-Alias -Name 'dndcn' -Value _alias_func_dndcn -Option AllScope -Force

# Remove one or more networks
function _alias_func_dnrm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dnrm' 'docker network rm' 'Remove one or more networks' @args
}
Set-Alias -Name 'dnrm' -Value _alias_func_dnrm -Option AllScope -Force

# Remove all unused networks
function _alias_func_dnprune {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dnprune' 'docker network prune' 'Remove all unused networks' @args
}
Set-Alias -Name 'dnprune' -Value _alias_func_dnprune -Option AllScope -Force

# List all the volumes known to docker
function _alias_func_dvls {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dvls' 'docker volume ls' 'List all the volumes known to docker' @args
}
Set-Alias -Name 'dvls' -Value _alias_func_dvls -Option AllScope -Force

# Display detailed information about one or more volumes
function _alias_func_dvi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dvi' 'docker volume inspect' 'Display detailed information about one or more volumes' @args
}
Set-Alias -Name 'dvi' -Value _alias_func_dvi -Option AllScope -Force

# Remove all unused local volumes — irreversible
function _alias_func_dvprune {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dvprune' 'docker volume prune' 'Remove all unused local volumes — irreversible' @args
}
Set-Alias -Name 'dvprune' -Value _alias_func_dvprune -Option AllScope -Force

# Remove all unused containers, networks and dangling images — irreversible
function _alias_func_dsprune {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'docker' 'docker not on PATH — install Docker first' '' '' 'abort')) { return }
  _YaffaCall 'dsprune' 'docker system prune' 'Remove all unused containers, networks and dangling images — irreversible' @args
}
Set-Alias -Name 'dsprune' -Value _alias_func_dsprune -Option AllScope -Force
