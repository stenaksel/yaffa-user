# shellcheck shell=bash
# Generated content — do not edit directly.
# Edit alias_omz_git.yaml and re-run YAFFA generator.

# Check that git is on PATH
_alias_func_req_omz_git() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
}
alias req_omz_git='_alias_func_req_omz_git req_omz_git'

# Short alias for git
_alias_func_g() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git' 'Short alias for git' "$@"
}
alias g='_alias_func_g g'

# Short alias for git add
_alias_func_ga() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git add' 'Short alias for git add' "$@"
}
alias ga='_alias_func_ga ga'

# Stage all changes — new, modified and deleted files
_alias_func_gaa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git add --all' 'Stage all changes — new, modified and deleted files' "$@"
}
alias gaa='_alias_func_gaa gaa'

# Choose interactively which changes (hunks) to stage
_alias_func_gapa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git add --patch' 'Choose interactively which changes (hunks) to stage' "$@"
}
alias gapa='_alias_func_gapa gapa'

# Short alias for git pull
_alias_func_gl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git pull' 'Short alias for git pull' "$@"
}
alias gl='_alias_func_gl gl'

# Compact decorated git log (Use 'Q' to quit listing th log)
_alias_func_glog() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --oneline --decorate --graph' 'Compact decorated git log (Use '\''Q'\'' to quit listing th log)' "$@"
}
alias glog='_alias_func_glog glog'

# Compact decorated git log of all branches (Use 'Q' to quit listing the log)
_alias_func_gloga() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --oneline --decorate --graph --all' 'Compact decorated git log of all branches (Use '\''Q'\'' to quit listing the log)' "$@"
}
alias gloga='_alias_func_gloga gloga'

# Short alias for git push
_alias_func_gp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push' 'Short alias for git push' "$@"
}
alias gp='_alias_func_gp gp'

# Force-push safely — refuses if the remote has commits you haven't fetched and integrated
_alias_func_gpf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push --force-with-lease --force-if-includes' 'Force-push safely — refuses if the remote has commits you haven'\''t fetched and integrated' "$@"
}
alias gpf='_alias_func_gpf gpf'

# Displays in short form the current state of your Git working directory and staging area
_alias_func_gsb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git status --short --branch' 'Displays in short form the current state of your Git working directory and staging area' "$@"
}
alias gsb='_alias_func_gsb gsb'

# Changes in the working tree not yet staged for the next commit
_alias_func_gd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff' 'Changes in the working tree not yet staged for the next commit' "$@"
}
alias gd='_alias_func_gd gd'

# Show staged changes (difference between the index and the last commit) — what would be committed
_alias_func_gds() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff --staged' 'Show staged changes (difference between the index and the last commit) — what would be committed' "$@"
}
alias gds='_alias_func_gds gds'

# Show staged changes (difference between the index and the last commit) — what would be committed
_alias_func_gdca() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff --cached' 'Show staged changes (difference between the index and the last commit) — what would be committed' "$@"
}
alias gdca='_alias_func_gdca gdca'

# Switch branches or restore working tree files
_alias_func_gco() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git checkout' 'Switch branches or restore working tree files' "$@"
}
alias gco='_alias_func_gco gco'

# Create and switch to a new branch
_alias_func_gcb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git checkout -b' 'Create and switch to a new branch' "$@"
}
alias gcb='_alias_func_gcb gcb'

# Switch to another branch
_alias_func_gsw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git switch' 'Switch to another branch' "$@"
}
alias gsw='_alias_func_gsw gsw'

# Create and switch to a new branch (like gcob)
_alias_func_gswc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git switch --create' 'Create and switch to a new branch (like gcob)' "$@"
}
alias gswc='_alias_func_gswc gswc'

# List, create, or delete branches
_alias_func_gb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git branch' 'List, create, or delete branches' "$@"
}
alias gb='_alias_func_gb gb'

# List all branches, including remotes
_alias_func_gba() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git branch --all' 'List all branches, including remotes' "$@"
}
alias gba='_alias_func_gba gba'

# Delete a branch (only when it's fully merged)
_alias_func_gbd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git branch --delete' 'Delete a branch (only when it'\''s fully merged)' "$@"
}
alias gbd='_alias_func_gbd gbd'

# Rename a branch (e.g. 'gbm old-name new-name')
_alias_func_gbm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git branch --move' 'Rename a branch (e.g. '\''gbm old-name new-name'\'')' "$@"
}
alias gbm='_alias_func_gbm gbm'

# Pull, rebasing your local commits on top instead of merging
_alias_func_gpr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git pull --rebase' 'Pull, rebasing your local commits on top instead of merging' "$@"
}
alias gpr='_alias_func_gpr gpr'

# Pull with rebase, stashing and re-applying uncommitted changes
_alias_func_gpra() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git pull --rebase --autostash' 'Pull with rebase, stashing and re-applying uncommitted changes' "$@"
}
alias gpra='_alias_func_gpra gpra'

# Merge a branch into the current branch
_alias_func_gm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git merge' 'Merge a branch into the current branch' "$@"
}
alias gm='_alias_func_gm gm'

# Abort a merge with conflicts, going back to before it started
_alias_func_gma() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git merge --abort' 'Abort a merge with conflicts, going back to before it started' "$@"
}
alias gma='_alias_func_gma gma'

# Reapply commits on top of another base tip
_alias_func_grb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rebase' 'Reapply commits on top of another base tip' "$@"
}
alias grb='_alias_func_grb grb'

# Interactive rebase
_alias_func_grbi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rebase --interactive' 'Interactive rebase' "$@"
}
alias grbi='_alias_func_grbi grbi'

# Continue a rebase after resolving conflicts
_alias_func_grbc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rebase --continue' 'Continue a rebase after resolving conflicts' "$@"
}
alias grbc='_alias_func_grbc grbc'

# Abort a rebase, going back to before it started
_alias_func_grba() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rebase --abort' 'Abort a rebase, going back to before it started' "$@"
}
alias grba='_alias_func_grba grba'

# Skip the current commit and continue the rebase
_alias_func_grbs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rebase --skip' 'Skip the current commit and continue the rebase' "$@"
}
alias grbs='_alias_func_grbs grbs'

# Re-apply and remove the most recent stash
_alias_func_gstp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash pop' 'Re-apply and remove the most recent stash' "$@"
}
alias gstp='_alias_func_gstp gstp'

# List the stashes
_alias_func_gstl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash list' 'List the stashes' "$@"
}
alias gstl='_alias_func_gstl gstl'

# Re-apply a stash, keeping it in the list
_alias_func_gstaa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash apply' 'Re-apply a stash, keeping it in the list' "$@"
}
alias gstaa='_alias_func_gstaa gstaa'

# Remove a stash from the list — irreversible
_alias_func_gstd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash drop' 'Remove a stash from the list — irreversible' "$@"
}
alias gstd='_alias_func_gstd gstd'

# Show a commit's message and changes (the latest by default)
_alias_func_gsh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git show' 'Show a commit'\''s message and changes (the latest by default)' "$@"
}
alias gsh='_alias_func_gsh gsh'

# Show where HEAD has been — to find lost commits
_alias_func_grf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reflog' 'Show where HEAD has been — to find lost commits' "$@"
}
alias grf='_alias_func_grf grf'

# Create a new commit undoing an earlier commit's changes
_alias_func_grev() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git revert' 'Create a new commit undoing an earlier commit'\''s changes' "$@"
}
alias grev='_alias_func_grev grev'

# Discard changes to files in the working tree — irreversible
_alias_func_grs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git restore' 'Discard changes to files in the working tree — irreversible' "$@"
}
alias grs='_alias_func_grs grs'

# Unstage files, keeping their changes in the working tree
_alias_func_grst() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git restore --staged' 'Unstage files, keeping their changes in the working tree' "$@"
}
alias grst='_alias_func_grst grst'

# Apply the changes of existing commits onto the current branch
_alias_func_gcp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git cherry-pick' 'Apply the changes of existing commits onto the current branch' "$@"
}
alias gcp='_alias_func_gcp gcp'

# Continue a cherry-pick after resolving conflicts
_alias_func_gcpc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git cherry-pick --continue' 'Continue a cherry-pick after resolving conflicts' "$@"
}
alias gcpc='_alias_func_gcpc gcpc'

# Abort a cherry-pick, going back to before it started
_alias_func_gcpa() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git cherry-pick --abort' 'Abort a cherry-pick, going back to before it started' "$@"
}
alias gcpa='_alias_func_gcpa gcpa'

# Clone a repository, including its submodules
_alias_func_gcl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git clone --recurse-submodules' 'Clone a repository, including its submodules' "$@"
}
alias gcl='_alias_func_gcl gcl'

# Manage extra working trees of this repository
_alias_func_gwt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git worktree' 'Manage extra working trees of this repository' "$@"
}
alias gwt='_alias_func_gwt gwt'

# Check out a branch in a new working tree (e.g. 'gwta ../fix-1 fix-1')
_alias_func_gwta() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git worktree add' 'Check out a branch in a new working tree (e.g. '\''gwta ../fix-1 fix-1'\'')' "$@"
}
alias gwta='_alias_func_gwta gwta'

# List the working trees
_alias_func_gwtls() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git worktree list' 'List the working trees' "$@"
}
alias gwtls='_alias_func_gwtls gwtls'

# Remove a working tree
_alias_func_gwtrm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git worktree remove' 'Remove a working tree' "$@"
}
alias gwtrm='_alias_func_gwtrm gwtrm'

# Short alias for git add --update
_alias_func_gau() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git add --update' 'Short alias for git add --update' "$@"
}
alias gau='_alias_func_gau gau'

# Short alias for git add --verbose
_alias_func_gav() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git add --verbose' 'Short alias for git add --verbose' "$@"
}
alias gav='_alias_func_gav gav'

# Short alias for git am
_alias_func_gam() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git am' 'Short alias for git am' "$@"
}
alias gam='_alias_func_gam gam'

# Short alias for git am --abort
_alias_func_gama() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git am --abort' 'Short alias for git am --abort' "$@"
}
alias gama='_alias_func_gama gama'

# Short alias for git am --continue
_alias_func_gamc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git am --continue' 'Short alias for git am --continue' "$@"
}
alias gamc='_alias_func_gamc gamc'

# Short alias for git am --show-current-patch
_alias_func_gamscp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git am --show-current-patch' 'Short alias for git am --show-current-patch' "$@"
}
alias gamscp='_alias_func_gamscp gamscp'

# Short alias for git am --skip
_alias_func_gams() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git am --skip' 'Short alias for git am --skip' "$@"
}
alias gams='_alias_func_gams gams'

# Short alias for git apply
_alias_func_gap() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git apply' 'Short alias for git apply' "$@"
}
alias gap='_alias_func_gap gap'

# Short alias for git apply --3way
_alias_func_gapt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git apply --3way' 'Short alias for git apply --3way' "$@"
}
alias gapt='_alias_func_gapt gapt'

# Short alias for git bisect
_alias_func_gbs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect' 'Short alias for git bisect' "$@"
}
alias gbs='_alias_func_gbs gbs'

# Short alias for git bisect bad
_alias_func_gbsb() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect bad' 'Short alias for git bisect bad' "$@"
}
alias gbsb='_alias_func_gbsb gbsb'

# Short alias for git bisect good
_alias_func_gbsg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect good' 'Short alias for git bisect good' "$@"
}
alias gbsg='_alias_func_gbsg gbsg'

# Short alias for git bisect new
_alias_func_gbsn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect new' 'Short alias for git bisect new' "$@"
}
alias gbsn='_alias_func_gbsn gbsn'

# Short alias for git bisect old
_alias_func_gbso() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect old' 'Short alias for git bisect old' "$@"
}
alias gbso='_alias_func_gbso gbso'

# Short alias for git bisect reset
_alias_func_gbsr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect reset' 'Short alias for git bisect reset' "$@"
}
alias gbsr='_alias_func_gbsr gbsr'

# Short alias for git bisect start
_alias_func_gbss() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git bisect start' 'Short alias for git bisect start' "$@"
}
alias gbss='_alias_func_gbss gbss'

# Short alias for git blame -w
_alias_func_gbl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git blame -w' 'Short alias for git blame -w' "$@"
}
alias gbl='_alias_func_gbl gbl'

# Short alias for LANG=C git branch --no-color -vv | grep ": gone\]" | cut -c 3- | awk '{print $1}' | xargs git branch -d
_alias_func_gbgd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'LANG=C git branch --no-color -vv | grep ": gone\]" | cut -c 3- | awk '\''{print $1}'\'' | xargs git branch -d' 'Short alias for LANG=C git branch --no-color -vv | grep ": gone\]" | cut -c 3- | awk '\''{print $1}'\'' | xargs git branch -d' "$@"
}
alias gbgd='_alias_func_gbgd gbgd'

# Short alias for git branch --no-merged
_alias_func_gbnm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git branch --no-merged' 'Short alias for git branch --no-merged' "$@"
}
alias gbnm='_alias_func_gbnm gbnm'

# Short alias for git branch --remotes
_alias_func_gbr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git branch --remotes' 'Short alias for git branch --remotes' "$@"
}
alias gbr='_alias_func_gbr gbr'

# Short alias for LANG=C git branch -vv | grep ": gone\]"
_alias_func_gbg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'LANG=C git branch -vv | grep ": gone\]"' 'Short alias for LANG=C git branch -vv | grep ": gone\]"' "$@"
}
alias gbg='_alias_func_gbg gbg'

# Short alias for git checkout --recurse-submodules
_alias_func_gcor() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git checkout --recurse-submodules' 'Short alias for git checkout --recurse-submodules' "$@"
}
alias gcor='_alias_func_gcor gcor'

# Short alias for git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules
_alias_func_gclf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules' 'Short alias for git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules' "$@"
}
alias gclf='_alias_func_gclf gclf'

# Short alias for git commit --all --message
_alias_func_gcam() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --all --message' 'Short alias for git commit --all --message' "$@"
}
alias gcam='_alias_func_gcam gcam'

# Short alias for git commit --all --signoff
_alias_func_gcas() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --all --signoff' 'Short alias for git commit --all --signoff' "$@"
}
alias gcas='_alias_func_gcas gcas'

# Short alias for git commit --all --signoff --message
_alias_func_gcasm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --all --signoff --message' 'Short alias for git commit --all --signoff --message' "$@"
}
alias gcasm='_alias_func_gcasm gcasm'

# Short alias for git commit --gpg-sign
_alias_func_gcs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --gpg-sign' 'Short alias for git commit --gpg-sign' "$@"
}
alias gcs='_alias_func_gcs gcs'

# Short alias for git commit --gpg-sign --signoff
_alias_func_gcss() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --gpg-sign --signoff' 'Short alias for git commit --gpg-sign --signoff' "$@"
}
alias gcss='_alias_func_gcss gcss'

# Short alias for git commit --gpg-sign --signoff --message
_alias_func_gcssm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --gpg-sign --signoff --message' 'Short alias for git commit --gpg-sign --signoff --message' "$@"
}
alias gcssm='_alias_func_gcssm gcssm'

# Short alias for git commit --message
_alias_func_gcmsg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --message' 'Short alias for git commit --message' "$@"
}
alias gcmsg='_alias_func_gcmsg gcmsg'

# Short alias for git commit --signoff --message
_alias_func_gcsm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --signoff --message' 'Short alias for git commit --signoff --message' "$@"
}
alias gcsm='_alias_func_gcsm gcsm'

# Short alias for git commit --verbose --no-edit
_alias_func_gcn() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --verbose --no-edit' 'Short alias for git commit --verbose --no-edit' "$@"
}
alias gcn='_alias_func_gcn gcn'

# Short alias for git config --list
_alias_func_gcf() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git config --list' 'Short alias for git config --list' "$@"
}
alias gcf='_alias_func_gcf gcf'

# Short alias for git commit --fixup
_alias_func_gcfu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git commit --fixup' 'Short alias for git commit --fixup' "$@"
}
alias gcfu='_alias_func_gcfu gcfu'

# Short alias for git diff --cached --word-diff
_alias_func_gdcw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff --cached --word-diff' 'Short alias for git diff --cached --word-diff' "$@"
}
alias gdcw='_alias_func_gdcw gdcw'

# Short alias for git diff --word-diff
_alias_func_gdw() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff --word-diff' 'Short alias for git diff --word-diff' "$@"
}
alias gdw='_alias_func_gdw gdw'

# Short alias for git diff @{upstream}
_alias_func_gdup() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff @{upstream}' 'Short alias for git diff @{upstream}' "$@"
}
alias gdup='_alias_func_gdup gdup'

# Short alias for git diff-tree --no-commit-id --name-only -r
_alias_func_gdt() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git diff-tree --no-commit-id --name-only -r' 'Short alias for git diff-tree --no-commit-id --name-only -r' "$@"
}
alias gdt='_alias_func_gdt gdt'

# Short alias for git fetch origin
_alias_func_gfo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git fetch origin' 'Short alias for git fetch origin' "$@"
}
alias gfo='_alias_func_gfo gfo'

# Short alias for git gui citool
_alias_func_gg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git gui citool' 'Short alias for git gui citool' "$@"
}
alias gg='_alias_func_gg gg'

# Short alias for git gui citool --amend
_alias_func_gga() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git gui citool --amend' 'Short alias for git gui citool --amend' "$@"
}
alias gga='_alias_func_gga gga'

# Short alias for git help
_alias_func_ghh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git help' 'Short alias for git help' "$@"
}
alias ghh='_alias_func_ghh ghh'

# Short alias for git log --graph
_alias_func_glgg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph' 'Short alias for git log --graph' "$@"
}
alias glgg='_alias_func_glgg glgg'

# Short alias for git log --graph --decorate --all
_alias_func_glgga() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --decorate --all' 'Short alias for git log --graph --decorate --all' "$@"
}
alias glgga='_alias_func_glgga glgga'

# Short alias for git log --graph --max-count=10
_alias_func_glgm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --max-count=10' 'Short alias for git log --graph --max-count=10' "$@"
}
alias glgm='_alias_func_glgm glgm'

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short
_alias_func_glods() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short' 'Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short' "$@"
}
alias glods='_alias_func_glods glods'

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"
_alias_func_glod() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"' 'Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"' "$@"
}
alias glod='_alias_func_glod glod'

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all
_alias_func_glola() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all' 'Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all' "$@"
}
alias glola='_alias_func_glola glola'

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat
_alias_func_glols() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat' 'Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat' "$@"
}
alias glols='_alias_func_glols glols'

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"
_alias_func_glol() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"' 'Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"' "$@"
}
alias glol='_alias_func_glol glol'

# Short alias for git log --oneline --decorate
_alias_func_glo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --oneline --decorate' 'Short alias for git log --oneline --decorate' "$@"
}
alias glo='_alias_func_glo glo'

# Short alias for git log --stat --patch
_alias_func_glgp() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --stat --patch' 'Short alias for git log --stat --patch' "$@"
}
alias glgp='_alias_func_glgp glgp'

# Short alias for git ls-files -v | grep "^[[:lower:]]"
_alias_func_gignored() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git ls-files -v | grep "^[[:lower:]]"' 'Short alias for git ls-files -v | grep "^[[:lower:]]"' "$@"
}
alias gignored='_alias_func_gignored gignored'

# Short alias for git ls-files | grep
_alias_func_gfg() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git ls-files | grep' 'Short alias for git ls-files | grep' "$@"
}
alias gfg='_alias_func_gfg gfg'

# Short alias for git merge --continue
_alias_func_gmc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git merge --continue' 'Short alias for git merge --continue' "$@"
}
alias gmc='_alias_func_gmc gmc'

# Short alias for git merge --squash
_alias_func_gms() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git merge --squash' 'Short alias for git merge --squash' "$@"
}
alias gms='_alias_func_gms gms'

# Short alias for git merge --ff-only
_alias_func_gmff() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git merge --ff-only' 'Short alias for git merge --ff-only' "$@"
}
alias gmff='_alias_func_gmff gmff'

# Short alias for git mergetool --no-prompt
_alias_func_gmtl() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git mergetool --no-prompt' 'Short alias for git mergetool --no-prompt' "$@"
}
alias gmtl='_alias_func_gmtl gmtl'

# Short alias for git mergetool --no-prompt --tool=vimdiff
_alias_func_gmtlvim() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git mergetool --no-prompt --tool=vimdiff' 'Short alias for git mergetool --no-prompt --tool=vimdiff' "$@"
}
alias gmtlvim='_alias_func_gmtlvim gmtlvim'

# Short alias for git pull --rebase -v
_alias_func_gprv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git pull --rebase -v' 'Short alias for git pull --rebase -v' "$@"
}
alias gprv='_alias_func_gprv gprv'

# Short alias for git pull --rebase --autostash -v
_alias_func_gprav() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git pull --rebase --autostash -v' 'Short alias for git pull --rebase --autostash -v' "$@"
}
alias gprav='_alias_func_gprav gprav'

# Short alias for git push --dry-run
_alias_func_gpd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push --dry-run' 'Short alias for git push --dry-run' "$@"
}
alias gpd='_alias_func_gpd gpd'

# Short alias for git push --verbose
_alias_func_gpv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push --verbose' 'Short alias for git push --verbose' "$@"
}
alias gpv='_alias_func_gpv gpv'

# Short alias for git push origin --all && git push origin --tags
_alias_func_gpoat() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push origin --all && git push origin --tags' 'Short alias for git push origin --all && git push origin --tags' "$@"
}
alias gpoat='_alias_func_gpoat gpoat'

# Short alias for git push origin --delete
_alias_func_gpod() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push origin --delete' 'Short alias for git push origin --delete' "$@"
}
alias gpod='_alias_func_gpod gpod'

# Short alias for git push upstream
_alias_func_gpu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git push upstream' 'Short alias for git push upstream' "$@"
}
alias gpu='_alias_func_gpu gpu'

# Short alias for git rebase --onto
_alias_func_grbo() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rebase --onto' 'Short alias for git rebase --onto' "$@"
}
alias grbo='_alias_func_grbo grbo'

# Short alias for git remote --verbose
_alias_func_grv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git remote --verbose' 'Short alias for git remote --verbose' "$@"
}
alias grv='_alias_func_grv grv'

# Short alias for git remote add
_alias_func_gra() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git remote add' 'Short alias for git remote add' "$@"
}
alias gra='_alias_func_gra gra'

# Short alias for git remote remove
_alias_func_grrm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git remote remove' 'Short alias for git remote remove' "$@"
}
alias grrm='_alias_func_grrm grrm'

# Short alias for git remote rename
_alias_func_grmv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git remote rename' 'Short alias for git remote rename' "$@"
}
alias grmv='_alias_func_grmv grmv'

# Short alias for git remote set-url
_alias_func_grset() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git remote set-url' 'Short alias for git remote set-url' "$@"
}
alias grset='_alias_func_grset grset'

# Short alias for git remote update
_alias_func_grup() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git remote update' 'Short alias for git remote update' "$@"
}
alias grup='_alias_func_grup grup'

# Short alias for git reset
_alias_func_grh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset' 'Short alias for git reset' "$@"
}
alias grh='_alias_func_grh grh'

# Short alias for git reset --
_alias_func_gru() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset --' 'Short alias for git reset --' "$@"
}
alias gru='_alias_func_gru gru'

# Short alias for git reset --hard
_alias_func_grhh() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset --hard' 'Short alias for git reset --hard' "$@"
}
alias grhh='_alias_func_grhh grhh'

# Short alias for git reset --keep
_alias_func_grhk() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset --keep' 'Short alias for git reset --keep' "$@"
}
alias grhk='_alias_func_grhk grhk'

# Short alias for git reset --soft
_alias_func_grhs() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset --soft' 'Short alias for git reset --soft' "$@"
}
alias grhs='_alias_func_grhs grhs'

# Short alias for git reset --hard && git clean --force -dfx
_alias_func_gpristine() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset --hard && git clean --force -dfx' 'Short alias for git reset --hard && git clean --force -dfx' "$@"
}
alias gpristine='_alias_func_gpristine gpristine'

# Short alias for git reset --hard && git clean --force -df
_alias_func_gwipe() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git reset --hard && git clean --force -df' 'Short alias for git reset --hard && git clean --force -df' "$@"
}
alias gwipe='_alias_func_gwipe gwipe'

# Short alias for git restore --source
_alias_func_grss() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git restore --source' 'Short alias for git restore --source' "$@"
}
alias grss='_alias_func_grss grss'

# Short alias for git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1
_alias_func_gunwip() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1' 'Short alias for git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1' "$@"
}
alias gunwip='_alias_func_gunwip gunwip'

# Short alias for git revert --abort
_alias_func_greva() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git revert --abort' 'Short alias for git revert --abort' "$@"
}
alias greva='_alias_func_greva greva'

# Short alias for git revert --continue
_alias_func_grevc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git revert --continue' 'Short alias for git revert --continue' "$@"
}
alias grevc='_alias_func_grevc grevc'

# Short alias for git rm
_alias_func_grm() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rm' 'Short alias for git rm' "$@"
}
alias grm='_alias_func_grm grm'

# Short alias for git rm --cached
_alias_func_grmc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git rm --cached' 'Short alias for git rm --cached' "$@"
}
alias grmc='_alias_func_grmc grmc'

# Short alias for git shortlog --summary --numbered
_alias_func_gcount() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git shortlog --summary --numbered' 'Short alias for git shortlog --summary --numbered' "$@"
}
alias gcount='_alias_func_gcount gcount'

# Short alias for git show --pretty=short --show-signature
_alias_func_gsps() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git show --pretty=short --show-signature' 'Short alias for git show --pretty=short --show-signature' "$@"
}
alias gsps='_alias_func_gsps gsps'

# Short alias for git stash --all
_alias_func_gstall() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash --all' 'Short alias for git stash --all' "$@"
}
alias gstall='_alias_func_gstall gstall'

# Short alias for git stash clear
_alias_func_gstc() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash clear' 'Short alias for git stash clear' "$@"
}
alias gstc='_alias_func_gstc gstc'

# Short alias for git stash show --patch
_alias_func_gsts() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git stash show --patch' 'Short alias for git stash show --patch' "$@"
}
alias gsts='_alias_func_gsts gsts'

# Short alias for git status --untracked-files=no
_alias_func_gsnut() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git status --untracked-files=no' 'Short alias for git status --untracked-files=no' "$@"
}
alias gsnut='_alias_func_gsnut gsnut'

# Short alias for git submodule init
_alias_func_gsi() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git submodule init' 'Short alias for git submodule init' "$@"
}
alias gsi='_alias_func_gsi gsi'

# Short alias for git submodule update
_alias_func_gsu() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git submodule update' 'Short alias for git submodule update' "$@"
}
alias gsu='_alias_func_gsu gsu'

# Short alias for git submodule update --recursive --init
_alias_func_gsuri() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git submodule update --recursive --init' 'Short alias for git submodule update --recursive --init' "$@"
}
alias gsuri='_alias_func_gsuri gsuri'

# Short alias for git svn dcommit
_alias_func_gsd() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git svn dcommit' 'Short alias for git svn dcommit' "$@"
}
alias gsd='_alias_func_gsd gsd'

# Short alias for git svn rebase
_alias_func_gsr() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git svn rebase' 'Short alias for git svn rebase' "$@"
}
alias gsr='_alias_func_gsr gsr'

# Short alias for git tag --annotate
_alias_func_gta() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git tag --annotate' 'Short alias for git tag --annotate' "$@"
}
alias gta='_alias_func_gta gta'

# Short alias for git tag --sign
_alias_func_gts() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git tag --sign' 'Short alias for git tag --sign' "$@"
}
alias gts='_alias_func_gts gts'

# Short alias for git tag | sort -V
_alias_func_gtv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git tag | sort -V' 'Short alias for git tag | sort -V' "$@"
}
alias gtv='_alias_func_gtv gtv'

# Short alias for git update-index --assume-unchanged
_alias_func_gignore() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git update-index --assume-unchanged' 'Short alias for git update-index --assume-unchanged' "$@"
}
alias gignore='_alias_func_gignore gignore'

# Short alias for git update-index --no-assume-unchanged
_alias_func_gunignore() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git update-index --no-assume-unchanged' 'Short alias for git update-index --no-assume-unchanged' "$@"
}
alias gunignore='_alias_func_gunignore gunignore'

# Short alias for git log --patch --abbrev-commit --pretty=medium --raw
_alias_func_gwch() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git log --patch --abbrev-commit --pretty=medium --raw' 'Short alias for git log --patch --abbrev-commit --pretty=medium --raw' "$@"
}
alias gwch='_alias_func_gwch gwch'

# Short alias for git worktree move
_alias_func_gwtmv() {
  local _yaffa_func_caller="$1"; shift
  _YaffaHelpAsked "$@" || _YaffaReq cmd "git" "git not on PATH — install Git first" "" "" abort || return 1
  _YaffaCall "$_yaffa_func_caller" 'git worktree move' 'Short alias for git worktree move' "$@"
}
alias gwtmv='_alias_func_gwtmv gwtmv'
