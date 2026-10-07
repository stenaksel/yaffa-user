# Generated content — do not edit directly.
# Edit alias_k8s.yaml and re-run YAFFA generator.

# Check that kubectl is on PATH
function _alias_func_req_kubectl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_kubectl' -Value _alias_func_req_kubectl -Option AllScope -Force

# Get one or more resources (e.g. 'kg pods')
function _alias_func_kg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kg' 'kubectl get' 'Get one or more resources (e.g. ''kg pods'')' @args
}
Set-Alias -Name 'kg' -Value _alias_func_kg -Option AllScope -Force

# List pods with extra detail (node, IP)
function _alias_func_kgpw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgpw' 'kubectl get pods -o wide' 'List pods with extra detail (node, IP)' @args
}
Set-Alias -Name 'kgpw' -Value _alias_func_kgpw -Option AllScope -Force

# List cluster nodes
function _alias_func_kgn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgn' 'kubectl get nodes' 'List cluster nodes' @args
}
Set-Alias -Name 'kgn' -Value _alias_func_kgn -Option AllScope -Force

# Show detailed state of a resource (e.g. 'kd pod my-pod')
function _alias_func_kd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kd' 'kubectl describe' 'Show detailed state of a resource (e.g. ''kd pod my-pod'')' @args
}
Set-Alias -Name 'kd' -Value _alias_func_kd -Option AllScope -Force

# Open an interactive shell/command in a pod (e.g. 'kex my-pod -- sh')
function _alias_func_kex {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kex' 'kubectl exec -it' 'Open an interactive shell/command in a pod (e.g. ''kex my-pod -- sh'')' @args
}
Set-Alias -Name 'kex' -Value _alias_func_kex -Option AllScope -Force

# List available kubeconfig contexts
function _alias_func_kctx {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kctx' 'kubectl config get-contexts' 'List available kubeconfig contexts' @args
}
Set-Alias -Name 'kctx' -Value _alias_func_kctx -Option AllScope -Force

# Switch the active kubeconfig context
function _alias_func_kuc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kuc' 'kubectl config use-context' 'Switch the active kubeconfig context' @args
}
Set-Alias -Name 'kuc' -Value _alias_func_kuc -Option AllScope -Force

# Switch the active namespace for the current context
function _alias_func_kns {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kns' 'kubectl config set-context --current --namespace' 'Switch the active namespace for the current context' @args
}
Set-Alias -Name 'kns' -Value _alias_func_kns -Option AllScope -Force

# Show CPU/memory usage per node — requires metrics-server
function _alias_func_ktop {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'ktop' 'kubectl top nodes' 'Show CPU/memory usage per node — requires metrics-server' @args
}
Set-Alias -Name 'ktop' -Value _alias_func_ktop -Option AllScope -Force

# Show CPU/memory usage per pod — requires metrics-server
function _alias_func_ktopp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'ktopp' 'kubectl top pods' 'Show CPU/memory usage per pod — requires metrics-server' @args
}
Set-Alias -Name 'ktopp' -Value _alias_func_ktopp -Option AllScope -Force

# Restart a deployment/statefulset (e.g. 'krr deployment my-app')
function _alias_func_krr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'krr' 'kubectl rollout restart' 'Restart a deployment/statefulset (e.g. ''krr deployment my-app'')' @args
}
Set-Alias -Name 'krr' -Value _alias_func_krr -Option AllScope -Force

# Scale a resource (e.g. 'kcsc deployment my-app --replicas=3')
function _alias_func_kcsc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kcsc' 'kubectl scale' 'Scale a resource (e.g. ''kcsc deployment my-app --replicas=3'')' @args
}
Set-Alias -Name 'kcsc' -Value _alias_func_kcsc -Option AllScope -Force

# Create or modify a kubeconfig context entry
function _alias_func_ksc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'ksc' 'kubectl config set-context' 'Create or modify a kubeconfig context entry' @args
}
Set-Alias -Name 'ksc' -Value _alias_func_ksc -Option AllScope -Force

# List cluster events, oldest first
function _alias_func_kev {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kev' 'kubectl get events --sort-by=.metadata.creationTimestamp' 'List cluster events, oldest first' @args
}
Set-Alias -Name 'kev' -Value _alias_func_kev -Option AllScope -Force
