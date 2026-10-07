# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_k8s.yaml and re-run YAFFA generator.

# Check that kubectl is on PATH
_alias_func_req_kubectl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
}
alias req_kubectl='_alias_func_req_kubectl req_kubectl'

# Get one or more resources (e.g. 'kg pods')
_alias_func_kg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get' 'Get one or more resources (e.g. '\''kg pods'\'')' "$@"
}
alias kg='_alias_func_kg kg'

# List pods with extra detail (node, IP)
_alias_func_kgpw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get pods -o wide' 'List pods with extra detail (node, IP)' "$@"
}
alias kgpw='_alias_func_kgpw kgpw'

# List cluster nodes
_alias_func_kgn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get nodes' 'List cluster nodes' "$@"
}
alias kgn='_alias_func_kgn kgn'

# Show detailed state of a resource (e.g. 'kd pod my-pod')
_alias_func_kd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl describe' 'Show detailed state of a resource (e.g. '\''kd pod my-pod'\'')' "$@"
}
alias kd='_alias_func_kd kd'

# Open an interactive shell/command in a pod (e.g. 'kex my-pod -- sh')
_alias_func_kex() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl exec -it' 'Open an interactive shell/command in a pod (e.g. '\''kex my-pod -- sh'\'')' "$@"
}
alias kex='_alias_func_kex kex'

# List available kubeconfig contexts
_alias_func_kctx() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config get-contexts' 'List available kubeconfig contexts' "$@"
}
alias kctx='_alias_func_kctx kctx'

# Switch the active kubeconfig context
_alias_func_kuc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config use-context' 'Switch the active kubeconfig context' "$@"
}
alias kuc='_alias_func_kuc kuc'

# Switch the active namespace for the current context
_alias_func_kns() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config set-context --current --namespace' 'Switch the active namespace for the current context' "$@"
}
alias kns='_alias_func_kns kns'

# Show CPU/memory usage per node — requires metrics-server
_alias_func_ktop() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl top nodes' 'Show CPU/memory usage per node — requires metrics-server' "$@"
}
alias ktop='_alias_func_ktop ktop'

# Show CPU/memory usage per pod — requires metrics-server
_alias_func_ktopp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl top pods' 'Show CPU/memory usage per pod — requires metrics-server' "$@"
}
alias ktopp='_alias_func_ktopp ktopp'

# Restart a deployment/statefulset (e.g. 'krr deployment my-app')
_alias_func_krr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl rollout restart' 'Restart a deployment/statefulset (e.g. '\''krr deployment my-app'\'')' "$@"
}
alias krr='_alias_func_krr krr'

# Scale a resource (e.g. 'kcsc deployment my-app --replicas=3')
_alias_func_kcsc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl scale' 'Scale a resource (e.g. '\''kcsc deployment my-app --replicas=3'\'')' "$@"
}
alias kcsc='_alias_func_kcsc kcsc'

# Create or modify a kubeconfig context entry
_alias_func_ksc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config set-context' 'Create or modify a kubeconfig context entry' "$@"
}
alias ksc='_alias_func_ksc ksc'

# List cluster events, oldest first
_alias_func_kev() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get events --sort-by=.metadata.creationTimestamp' 'List cluster events, oldest first' "$@"
}
alias kev='_alias_func_kev kev'
