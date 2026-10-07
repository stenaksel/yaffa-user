# Generated content — do not edit directly.
# Edit alias_gh.yaml and re-run YAFFA generator.

# Check that gh (GitHub CLI) is on PATH
function _alias_func_req_gh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_gh' -Value _alias_func_req_gh -Option AllScope -Force

# Show your assigned issues, review requests, mentions and notifications across repositories
function _alias_func_ghst {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghst' 'gh status' 'Show your assigned issues, review requests, mentions and notifications across repositories' @args
}
Set-Alias -Name 'ghst' -Value _alias_func_ghst -Option AllScope -Force

# Open the current repository (or a file, issue or PR number) in the browser
function _alias_func_ghb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghb' 'gh browse' 'Open the current repository (or a file, issue or PR number) in the browser' @args
}
Set-Alias -Name 'ghb' -Value _alias_func_ghb -Option AllScope -Force

# Show the current repository's description and README (--web to open it)
function _alias_func_ghrv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghrv' 'gh repo view' 'Show the current repository''s description and README (--web to open it)' @args
}
Set-Alias -Name 'ghrv' -Value _alias_func_ghrv -Option AllScope -Force

# Clone a GitHub repository (e.g. 'ghrc owner/repo')
function _alias_func_ghrc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghrc' 'gh repo clone' 'Clone a GitHub repository (e.g. ''ghrc owner/repo'')' @args
}
Set-Alias -Name 'ghrc' -Value _alias_func_ghrc -Option AllScope -Force

# List the open pull requests in the current repository
function _alias_func_ghprl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprl' 'gh pr list' 'List the open pull requests in the current repository' @args
}
Set-Alias -Name 'ghprl' -Value _alias_func_ghprl -Option AllScope -Force

# Show the status of your pull requests and the current branch's
function _alias_func_ghprs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprs' 'gh pr status' 'Show the status of your pull requests and the current branch''s' @args
}
Set-Alias -Name 'ghprs' -Value _alias_func_ghprs -Option AllScope -Force

# Show the current branch's pull request (or one by number)
function _alias_func_ghprv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprv' 'gh pr view' 'Show the current branch''s pull request (or one by number)' @args
}
Set-Alias -Name 'ghprv' -Value _alias_func_ghprv -Option AllScope -Force

# Open the current branch's pull request (or one by number) in the browser
function _alias_func_ghprw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprw' 'gh pr view --web' 'Open the current branch''s pull request (or one by number) in the browser' @args
}
Set-Alias -Name 'ghprw' -Value _alias_func_ghprw -Option AllScope -Force

# Create a pull request for the current branch
function _alias_func_ghprc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprc' 'gh pr create' 'Create a pull request for the current branch' @args
}
Set-Alias -Name 'ghprc' -Value _alias_func_ghprc -Option AllScope -Force

# Create a pull request, taking the title and body from the commits
function _alias_func_ghprcf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprcf' 'gh pr create --fill' 'Create a pull request, taking the title and body from the commits' @args
}
Set-Alias -Name 'ghprcf' -Value _alias_func_ghprcf -Option AllScope -Force

# Check out a pull request's branch locally (e.g. 'ghprco 42')
function _alias_func_ghprco {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprco' 'gh pr checkout' 'Check out a pull request''s branch locally (e.g. ''ghprco 42'')' @args
}
Set-Alias -Name 'ghprco' -Value _alias_func_ghprco -Option AllScope -Force

# Show the changes in the current branch's pull request (or one by number)
function _alias_func_ghprd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprd' 'gh pr diff' 'Show the changes in the current branch''s pull request (or one by number)' @args
}
Set-Alias -Name 'ghprd' -Value _alias_func_ghprd -Option AllScope -Force

# Show the CI check results of the current branch's pull request
function _alias_func_ghprk {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprk' 'gh pr checks' 'Show the CI check results of the current branch''s pull request' @args
}
Set-Alias -Name 'ghprk' -Value _alias_func_ghprk -Option AllScope -Force

# Merge the current branch's pull request (or one by number)
function _alias_func_ghprm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghprm' 'gh pr merge' 'Merge the current branch''s pull request (or one by number)' @args
}
Set-Alias -Name 'ghprm' -Value _alias_func_ghprm -Option AllScope -Force

# List the open issues in the current repository
function _alias_func_ghil {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghil' 'gh issue list' 'List the open issues in the current repository' @args
}
Set-Alias -Name 'ghil' -Value _alias_func_ghil -Option AllScope -Force

# Show an issue (e.g. 'ghiv 42')
function _alias_func_ghiv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghiv' 'gh issue view' 'Show an issue (e.g. ''ghiv 42'')' @args
}
Set-Alias -Name 'ghiv' -Value _alias_func_ghiv -Option AllScope -Force

# Create an issue
function _alias_func_ghic {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghic' 'gh issue create' 'Create an issue' @args
}
Set-Alias -Name 'ghic' -Value _alias_func_ghic -Option AllScope -Force

# List recent GitHub Actions workflow runs
function _alias_func_ghrunl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghrunl' 'gh run list' 'List recent GitHub Actions workflow runs' @args
}
Set-Alias -Name 'ghrunl' -Value _alias_func_ghrunl -Option AllScope -Force

# Show a workflow run's summary (--log for its log)
function _alias_func_ghrunv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghrunv' 'gh run view' 'Show a workflow run''s summary (--log for its log)' @args
}
Set-Alias -Name 'ghrunv' -Value _alias_func_ghrunv -Option AllScope -Force

# Watch a workflow run until it finishes
function _alias_func_ghrunw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gh' 'gh not on PATH — install the GitHub CLI first (https://cli.github.com/)' '' '' 'abort')) { return }
  _YaffaCall 'ghrunw' 'gh run watch' 'Watch a workflow run until it finishes' @args
}
Set-Alias -Name 'ghrunw' -Value _alias_func_ghrunw -Option AllScope -Force
