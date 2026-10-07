# Generated content — do not edit directly.
# Edit alias_omz_kubectl.yaml and re-run YAFFA generator.

# Check that kubectl is on PATH
function _alias_func_req_omz_kubectl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_kubectl' -Value _alias_func_req_omz_kubectl -Option AllScope -Force

# Short alias for kubectl
function _alias_func_k {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'k' 'kubectl' 'Short alias for kubectl' @args
}
Set-Alias -Name 'k' -Value _alias_func_k -Option AllScope -Force

# List pods in the current namespace
function _alias_func_kgp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgp' 'kubectl get pods' 'List pods in the current namespace' @args
}
Set-Alias -Name 'kgp' -Value _alias_func_kgp -Option AllScope -Force

# List pods across all namespaces
function _alias_func_kgpa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgpa' 'kubectl get pods --all-namespaces' 'List pods across all namespaces' @args
}
Set-Alias -Name 'kgpa' -Value _alias_func_kgpa -Option AllScope -Force

# List services in the current namespace
function _alias_func_kgs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgs' 'kubectl get svc' 'List services in the current namespace' @args
}
Set-Alias -Name 'kgs' -Value _alias_func_kgs -Option AllScope -Force

# List ingresses in the current namespace
function _alias_func_kgi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgi' 'kubectl get ingress' 'List ingresses in the current namespace' @args
}
Set-Alias -Name 'kgi' -Value _alias_func_kgi -Option AllScope -Force

# List configmaps in the current namespace
function _alias_func_kgcm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgcm' 'kubectl get configmaps' 'List configmaps in the current namespace' @args
}
Set-Alias -Name 'kgcm' -Value _alias_func_kgcm -Option AllScope -Force

# List secrets in the current namespace
function _alias_func_kgsec {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgsec' 'kubectl get secret' 'List secrets in the current namespace' @args
}
Set-Alias -Name 'kgsec' -Value _alias_func_kgsec -Option AllScope -Force

# List deployments in the current namespace
function _alias_func_kgd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgd' 'kubectl get deployment' 'List deployments in the current namespace' @args
}
Set-Alias -Name 'kgd' -Value _alias_func_kgd -Option AllScope -Force

# List statefulsets in the current namespace
function _alias_func_kgss {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgss' 'kubectl get statefulset' 'List statefulsets in the current namespace' @args
}
Set-Alias -Name 'kgss' -Value _alias_func_kgss -Option AllScope -Force

# List jobs in the current namespace
function _alias_func_kgj {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgj' 'kubectl get job' 'List jobs in the current namespace' @args
}
Set-Alias -Name 'kgj' -Value _alias_func_kgj -Option AllScope -Force

# List cronjobs in the current namespace
function _alias_func_kgcj {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgcj' 'kubectl get cronjob' 'List cronjobs in the current namespace' @args
}
Set-Alias -Name 'kgcj' -Value _alias_func_kgcj -Option AllScope -Force

# List persistent volume claims in the current namespace
function _alias_func_kgpvc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgpvc' 'kubectl get pvc' 'List persistent volume claims in the current namespace' @args
}
Set-Alias -Name 'kgpvc' -Value _alias_func_kgpvc -Option AllScope -Force

# List cluster nodes
function _alias_func_kgno {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgno' 'kubectl get nodes' 'List cluster nodes' @args
}
Set-Alias -Name 'kgno' -Value _alias_func_kgno -Option AllScope -Force

# List all common resources in the current namespace
function _alias_func_kga {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kga' 'kubectl get all' 'List all common resources in the current namespace' @args
}
Set-Alias -Name 'kga' -Value _alias_func_kga -Option AllScope -Force

# List all common resources across all namespaces
function _alias_func_kgaa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgaa' 'kubectl get all --all-namespaces' 'List all common resources across all namespaces' @args
}
Set-Alias -Name 'kgaa' -Value _alias_func_kgaa -Option AllScope -Force

# List namespaces
function _alias_func_kgns {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kgns' 'kubectl get namespaces' 'List namespaces' @args
}
Set-Alias -Name 'kgns' -Value _alias_func_kgns -Option AllScope -Force

# Show detailed state of a pod
function _alias_func_kdp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kdp' 'kubectl describe pods' 'Show detailed state of a pod' @args
}
Set-Alias -Name 'kdp' -Value _alias_func_kdp -Option AllScope -Force

# Show detailed state of a deployment
function _alias_func_kdd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kdd' 'kubectl describe deployment' 'Show detailed state of a deployment' @args
}
Set-Alias -Name 'kdd' -Value _alias_func_kdd -Option AllScope -Force

# Show logs for a pod
function _alias_func_kl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kl' 'kubectl logs' 'Show logs for a pod' @args
}
Set-Alias -Name 'kl' -Value _alias_func_kl -Option AllScope -Force

# Follow (stream) logs for a pod
function _alias_func_klf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'klf' 'kubectl logs -f' 'Follow (stream) logs for a pod' @args
}
Set-Alias -Name 'klf' -Value _alias_func_klf -Option AllScope -Force

# Open an interactive shell/command in a pod (e.g. 'kex my-pod -- sh')
function _alias_func_keti {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'keti' 'kubectl exec -t -i' 'Open an interactive shell/command in a pod (e.g. ''kex my-pod -- sh'')' @args
}
Set-Alias -Name 'keti' -Value _alias_func_keti -Option AllScope -Force

# Apply a manifest file or directory
function _alias_func_kaf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kaf' 'kubectl apply -f' 'Apply a manifest file or directory' @args
}
Set-Alias -Name 'kaf' -Value _alias_func_kaf -Option AllScope -Force

# Apply a kustomization directory (e.g. 'kapk overlays/dev')
function _alias_func_kapk {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kapk' 'kubectl apply -k' 'Apply a kustomization directory (e.g. ''kapk overlays/dev'')' @args
}
Set-Alias -Name 'kapk' -Value _alias_func_kapk -Option AllScope -Force

# Delete a resource — irreversible (e.g. 'kdel pod my-pod')
function _alias_func_kdel {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kdel' 'kubectl delete' 'Delete a resource — irreversible (e.g. ''kdel pod my-pod'')' @args
}
Set-Alias -Name 'kdel' -Value _alias_func_kdel -Option AllScope -Force

# Delete the resources in a manifest file or directory — irreversible
function _alias_func_kdelf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kdelf' 'kubectl delete -f' 'Delete the resources in a manifest file or directory — irreversible' @args
}
Set-Alias -Name 'kdelf' -Value _alias_func_kdelf -Option AllScope -Force

# List available kubeconfig contexts
function _alias_func_kcgc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kcgc' 'kubectl config get-contexts' 'List available kubeconfig contexts' @args
}
Set-Alias -Name 'kcgc' -Value _alias_func_kcgc -Option AllScope -Force

# Show the active kubeconfig context
function _alias_func_kccc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kccc' 'kubectl config current-context' 'Show the active kubeconfig context' @args
}
Set-Alias -Name 'kccc' -Value _alias_func_kccc -Option AllScope -Force

# Switch the active kubeconfig context
function _alias_func_kcuc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kcuc' 'kubectl config use-context' 'Switch the active kubeconfig context' @args
}
Set-Alias -Name 'kcuc' -Value _alias_func_kcuc -Option AllScope -Force

# Switch the active namespace for the current context
function _alias_func_kcn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kcn' 'kubectl config set-context --current --namespace' 'Switch the active namespace for the current context' @args
}
Set-Alias -Name 'kcn' -Value _alias_func_kcn -Option AllScope -Force

# Show the rollout history of a deployment/statefulset (e.g. 'krh deployment my-app')
function _alias_func_krh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'krh' 'kubectl rollout history' 'Show the rollout history of a deployment/statefulset (e.g. ''krh deployment my-app'')' @args
}
Set-Alias -Name 'krh' -Value _alias_func_krh -Option AllScope -Force

# Roll back to the previous revision (e.g. 'kru deployment my-app')
function _alias_func_kru {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kru' 'kubectl rollout undo' 'Roll back to the previous revision (e.g. ''kru deployment my-app'')' @args
}
Set-Alias -Name 'kru' -Value _alias_func_kru -Option AllScope -Force

# Forward a local port to a pod/service (e.g. 'kpf pod/my-pod 8080:80')
function _alias_func_kpf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kpf' 'kubectl port-forward' 'Forward a local port to a pod/service (e.g. ''kpf pod/my-pod 8080:80'')' @args
}
Set-Alias -Name 'kpf' -Value _alias_func_kpf -Option AllScope -Force

# Copy files to or from a container (e.g. 'kcp my-pod:/tmp/log.txt ./log.txt')
function _alias_func_kcp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'kubectl' 'kubectl not on PATH — install kubectl first' '' '' 'abort')) { return }
  _YaffaCall 'kcp' 'kubectl cp' 'Copy files to or from a container (e.g. ''kcp my-pod:/tmp/log.txt ./log.txt'')' @args
}
Set-Alias -Name 'kcp' -Value _alias_func_kcp -Option AllScope -Force
