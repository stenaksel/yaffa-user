# Generated content — do not edit directly.
# Edit alias_git.yaml and re-run YAFFA generator.

# Short alias for git add
function _alias_ga {
  _YaffaCall 'ga' 'git add' 'Short alias for git add' @args
}
Set-Alias -Name 'ga' -Value _alias_ga -Option AllScope -Force

# Show all branches, both local and remote
function _alias_gbra {
  _YaffaCall 'gbra' 'git branch -a' 'Show all branches, both local and remote' @args
}
Set-Alias -Name 'gbra' -Value _alias_gbra -Option AllScope -Force

# Show all branches, both local and remote
Set-Alias -Name 'branches' -Value _alias_gbra -Option AllScope -Force

# Show all branches, both local and remote
Set-Alias -Name 'gbr' -Value _alias_gbra -Option AllScope -Force

# Short alias for git commit
function _alias_gc {
  _YaffaCall 'gc' 'git commit' 'Short alias for git commit' @args
}
Set-Alias -Name 'gc' -Value _alias_gc -Option AllScope -Force

# Compact decorated git log
function _alias_gl {
  _YaffaCall 'gl' 'git log --oneline --graph --decorate' 'Compact decorated git log' @args
}
Set-Alias -Name 'gl' -Value _alias_gl -Option AllScope -Force

# Detailed decorated git log with author and relative date
function _alias_glg {
  _YaffaCall 'glg' 'git log --pretty=format:''%C(red)%h%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(bold blue)<%an>%Creset'' --abbrev-commit --date=relative' 'Detailed decorated git log with author and relative date' @args
}
Set-Alias -Name 'glg' -Value _alias_glg -Option AllScope -Force

# Short alias for git push
function _alias_gp {
  _YaffaCall 'gp' 'git push' 'Short alias for git push' @args
}
Set-Alias -Name 'gp' -Value _alias_gp -Option AllScope -Force

# Displays the current state of your Git working directory and staging area
function _alias_gs {
  _YaffaCall 'gs' 'git status' 'Displays the current state of your Git working directory and staging area' @args
}
Set-Alias -Name 'gs' -Value _alias_gs -Option AllScope -Force

# Displays in short form the current state of your Git working directory and staging area
function _alias_gss {
  _YaffaCall 'gss' 'git status -sb' 'Displays in short form the current state of your Git working directory and staging area' @args
}
Set-Alias -Name 'gss' -Value _alias_gss -Option AllScope -Force

# Changes in the working tree not yet staged for the next commit
function _alias_gd {
  _YaffaCall 'gd' 'git diff' 'Changes in the working tree not yet staged for the next commit' @args
}
Set-Alias -Name 'gd' -Value _alias_gd -Option AllScope -Force

# Show all changes since the last commit (staged and unstaged combined)
function _alias_gdh {
  _YaffaCall 'gdh' 'git diff HEAD' 'Show all changes since the last commit (staged and unstaged combined)' @args
}
Set-Alias -Name 'gdh' -Value _alias_gdh -Option AllScope -Force

# Show staged changes (difference between the index and the last commit) — what would be committed
function _alias_gds {
  _YaffaCall 'gds' 'git diff --staged' 'Show staged changes (difference between the index and the last commit) — what would be committed' @args
}
Set-Alias -Name 'gds' -Value _alias_gds -Option AllScope -Force

# Show staged changes (difference between the index and the last commit) — what would be committed
Set-Alias -Name 'gdc' -Value _alias_gds -Option AllScope -Force

# Show the total amount of additions or deletions
function _alias_gdss {
  _YaffaCall 'gdss' 'git diff --staged --stat' 'Show the total amount of additions or deletions' @args
}
Set-Alias -Name 'gdss' -Value _alias_gdss -Option AllScope -Force

# Switch branches or restore working tree files
function _alias_gco {
  _YaffaCall 'gco' 'git checkout' 'Switch branches or restore working tree files' @args
}
Set-Alias -Name 'gco' -Value _alias_gco -Option AllScope -Force

# Create and switch to a new branch
function _alias_gcob {
  _YaffaCall 'gcob' 'git checkout -b' 'Create and switch to a new branch' @args
}
Set-Alias -Name 'gcob' -Value _alias_gcob -Option AllScope -Force

# Create and switch to a new branch
Set-Alias -Name 'gcb' -Value _alias_gcob -Option AllScope -Force

# List, create, or delete branches
function _alias_gb {
  _YaffaCall 'gb' 'git branch' 'List, create, or delete branches' @args
}
Set-Alias -Name 'gb' -Value _alias_gb -Option AllScope -Force

# List all branches, including remotes
function _alias_gba {
  _YaffaCall 'gba' 'git branch -a' 'List all branches, including remotes' @args
}
Set-Alias -Name 'gba' -Value _alias_gba -Option AllScope -Force

# Fetch from all remotes and remove stale remote-tracking refs
function _alias_gf {
  _YaffaCall 'gf' 'git fetch --all --prune' 'Fetch from all remotes and remove stale remote-tracking refs' @args
}
Set-Alias -Name 'gf' -Value _alias_gf -Option AllScope -Force

# Fetch and integrate changes from the remote branch
function _alias_gpl {
  _YaffaCall 'gpl' 'git pull' 'Fetch and integrate changes from the remote branch' @args
}
Set-Alias -Name 'gpl' -Value _alias_gpl -Option AllScope -Force

# Merge a branch into the current branch
function _alias_gm {
  _YaffaCall 'gm' 'git merge' 'Merge a branch into the current branch' @args
}
Set-Alias -Name 'gm' -Value _alias_gm -Option AllScope -Force

# Reapply commits on top of another base tip
function _alias_grb {
  _YaffaCall 'grb' 'git rebase' 'Reapply commits on top of another base tip' @args
}
Set-Alias -Name 'grb' -Value _alias_grb -Option AllScope -Force

# Interactive rebase
function _alias_grbi {
  _YaffaCall 'grbi' 'git rebase -i' 'Interactive rebase' @args
}
Set-Alias -Name 'grbi' -Value _alias_grbi -Option AllScope -Force

# Stash uncommitted changes
function _alias_gst {
  _YaffaCall 'gst' 'git stash' 'Stash uncommitted changes' @args
}
Set-Alias -Name 'gst' -Value _alias_gst -Option AllScope -Force

# Re-apply and remove the most recent stash
function _alias_gstp {
  _YaffaCall 'gstp' 'git stash pop' 'Re-apply and remove the most recent stash' @args
}
Set-Alias -Name 'gstp' -Value _alias_gstp -Option AllScope -Force

# Commit with an inline message
function _alias_gcm {
  _YaffaCall 'gcm' 'git commit -m' 'Commit with an inline message' @args
}
Set-Alias -Name 'gcm' -Value _alias_gcm -Option AllScope -Force

# Amend the most recent commit
function _alias_gca {
  _YaffaCall 'gca' 'git commit --amend' 'Amend the most recent commit' @args
}
Set-Alias -Name 'gca' -Value _alias_gca -Option AllScope -Force

# Show the most recent commit
function _alias_glast {
  _YaffaCall 'glast' 'git log -1 HEAD' 'Show the most recent commit' @args
}
Set-Alias -Name 'glast' -Value _alias_glast -Option AllScope -Force

# Undo the last commit but keep the changes staged
function _alias_gundo {
  _YaffaCall 'gundo' 'git reset --soft HEAD~1' 'Undo the last commit but keep the changes staged' @args
}
Set-Alias -Name 'gundo' -Value _alias_gundo -Option AllScope -Force

# Remove untracked files and directories — irreversible
function _alias_gclean {
  _YaffaCall 'gclean' 'git clean -fd' 'Remove untracked files and directories — irreversible' @args
}
Set-Alias -Name 'gclean' -Value _alias_gclean -Option AllScope -Force
