# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_kubectl.yaml and re-run YAFFA generator.

# Check that kubectl is on PATH
_alias_func_req_omz_kubectl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
}
alias req_omz_kubectl='_alias_func_req_omz_kubectl req_omz_kubectl'

# Short alias for kubectl
_alias_func_k() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl' 'Short alias for kubectl' "$@"
}
alias k='_alias_func_k k'

# List pods in the current namespace
_alias_func_kgp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get pods' 'List pods in the current namespace' "$@"
}
alias kgp='_alias_func_kgp kgp'

# List pods across all namespaces
_alias_func_kgpa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get pods --all-namespaces' 'List pods across all namespaces' "$@"
}
alias kgpa='_alias_func_kgpa kgpa'

# List services in the current namespace
_alias_func_kgs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get svc' 'List services in the current namespace' "$@"
}
alias kgs='_alias_func_kgs kgs'

# List ingresses in the current namespace
_alias_func_kgi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get ingress' 'List ingresses in the current namespace' "$@"
}
alias kgi='_alias_func_kgi kgi'

# List configmaps in the current namespace
_alias_func_kgcm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get configmaps' 'List configmaps in the current namespace' "$@"
}
alias kgcm='_alias_func_kgcm kgcm'

# List secrets in the current namespace
_alias_func_kgsec() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get secret' 'List secrets in the current namespace' "$@"
}
alias kgsec='_alias_func_kgsec kgsec'

# List deployments in the current namespace
_alias_func_kgd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get deployment' 'List deployments in the current namespace' "$@"
}
alias kgd='_alias_func_kgd kgd'

# List statefulsets in the current namespace
_alias_func_kgss() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get statefulset' 'List statefulsets in the current namespace' "$@"
}
alias kgss='_alias_func_kgss kgss'

# List jobs in the current namespace
_alias_func_kgj() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get job' 'List jobs in the current namespace' "$@"
}
alias kgj='_alias_func_kgj kgj'

# List cronjobs in the current namespace
_alias_func_kgcj() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get cronjob' 'List cronjobs in the current namespace' "$@"
}
alias kgcj='_alias_func_kgcj kgcj'

# List persistent volume claims in the current namespace
_alias_func_kgpvc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get pvc' 'List persistent volume claims in the current namespace' "$@"
}
alias kgpvc='_alias_func_kgpvc kgpvc'

# List cluster nodes
_alias_func_kgno() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get nodes' 'List cluster nodes' "$@"
}
alias kgno='_alias_func_kgno kgno'

# List all common resources in the current namespace
_alias_func_kga() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get all' 'List all common resources in the current namespace' "$@"
}
alias kga='_alias_func_kga kga'

# List all common resources across all namespaces
_alias_func_kgaa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get all --all-namespaces' 'List all common resources across all namespaces' "$@"
}
alias kgaa='_alias_func_kgaa kgaa'

# List namespaces
_alias_func_kgns() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl get namespaces' 'List namespaces' "$@"
}
alias kgns='_alias_func_kgns kgns'

# Show detailed state of a pod
_alias_func_kdp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl describe pods' 'Show detailed state of a pod' "$@"
}
alias kdp='_alias_func_kdp kdp'

# Show detailed state of a deployment
_alias_func_kdd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl describe deployment' 'Show detailed state of a deployment' "$@"
}
alias kdd='_alias_func_kdd kdd'

# Show logs for a pod
_alias_func_kl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl logs' 'Show logs for a pod' "$@"
}
alias kl='_alias_func_kl kl'

# Follow (stream) logs for a pod
_alias_func_klf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl logs -f' 'Follow (stream) logs for a pod' "$@"
}
alias klf='_alias_func_klf klf'

# Open an interactive shell/command in a pod (e.g. 'kex my-pod -- sh')
_alias_func_keti() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl exec -t -i' 'Open an interactive shell/command in a pod (e.g. '\''kex my-pod -- sh'\'')' "$@"
}
alias keti='_alias_func_keti keti'

# Apply a manifest file or directory
_alias_func_kaf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl apply -f' 'Apply a manifest file or directory' "$@"
}
alias kaf='_alias_func_kaf kaf'

# Apply a kustomization directory (e.g. 'kapk overlays/dev')
_alias_func_kapk() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl apply -k' 'Apply a kustomization directory (e.g. '\''kapk overlays/dev'\'')' "$@"
}
alias kapk='_alias_func_kapk kapk'

# Delete a resource — irreversible (e.g. 'kdel pod my-pod')
_alias_func_kdel() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl delete' 'Delete a resource — irreversible (e.g. '\''kdel pod my-pod'\'')' "$@"
}
alias kdel='_alias_func_kdel kdel'

# Delete the resources in a manifest file or directory — irreversible
_alias_func_kdelf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl delete -f' 'Delete the resources in a manifest file or directory — irreversible' "$@"
}
alias kdelf='_alias_func_kdelf kdelf'

# List available kubeconfig contexts
_alias_func_kcgc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config get-contexts' 'List available kubeconfig contexts' "$@"
}
alias kcgc='_alias_func_kcgc kcgc'

# Show the active kubeconfig context
_alias_func_kccc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config current-context' 'Show the active kubeconfig context' "$@"
}
alias kccc='_alias_func_kccc kccc'

# Switch the active kubeconfig context
_alias_func_kcuc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config use-context' 'Switch the active kubeconfig context' "$@"
}
alias kcuc='_alias_func_kcuc kcuc'

# Switch the active namespace for the current context
_alias_func_kcn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl config set-context --current --namespace' 'Switch the active namespace for the current context' "$@"
}
alias kcn='_alias_func_kcn kcn'

# Show the rollout history of a deployment/statefulset (e.g. 'krh deployment my-app')
_alias_func_krh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl rollout history' 'Show the rollout history of a deployment/statefulset (e.g. '\''krh deployment my-app'\'')' "$@"
}
alias krh='_alias_func_krh krh'

# Roll back to the previous revision (e.g. 'kru deployment my-app')
_alias_func_kru() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl rollout undo' 'Roll back to the previous revision (e.g. '\''kru deployment my-app'\'')' "$@"
}
alias kru='_alias_func_kru kru'

# Forward a local port to a pod/service (e.g. 'kpf pod/my-pod 8080:80')
_alias_func_kpf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl port-forward' 'Forward a local port to a pod/service (e.g. '\''kpf pod/my-pod 8080:80'\'')' "$@"
}
alias kpf='_alias_func_kpf kpf'

# Copy files to or from a container (e.g. 'kcp my-pod:/tmp/log.txt ./log.txt')
_alias_func_kcp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "kubectl" "kubectl not on PATH — install kubectl first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'kubectl cp' 'Copy files to or from a container (e.g. '\''kcp my-pod:/tmp/log.txt ./log.txt'\'')' "$@"
}
alias kcp='_alias_func_kcp kcp'
