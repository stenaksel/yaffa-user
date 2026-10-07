# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_gh.yaml and re-run YAFFA generator.

# Check that gh (GitHub CLI) is on PATH
_alias_func_req_gh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
}
alias req_gh='_alias_func_req_gh req_gh'

# Show your assigned issues, review requests, mentions and notifications across repositories
_alias_func_ghst() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh status' 'Show your assigned issues, review requests, mentions and notifications across repositories' "$@"
}
alias ghst='_alias_func_ghst ghst'

# Open the current repository (or a file, issue or PR number) in the browser
_alias_func_ghb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh browse' 'Open the current repository (or a file, issue or PR number) in the browser' "$@"
}
alias ghb='_alias_func_ghb ghb'

# Show the current repository's description and README (--web to open it)
_alias_func_ghrv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh repo view' 'Show the current repository'\''s description and README (--web to open it)' "$@"
}
alias ghrv='_alias_func_ghrv ghrv'

# Clone a GitHub repository (e.g. 'ghrc owner/repo')
_alias_func_ghrc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh repo clone' 'Clone a GitHub repository (e.g. '\''ghrc owner/repo'\'')' "$@"
}
alias ghrc='_alias_func_ghrc ghrc'

# List the open pull requests in the current repository
_alias_func_ghprl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr list' 'List the open pull requests in the current repository' "$@"
}
alias ghprl='_alias_func_ghprl ghprl'

# Show the status of your pull requests and the current branch's
_alias_func_ghprs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr status' 'Show the status of your pull requests and the current branch'\''s' "$@"
}
alias ghprs='_alias_func_ghprs ghprs'

# Show the current branch's pull request (or one by number)
_alias_func_ghprv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr view' 'Show the current branch'\''s pull request (or one by number)' "$@"
}
alias ghprv='_alias_func_ghprv ghprv'

# Open the current branch's pull request (or one by number) in the browser
_alias_func_ghprw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr view --web' 'Open the current branch'\''s pull request (or one by number) in the browser' "$@"
}
alias ghprw='_alias_func_ghprw ghprw'

# Create a pull request for the current branch
_alias_func_ghprc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr create' 'Create a pull request for the current branch' "$@"
}
alias ghprc='_alias_func_ghprc ghprc'

# Create a pull request, taking the title and body from the commits
_alias_func_ghprcf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr create --fill' 'Create a pull request, taking the title and body from the commits' "$@"
}
alias ghprcf='_alias_func_ghprcf ghprcf'

# Check out a pull request's branch locally (e.g. 'ghprco 42')
_alias_func_ghprco() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr checkout' 'Check out a pull request'\''s branch locally (e.g. '\''ghprco 42'\'')' "$@"
}
alias ghprco='_alias_func_ghprco ghprco'

# Show the changes in the current branch's pull request (or one by number)
_alias_func_ghprd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr diff' 'Show the changes in the current branch'\''s pull request (or one by number)' "$@"
}
alias ghprd='_alias_func_ghprd ghprd'

# Show the CI check results of the current branch's pull request
_alias_func_ghprk() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr checks' 'Show the CI check results of the current branch'\''s pull request' "$@"
}
alias ghprk='_alias_func_ghprk ghprk'

# Merge the current branch's pull request (or one by number)
_alias_func_ghprm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh pr merge' 'Merge the current branch'\''s pull request (or one by number)' "$@"
}
alias ghprm='_alias_func_ghprm ghprm'

# List the open issues in the current repository
_alias_func_ghil() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh issue list' 'List the open issues in the current repository' "$@"
}
alias ghil='_alias_func_ghil ghil'

# Show an issue (e.g. 'ghiv 42')
_alias_func_ghiv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh issue view' 'Show an issue (e.g. '\''ghiv 42'\'')' "$@"
}
alias ghiv='_alias_func_ghiv ghiv'

# Create an issue
_alias_func_ghic() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh issue create' 'Create an issue' "$@"
}
alias ghic='_alias_func_ghic ghic'

# List recent GitHub Actions workflow runs
_alias_func_ghrunl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh run list' 'List recent GitHub Actions workflow runs' "$@"
}
alias ghrunl='_alias_func_ghrunl ghrunl'

# Show a workflow run's summary (--log for its log)
_alias_func_ghrunv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh run view' 'Show a workflow run'\''s summary (--log for its log)' "$@"
}
alias ghrunv='_alias_func_ghrunv ghrunv'

# Watch a workflow run until it finishes
_alias_func_ghrunw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "gh" "gh not on PATH — install the GitHub CLI first (https://cli.github.com/)" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'gh run watch' 'Watch a workflow run until it finishes' "$@"
}
alias ghrunw='_alias_func_ghrunw ghrunw'
