# Generated content — do not edit directly.
# Edit alias_omz_git.yaml and re-run YAFFA generator.

# Check that git is on PATH
function _alias_func_req_omz_git {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_omz_git' -Value _alias_func_req_omz_git -Option AllScope -Force

# Short alias for git
function _alias_func_g {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'g' 'git' 'Short alias for git' @args
}
Set-Alias -Name 'g' -Value _alias_func_g -Option AllScope -Force

# Short alias for git add
function _alias_func_ga {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'ga' 'git add' 'Short alias for git add' @args
}
Set-Alias -Name 'ga' -Value _alias_func_ga -Option AllScope -Force

# Stage all changes — new, modified and deleted files
function _alias_func_gaa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gaa' 'git add --all' 'Stage all changes — new, modified and deleted files' @args
}
Set-Alias -Name 'gaa' -Value _alias_func_gaa -Option AllScope -Force

# Choose interactively which changes (hunks) to stage
function _alias_func_gapa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gapa' 'git add --patch' 'Choose interactively which changes (hunks) to stage' @args
}
Set-Alias -Name 'gapa' -Value _alias_func_gapa -Option AllScope -Force

# Short alias for git pull
function _alias_func_gl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gl' 'git pull' 'Short alias for git pull' @args
}
Set-Alias -Name 'gl' -Value _alias_func_gl -Option AllScope -Force

# Compact decorated git log (Use 'Q' to quit listing th log)
function _alias_func_glog {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'glog' 'git log --oneline --decorate --graph' 'Compact decorated git log (Use ''Q'' to quit listing th log)' @args
}
Set-Alias -Name 'glog' -Value _alias_func_glog -Option AllScope -Force

# Compact decorated git log of all branches (Use 'Q' to quit listing the log)
function _alias_func_gloga {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gloga' 'git log --oneline --decorate --graph --all' 'Compact decorated git log of all branches (Use ''Q'' to quit listing the log)' @args
}
Set-Alias -Name 'gloga' -Value _alias_func_gloga -Option AllScope -Force

# Short alias for git push
function _alias_func_gp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gp' 'git push' 'Short alias for git push' @args
}
Set-Alias -Name 'gp' -Value _alias_func_gp -Option AllScope -Force

# Force-push safely — refuses if the remote has commits you haven't fetched and integrated
function _alias_func_gpf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpf' 'git push --force-with-lease --force-if-includes' 'Force-push safely — refuses if the remote has commits you haven''t fetched and integrated' @args
}
Set-Alias -Name 'gpf' -Value _alias_func_gpf -Option AllScope -Force

# Displays in short form the current state of your Git working directory and staging area
function _alias_func_gsb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsb' 'git status --short --branch' 'Displays in short form the current state of your Git working directory and staging area' @args
}
Set-Alias -Name 'gsb' -Value _alias_func_gsb -Option AllScope -Force

# Changes in the working tree not yet staged for the next commit
function _alias_func_gd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gd' 'git diff' 'Changes in the working tree not yet staged for the next commit' @args
}
Set-Alias -Name 'gd' -Value _alias_func_gd -Option AllScope -Force

# Show staged changes (difference between the index and the last commit) — what would be committed
function _alias_func_gds {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gds' 'git diff --staged' 'Show staged changes (difference between the index and the last commit) — what would be committed' @args
}
Set-Alias -Name 'gds' -Value _alias_func_gds -Option AllScope -Force

# Show staged changes (difference between the index and the last commit) — what would be committed
function _alias_func_gdca {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gdca' 'git diff --cached' 'Show staged changes (difference between the index and the last commit) — what would be committed' @args
}
Set-Alias -Name 'gdca' -Value _alias_func_gdca -Option AllScope -Force

# Switch branches or restore working tree files
function _alias_func_gco {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gco' 'git checkout' 'Switch branches or restore working tree files' @args
}
Set-Alias -Name 'gco' -Value _alias_func_gco -Option AllScope -Force

# Create and switch to a new branch
function _alias_func_gcb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcb' 'git checkout -b' 'Create and switch to a new branch' @args
}
Set-Alias -Name 'gcb' -Value _alias_func_gcb -Option AllScope -Force

# Switch to another branch
function _alias_func_gsw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsw' 'git switch' 'Switch to another branch' @args
}
Set-Alias -Name 'gsw' -Value _alias_func_gsw -Option AllScope -Force

# Create and switch to a new branch (like gcob)
function _alias_func_gswc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gswc' 'git switch --create' 'Create and switch to a new branch (like gcob)' @args
}
Set-Alias -Name 'gswc' -Value _alias_func_gswc -Option AllScope -Force

# List, create, or delete branches
function _alias_func_gb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gb' 'git branch' 'List, create, or delete branches' @args
}
Set-Alias -Name 'gb' -Value _alias_func_gb -Option AllScope -Force

# List all branches, including remotes
function _alias_func_gba {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gba' 'git branch --all' 'List all branches, including remotes' @args
}
Set-Alias -Name 'gba' -Value _alias_func_gba -Option AllScope -Force

# Delete a branch (only when it's fully merged)
function _alias_func_gbd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbd' 'git branch --delete' 'Delete a branch (only when it''s fully merged)' @args
}
Set-Alias -Name 'gbd' -Value _alias_func_gbd -Option AllScope -Force

# Rename a branch (e.g. 'gbm old-name new-name')
function _alias_func_gbm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbm' 'git branch --move' 'Rename a branch (e.g. ''gbm old-name new-name'')' @args
}
Set-Alias -Name 'gbm' -Value _alias_func_gbm -Option AllScope -Force

# Pull, rebasing your local commits on top instead of merging
function _alias_func_gpr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpr' 'git pull --rebase' 'Pull, rebasing your local commits on top instead of merging' @args
}
Set-Alias -Name 'gpr' -Value _alias_func_gpr -Option AllScope -Force

# Pull with rebase, stashing and re-applying uncommitted changes
function _alias_func_gpra {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpra' 'git pull --rebase --autostash' 'Pull with rebase, stashing and re-applying uncommitted changes' @args
}
Set-Alias -Name 'gpra' -Value _alias_func_gpra -Option AllScope -Force

# Merge a branch into the current branch
function _alias_func_gm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gm' 'git merge' 'Merge a branch into the current branch' @args
}
Set-Alias -Name 'gm' -Value _alias_func_gm -Option AllScope -Force

# Abort a merge with conflicts, going back to before it started
function _alias_func_gma {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gma' 'git merge --abort' 'Abort a merge with conflicts, going back to before it started' @args
}
Set-Alias -Name 'gma' -Value _alias_func_gma -Option AllScope -Force

# Reapply commits on top of another base tip
function _alias_func_grb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grb' 'git rebase' 'Reapply commits on top of another base tip' @args
}
Set-Alias -Name 'grb' -Value _alias_func_grb -Option AllScope -Force

# Interactive rebase
function _alias_func_grbi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grbi' 'git rebase --interactive' 'Interactive rebase' @args
}
Set-Alias -Name 'grbi' -Value _alias_func_grbi -Option AllScope -Force

# Continue a rebase after resolving conflicts
function _alias_func_grbc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grbc' 'git rebase --continue' 'Continue a rebase after resolving conflicts' @args
}
Set-Alias -Name 'grbc' -Value _alias_func_grbc -Option AllScope -Force

# Abort a rebase, going back to before it started
function _alias_func_grba {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grba' 'git rebase --abort' 'Abort a rebase, going back to before it started' @args
}
Set-Alias -Name 'grba' -Value _alias_func_grba -Option AllScope -Force

# Skip the current commit and continue the rebase
function _alias_func_grbs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grbs' 'git rebase --skip' 'Skip the current commit and continue the rebase' @args
}
Set-Alias -Name 'grbs' -Value _alias_func_grbs -Option AllScope -Force

# Re-apply and remove the most recent stash
function _alias_func_gstp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gstp' 'git stash pop' 'Re-apply and remove the most recent stash' @args
}
Set-Alias -Name 'gstp' -Value _alias_func_gstp -Option AllScope -Force

# List the stashes
function _alias_func_gstl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gstl' 'git stash list' 'List the stashes' @args
}
Set-Alias -Name 'gstl' -Value _alias_func_gstl -Option AllScope -Force

# Re-apply a stash, keeping it in the list
function _alias_func_gstaa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gstaa' 'git stash apply' 'Re-apply a stash, keeping it in the list' @args
}
Set-Alias -Name 'gstaa' -Value _alias_func_gstaa -Option AllScope -Force

# Remove a stash from the list — irreversible
function _alias_func_gstd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gstd' 'git stash drop' 'Remove a stash from the list — irreversible' @args
}
Set-Alias -Name 'gstd' -Value _alias_func_gstd -Option AllScope -Force

# Show a commit's message and changes (the latest by default)
function _alias_func_gsh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsh' 'git show' 'Show a commit''s message and changes (the latest by default)' @args
}
Set-Alias -Name 'gsh' -Value _alias_func_gsh -Option AllScope -Force

# Show where HEAD has been — to find lost commits
function _alias_func_grf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grf' 'git reflog' 'Show where HEAD has been — to find lost commits' @args
}
Set-Alias -Name 'grf' -Value _alias_func_grf -Option AllScope -Force

# Create a new commit undoing an earlier commit's changes
function _alias_func_grev {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grev' 'git revert' 'Create a new commit undoing an earlier commit''s changes' @args
}
Set-Alias -Name 'grev' -Value _alias_func_grev -Option AllScope -Force

# Discard changes to files in the working tree — irreversible
function _alias_func_grs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grs' 'git restore' 'Discard changes to files in the working tree — irreversible' @args
}
Set-Alias -Name 'grs' -Value _alias_func_grs -Option AllScope -Force

# Unstage files, keeping their changes in the working tree
function _alias_func_grst {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grst' 'git restore --staged' 'Unstage files, keeping their changes in the working tree' @args
}
Set-Alias -Name 'grst' -Value _alias_func_grst -Option AllScope -Force

# Apply the changes of existing commits onto the current branch
function _alias_func_gcp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcp' 'git cherry-pick' 'Apply the changes of existing commits onto the current branch' @args
}
Set-Alias -Name 'gcp' -Value _alias_func_gcp -Option AllScope -Force

# Continue a cherry-pick after resolving conflicts
function _alias_func_gcpc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcpc' 'git cherry-pick --continue' 'Continue a cherry-pick after resolving conflicts' @args
}
Set-Alias -Name 'gcpc' -Value _alias_func_gcpc -Option AllScope -Force

# Abort a cherry-pick, going back to before it started
function _alias_func_gcpa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcpa' 'git cherry-pick --abort' 'Abort a cherry-pick, going back to before it started' @args
}
Set-Alias -Name 'gcpa' -Value _alias_func_gcpa -Option AllScope -Force

# Clone a repository, including its submodules
function _alias_func_gcl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcl' 'git clone --recurse-submodules' 'Clone a repository, including its submodules' @args
}
Set-Alias -Name 'gcl' -Value _alias_func_gcl -Option AllScope -Force

# Manage extra working trees of this repository
function _alias_func_gwt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gwt' 'git worktree' 'Manage extra working trees of this repository' @args
}
Set-Alias -Name 'gwt' -Value _alias_func_gwt -Option AllScope -Force

# Check out a branch in a new working tree (e.g. 'gwta ../fix-1 fix-1')
function _alias_func_gwta {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gwta' 'git worktree add' 'Check out a branch in a new working tree (e.g. ''gwta ../fix-1 fix-1'')' @args
}
Set-Alias -Name 'gwta' -Value _alias_func_gwta -Option AllScope -Force

# List the working trees
function _alias_func_gwtls {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gwtls' 'git worktree list' 'List the working trees' @args
}
Set-Alias -Name 'gwtls' -Value _alias_func_gwtls -Option AllScope -Force

# Remove a working tree
function _alias_func_gwtrm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gwtrm' 'git worktree remove' 'Remove a working tree' @args
}
Set-Alias -Name 'gwtrm' -Value _alias_func_gwtrm -Option AllScope -Force

# Short alias for git add --update
function _alias_func_gau {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gau' 'git add --update' 'Short alias for git add --update' @args
}
Set-Alias -Name 'gau' -Value _alias_func_gau -Option AllScope -Force

# Short alias for git add --verbose
function _alias_func_gav {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gav' 'git add --verbose' 'Short alias for git add --verbose' @args
}
Set-Alias -Name 'gav' -Value _alias_func_gav -Option AllScope -Force

# Short alias for git am
function _alias_func_gam {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gam' 'git am' 'Short alias for git am' @args
}
Set-Alias -Name 'gam' -Value _alias_func_gam -Option AllScope -Force

# Short alias for git am --abort
function _alias_func_gama {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gama' 'git am --abort' 'Short alias for git am --abort' @args
}
Set-Alias -Name 'gama' -Value _alias_func_gama -Option AllScope -Force

# Short alias for git am --continue
function _alias_func_gamc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gamc' 'git am --continue' 'Short alias for git am --continue' @args
}
Set-Alias -Name 'gamc' -Value _alias_func_gamc -Option AllScope -Force

# Short alias for git am --show-current-patch
function _alias_func_gamscp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gamscp' 'git am --show-current-patch' 'Short alias for git am --show-current-patch' @args
}
Set-Alias -Name 'gamscp' -Value _alias_func_gamscp -Option AllScope -Force

# Short alias for git am --skip
function _alias_func_gams {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gams' 'git am --skip' 'Short alias for git am --skip' @args
}
Set-Alias -Name 'gams' -Value _alias_func_gams -Option AllScope -Force

# Short alias for git apply
function _alias_func_gap {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gap' 'git apply' 'Short alias for git apply' @args
}
Set-Alias -Name 'gap' -Value _alias_func_gap -Option AllScope -Force

# Short alias for git apply --3way
function _alias_func_gapt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gapt' 'git apply --3way' 'Short alias for git apply --3way' @args
}
Set-Alias -Name 'gapt' -Value _alias_func_gapt -Option AllScope -Force

# Short alias for git bisect
function _alias_func_gbs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbs' 'git bisect' 'Short alias for git bisect' @args
}
Set-Alias -Name 'gbs' -Value _alias_func_gbs -Option AllScope -Force

# Short alias for git bisect bad
function _alias_func_gbsb {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbsb' 'git bisect bad' 'Short alias for git bisect bad' @args
}
Set-Alias -Name 'gbsb' -Value _alias_func_gbsb -Option AllScope -Force

# Short alias for git bisect good
function _alias_func_gbsg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbsg' 'git bisect good' 'Short alias for git bisect good' @args
}
Set-Alias -Name 'gbsg' -Value _alias_func_gbsg -Option AllScope -Force

# Short alias for git bisect new
function _alias_func_gbsn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbsn' 'git bisect new' 'Short alias for git bisect new' @args
}
Set-Alias -Name 'gbsn' -Value _alias_func_gbsn -Option AllScope -Force

# Short alias for git bisect old
function _alias_func_gbso {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbso' 'git bisect old' 'Short alias for git bisect old' @args
}
Set-Alias -Name 'gbso' -Value _alias_func_gbso -Option AllScope -Force

# Short alias for git bisect reset
function _alias_func_gbsr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbsr' 'git bisect reset' 'Short alias for git bisect reset' @args
}
Set-Alias -Name 'gbsr' -Value _alias_func_gbsr -Option AllScope -Force

# Short alias for git bisect start
function _alias_func_gbss {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbss' 'git bisect start' 'Short alias for git bisect start' @args
}
Set-Alias -Name 'gbss' -Value _alias_func_gbss -Option AllScope -Force

# Short alias for git blame -w
function _alias_func_gbl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbl' 'git blame -w' 'Short alias for git blame -w' @args
}
Set-Alias -Name 'gbl' -Value _alias_func_gbl -Option AllScope -Force

# Short alias for LANG=C git branch --no-color -vv | grep ": gone\]" | cut -c 3- | awk '{print $1}' | xargs git branch -d
function _alias_func_gbgd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gbgd' -Value _alias_func_gbgd -Option AllScope -Force

# Short alias for git branch --no-merged
function _alias_func_gbnm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbnm' 'git branch --no-merged' 'Short alias for git branch --no-merged' @args
}
Set-Alias -Name 'gbnm' -Value _alias_func_gbnm -Option AllScope -Force

# Short alias for git branch --remotes
function _alias_func_gbr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gbr' 'git branch --remotes' 'Short alias for git branch --remotes' @args
}
Set-Alias -Name 'gbr' -Value _alias_func_gbr -Option AllScope -Force

# Short alias for LANG=C git branch -vv | grep ": gone\]"
function _alias_func_gbg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gbg' -Value _alias_func_gbg -Option AllScope -Force

# Short alias for git checkout --recurse-submodules
function _alias_func_gcor {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcor' 'git checkout --recurse-submodules' 'Short alias for git checkout --recurse-submodules' @args
}
Set-Alias -Name 'gcor' -Value _alias_func_gcor -Option AllScope -Force

# Short alias for git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules
function _alias_func_gclf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gclf' 'git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules' 'Short alias for git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules' @args
}
Set-Alias -Name 'gclf' -Value _alias_func_gclf -Option AllScope -Force

# Short alias for git commit --all --message
function _alias_func_gcam {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcam' 'git commit --all --message' 'Short alias for git commit --all --message' @args
}
Set-Alias -Name 'gcam' -Value _alias_func_gcam -Option AllScope -Force

# Short alias for git commit --all --signoff
function _alias_func_gcas {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcas' 'git commit --all --signoff' 'Short alias for git commit --all --signoff' @args
}
Set-Alias -Name 'gcas' -Value _alias_func_gcas -Option AllScope -Force

# Short alias for git commit --all --signoff --message
function _alias_func_gcasm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcasm' 'git commit --all --signoff --message' 'Short alias for git commit --all --signoff --message' @args
}
Set-Alias -Name 'gcasm' -Value _alias_func_gcasm -Option AllScope -Force

# Short alias for git commit --gpg-sign
function _alias_func_gcs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcs' 'git commit --gpg-sign' 'Short alias for git commit --gpg-sign' @args
}
Set-Alias -Name 'gcs' -Value _alias_func_gcs -Option AllScope -Force

# Short alias for git commit --gpg-sign --signoff
function _alias_func_gcss {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcss' 'git commit --gpg-sign --signoff' 'Short alias for git commit --gpg-sign --signoff' @args
}
Set-Alias -Name 'gcss' -Value _alias_func_gcss -Option AllScope -Force

# Short alias for git commit --gpg-sign --signoff --message
function _alias_func_gcssm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcssm' 'git commit --gpg-sign --signoff --message' 'Short alias for git commit --gpg-sign --signoff --message' @args
}
Set-Alias -Name 'gcssm' -Value _alias_func_gcssm -Option AllScope -Force

# Short alias for git commit --message
function _alias_func_gcmsg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcmsg' 'git commit --message' 'Short alias for git commit --message' @args
}
Set-Alias -Name 'gcmsg' -Value _alias_func_gcmsg -Option AllScope -Force

# Short alias for git commit --signoff --message
function _alias_func_gcsm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcsm' 'git commit --signoff --message' 'Short alias for git commit --signoff --message' @args
}
Set-Alias -Name 'gcsm' -Value _alias_func_gcsm -Option AllScope -Force

# Short alias for git commit --verbose --no-edit
function _alias_func_gcn {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcn' 'git commit --verbose --no-edit' 'Short alias for git commit --verbose --no-edit' @args
}
Set-Alias -Name 'gcn' -Value _alias_func_gcn -Option AllScope -Force

# Short alias for git config --list
function _alias_func_gcf {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcf' 'git config --list' 'Short alias for git config --list' @args
}
Set-Alias -Name 'gcf' -Value _alias_func_gcf -Option AllScope -Force

# Short alias for git commit --fixup
function _alias_func_gcfu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcfu' 'git commit --fixup' 'Short alias for git commit --fixup' @args
}
Set-Alias -Name 'gcfu' -Value _alias_func_gcfu -Option AllScope -Force

# Short alias for git diff --cached --word-diff
function _alias_func_gdcw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gdcw' 'git diff --cached --word-diff' 'Short alias for git diff --cached --word-diff' @args
}
Set-Alias -Name 'gdcw' -Value _alias_func_gdcw -Option AllScope -Force

# Short alias for git diff --word-diff
function _alias_func_gdw {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gdw' 'git diff --word-diff' 'Short alias for git diff --word-diff' @args
}
Set-Alias -Name 'gdw' -Value _alias_func_gdw -Option AllScope -Force

# Short alias for git diff @{upstream}
function _alias_func_gdup {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gdup' -Value _alias_func_gdup -Option AllScope -Force

# Short alias for git diff-tree --no-commit-id --name-only -r
function _alias_func_gdt {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gdt' 'git diff-tree --no-commit-id --name-only -r' 'Short alias for git diff-tree --no-commit-id --name-only -r' @args
}
Set-Alias -Name 'gdt' -Value _alias_func_gdt -Option AllScope -Force

# Short alias for git fetch origin
function _alias_func_gfo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gfo' 'git fetch origin' 'Short alias for git fetch origin' @args
}
Set-Alias -Name 'gfo' -Value _alias_func_gfo -Option AllScope -Force

# Short alias for git gui citool
function _alias_func_gg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gg' 'git gui citool' 'Short alias for git gui citool' @args
}
Set-Alias -Name 'gg' -Value _alias_func_gg -Option AllScope -Force

# Short alias for git gui citool --amend
function _alias_func_gga {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gga' 'git gui citool --amend' 'Short alias for git gui citool --amend' @args
}
Set-Alias -Name 'gga' -Value _alias_func_gga -Option AllScope -Force

# Short alias for git help
function _alias_func_ghh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'ghh' 'git help' 'Short alias for git help' @args
}
Set-Alias -Name 'ghh' -Value _alias_func_ghh -Option AllScope -Force

# Short alias for git log --graph
function _alias_func_glgg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'glgg' 'git log --graph' 'Short alias for git log --graph' @args
}
Set-Alias -Name 'glgg' -Value _alias_func_glgg -Option AllScope -Force

# Short alias for git log --graph --decorate --all
function _alias_func_glgga {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'glgga' 'git log --graph --decorate --all' 'Short alias for git log --graph --decorate --all' @args
}
Set-Alias -Name 'glgga' -Value _alias_func_glgga -Option AllScope -Force

# Short alias for git log --graph --max-count=10
function _alias_func_glgm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'glgm' 'git log --graph --max-count=10' 'Short alias for git log --graph --max-count=10' @args
}
Set-Alias -Name 'glgm' -Value _alias_func_glgm -Option AllScope -Force

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short
function _alias_func_glods {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'glods' -Value _alias_func_glods -Option AllScope -Force

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"
function _alias_func_glod {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'glod' -Value _alias_func_glod -Option AllScope -Force

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all
function _alias_func_glola {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'glola' -Value _alias_func_glola -Option AllScope -Force

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat
function _alias_func_glols {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'glols' -Value _alias_func_glols -Option AllScope -Force

# Short alias for git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"
function _alias_func_glol {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'glol' -Value _alias_func_glol -Option AllScope -Force

# Short alias for git log --oneline --decorate
function _alias_func_glo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'glo' 'git log --oneline --decorate' 'Short alias for git log --oneline --decorate' @args
}
Set-Alias -Name 'glo' -Value _alias_func_glo -Option AllScope -Force

# Short alias for git log --stat --patch
function _alias_func_glgp {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'glgp' 'git log --stat --patch' 'Short alias for git log --stat --patch' @args
}
Set-Alias -Name 'glgp' -Value _alias_func_glgp -Option AllScope -Force

# Short alias for git ls-files -v | grep "^[[:lower:]]"
function _alias_func_gignored {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gignored' -Value _alias_func_gignored -Option AllScope -Force

# Short alias for git ls-files | grep
function _alias_func_gfg {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gfg' -Value _alias_func_gfg -Option AllScope -Force

# Short alias for git merge --continue
function _alias_func_gmc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gmc' 'git merge --continue' 'Short alias for git merge --continue' @args
}
Set-Alias -Name 'gmc' -Value _alias_func_gmc -Option AllScope -Force

# Short alias for git merge --squash
function _alias_func_gms {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gms' 'git merge --squash' 'Short alias for git merge --squash' @args
}
Set-Alias -Name 'gms' -Value _alias_func_gms -Option AllScope -Force

# Short alias for git merge --ff-only
function _alias_func_gmff {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gmff' 'git merge --ff-only' 'Short alias for git merge --ff-only' @args
}
Set-Alias -Name 'gmff' -Value _alias_func_gmff -Option AllScope -Force

# Short alias for git mergetool --no-prompt
function _alias_func_gmtl {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gmtl' 'git mergetool --no-prompt' 'Short alias for git mergetool --no-prompt' @args
}
Set-Alias -Name 'gmtl' -Value _alias_func_gmtl -Option AllScope -Force

# Short alias for git mergetool --no-prompt --tool=vimdiff
function _alias_func_gmtlvim {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gmtlvim' 'git mergetool --no-prompt --tool=vimdiff' 'Short alias for git mergetool --no-prompt --tool=vimdiff' @args
}
Set-Alias -Name 'gmtlvim' -Value _alias_func_gmtlvim -Option AllScope -Force

# Short alias for git pull --rebase -v
function _alias_func_gprv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gprv' 'git pull --rebase -v' 'Short alias for git pull --rebase -v' @args
}
Set-Alias -Name 'gprv' -Value _alias_func_gprv -Option AllScope -Force

# Short alias for git pull --rebase --autostash -v
function _alias_func_gprav {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gprav' 'git pull --rebase --autostash -v' 'Short alias for git pull --rebase --autostash -v' @args
}
Set-Alias -Name 'gprav' -Value _alias_func_gprav -Option AllScope -Force

# Short alias for git push --dry-run
function _alias_func_gpd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpd' 'git push --dry-run' 'Short alias for git push --dry-run' @args
}
Set-Alias -Name 'gpd' -Value _alias_func_gpd -Option AllScope -Force

# Short alias for git push --verbose
function _alias_func_gpv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpv' 'git push --verbose' 'Short alias for git push --verbose' @args
}
Set-Alias -Name 'gpv' -Value _alias_func_gpv -Option AllScope -Force

# Short alias for git push origin --all && git push origin --tags
function _alias_func_gpoat {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gpoat' -Value _alias_func_gpoat -Option AllScope -Force

# Short alias for git push origin --delete
function _alias_func_gpod {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpod' 'git push origin --delete' 'Short alias for git push origin --delete' @args
}
Set-Alias -Name 'gpod' -Value _alias_func_gpod -Option AllScope -Force

# Short alias for git push upstream
function _alias_func_gpu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gpu' 'git push upstream' 'Short alias for git push upstream' @args
}
Set-Alias -Name 'gpu' -Value _alias_func_gpu -Option AllScope -Force

# Short alias for git rebase --onto
function _alias_func_grbo {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grbo' 'git rebase --onto' 'Short alias for git rebase --onto' @args
}
Set-Alias -Name 'grbo' -Value _alias_func_grbo -Option AllScope -Force

# Short alias for git remote --verbose
function _alias_func_grv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grv' 'git remote --verbose' 'Short alias for git remote --verbose' @args
}
Set-Alias -Name 'grv' -Value _alias_func_grv -Option AllScope -Force

# Short alias for git remote add
function _alias_func_gra {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gra' 'git remote add' 'Short alias for git remote add' @args
}
Set-Alias -Name 'gra' -Value _alias_func_gra -Option AllScope -Force

# Short alias for git remote remove
function _alias_func_grrm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grrm' 'git remote remove' 'Short alias for git remote remove' @args
}
Set-Alias -Name 'grrm' -Value _alias_func_grrm -Option AllScope -Force

# Short alias for git remote rename
function _alias_func_grmv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grmv' 'git remote rename' 'Short alias for git remote rename' @args
}
Set-Alias -Name 'grmv' -Value _alias_func_grmv -Option AllScope -Force

# Short alias for git remote set-url
function _alias_func_grset {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grset' 'git remote set-url' 'Short alias for git remote set-url' @args
}
Set-Alias -Name 'grset' -Value _alias_func_grset -Option AllScope -Force

# Short alias for git remote update
function _alias_func_grup {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grup' 'git remote update' 'Short alias for git remote update' @args
}
Set-Alias -Name 'grup' -Value _alias_func_grup -Option AllScope -Force

# Short alias for git reset
function _alias_func_grh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grh' 'git reset' 'Short alias for git reset' @args
}
Set-Alias -Name 'grh' -Value _alias_func_grh -Option AllScope -Force

# Short alias for git reset --
function _alias_func_gru {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gru' 'git reset --' 'Short alias for git reset --' @args
}
Set-Alias -Name 'gru' -Value _alias_func_gru -Option AllScope -Force

# Short alias for git reset --hard
function _alias_func_grhh {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grhh' 'git reset --hard' 'Short alias for git reset --hard' @args
}
Set-Alias -Name 'grhh' -Value _alias_func_grhh -Option AllScope -Force

# Short alias for git reset --keep
function _alias_func_grhk {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grhk' 'git reset --keep' 'Short alias for git reset --keep' @args
}
Set-Alias -Name 'grhk' -Value _alias_func_grhk -Option AllScope -Force

# Short alias for git reset --soft
function _alias_func_grhs {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grhs' 'git reset --soft' 'Short alias for git reset --soft' @args
}
Set-Alias -Name 'grhs' -Value _alias_func_grhs -Option AllScope -Force

# Short alias for git reset --hard && git clean --force -dfx
function _alias_func_gpristine {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gpristine' -Value _alias_func_gpristine -Option AllScope -Force

# Short alias for git reset --hard && git clean --force -df
function _alias_func_gwipe {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gwipe' -Value _alias_func_gwipe -Option AllScope -Force

# Short alias for git restore --source
function _alias_func_grss {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grss' 'git restore --source' 'Short alias for git restore --source' @args
}
Set-Alias -Name 'grss' -Value _alias_func_grss -Option AllScope -Force

# Short alias for git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1
function _alias_func_gunwip {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gunwip' -Value _alias_func_gunwip -Option AllScope -Force

# Short alias for git revert --abort
function _alias_func_greva {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'greva' 'git revert --abort' 'Short alias for git revert --abort' @args
}
Set-Alias -Name 'greva' -Value _alias_func_greva -Option AllScope -Force

# Short alias for git revert --continue
function _alias_func_grevc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grevc' 'git revert --continue' 'Short alias for git revert --continue' @args
}
Set-Alias -Name 'grevc' -Value _alias_func_grevc -Option AllScope -Force

# Short alias for git rm
function _alias_func_grm {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grm' 'git rm' 'Short alias for git rm' @args
}
Set-Alias -Name 'grm' -Value _alias_func_grm -Option AllScope -Force

# Short alias for git rm --cached
function _alias_func_grmc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'grmc' 'git rm --cached' 'Short alias for git rm --cached' @args
}
Set-Alias -Name 'grmc' -Value _alias_func_grmc -Option AllScope -Force

# Short alias for git shortlog --summary --numbered
function _alias_func_gcount {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gcount' 'git shortlog --summary --numbered' 'Short alias for git shortlog --summary --numbered' @args
}
Set-Alias -Name 'gcount' -Value _alias_func_gcount -Option AllScope -Force

# Short alias for git show --pretty=short --show-signature
function _alias_func_gsps {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsps' 'git show --pretty=short --show-signature' 'Short alias for git show --pretty=short --show-signature' @args
}
Set-Alias -Name 'gsps' -Value _alias_func_gsps -Option AllScope -Force

# Short alias for git stash --all
function _alias_func_gstall {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gstall' 'git stash --all' 'Short alias for git stash --all' @args
}
Set-Alias -Name 'gstall' -Value _alias_func_gstall -Option AllScope -Force

# Short alias for git stash clear
function _alias_func_gstc {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gstc' 'git stash clear' 'Short alias for git stash clear' @args
}
Set-Alias -Name 'gstc' -Value _alias_func_gstc -Option AllScope -Force

# Short alias for git stash show --patch
function _alias_func_gsts {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsts' 'git stash show --patch' 'Short alias for git stash show --patch' @args
}
Set-Alias -Name 'gsts' -Value _alias_func_gsts -Option AllScope -Force

# Short alias for git status --untracked-files=no
function _alias_func_gsnut {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsnut' 'git status --untracked-files=no' 'Short alias for git status --untracked-files=no' @args
}
Set-Alias -Name 'gsnut' -Value _alias_func_gsnut -Option AllScope -Force

# Short alias for git submodule init
function _alias_func_gsi {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsi' 'git submodule init' 'Short alias for git submodule init' @args
}
Set-Alias -Name 'gsi' -Value _alias_func_gsi -Option AllScope -Force

# Short alias for git submodule update
function _alias_func_gsu {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsu' 'git submodule update' 'Short alias for git submodule update' @args
}
Set-Alias -Name 'gsu' -Value _alias_func_gsu -Option AllScope -Force

# Short alias for git submodule update --recursive --init
function _alias_func_gsuri {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsuri' 'git submodule update --recursive --init' 'Short alias for git submodule update --recursive --init' @args
}
Set-Alias -Name 'gsuri' -Value _alias_func_gsuri -Option AllScope -Force

# Short alias for git svn dcommit
function _alias_func_gsd {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsd' 'git svn dcommit' 'Short alias for git svn dcommit' @args
}
Set-Alias -Name 'gsd' -Value _alias_func_gsd -Option AllScope -Force

# Short alias for git svn rebase
function _alias_func_gsr {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gsr' 'git svn rebase' 'Short alias for git svn rebase' @args
}
Set-Alias -Name 'gsr' -Value _alias_func_gsr -Option AllScope -Force

# Short alias for git tag --annotate
function _alias_func_gta {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gta' 'git tag --annotate' 'Short alias for git tag --annotate' @args
}
Set-Alias -Name 'gta' -Value _alias_func_gta -Option AllScope -Force

# Short alias for git tag --sign
function _alias_func_gts {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gts' 'git tag --sign' 'Short alias for git tag --sign' @args
}
Set-Alias -Name 'gts' -Value _alias_func_gts -Option AllScope -Force

# Short alias for git tag | sort -V
function _alias_func_gtv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
}
Set-Alias -Name 'gtv' -Value _alias_func_gtv -Option AllScope -Force

# Short alias for git update-index --assume-unchanged
function _alias_func_gignore {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gignore' 'git update-index --assume-unchanged' 'Short alias for git update-index --assume-unchanged' @args
}
Set-Alias -Name 'gignore' -Value _alias_func_gignore -Option AllScope -Force

# Short alias for git update-index --no-assume-unchanged
function _alias_func_gunignore {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gunignore' 'git update-index --no-assume-unchanged' 'Short alias for git update-index --no-assume-unchanged' @args
}
Set-Alias -Name 'gunignore' -Value _alias_func_gunignore -Option AllScope -Force

# Short alias for git log --patch --abbrev-commit --pretty=medium --raw
function _alias_func_gwch {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gwch' 'git log --patch --abbrev-commit --pretty=medium --raw' 'Short alias for git log --patch --abbrev-commit --pretty=medium --raw' @args
}
Set-Alias -Name 'gwch' -Value _alias_func_gwch -Option AllScope -Force

# Short alias for git worktree move
function _alias_func_gwtmv {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'git' 'git not on PATH — install Git first' '' '' 'abort')) { return }
  _YaffaCall 'gwtmv' 'git worktree move' 'Short alias for git worktree move' @args
}
Set-Alias -Name 'gwtmv' -Value _alias_func_gwtmv -Option AllScope -Force
