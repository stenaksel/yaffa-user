# Generated content — do not edit directly.
# Edit alias_git.yaml and re-run YAFFA generator.

# Short alias for git commit
function _alias_func_gc {
  _YaffaCall 'gc' 'git commit' 'Short alias for git commit' @args
}
Set-Alias -Name 'gc' -Value _alias_func_gc -Option AllScope -Force

# Detailed decorated git log with author and relative date (Use 'Q' to quit listing th log)
function _alias_func_glg {
  _YaffaCall 'glg' 'git log --pretty=format:''%C(red)%h%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(bold blue)<%an>%Creset'' --abbrev-commit --date=relative' 'Detailed decorated git log with author and relative date (Use ''Q'' to quit listing th log)' @args
}
Set-Alias -Name 'glg' -Value _alias_func_glg -Option AllScope -Force

# Displays the current state of your Git working directory and staging area
function _alias_func_gs {
  _YaffaCall 'gs' 'git status' 'Displays the current state of your Git working directory and staging area' @args
}
Set-Alias -Name 'gs' -Value _alias_func_gs -Option AllScope -Force

# Displays in short form the current state of your Git working directory and staging area
function _alias_func_gss {
  _YaffaCall 'gss' 'git status -sb' 'Displays in short form the current state of your Git working directory and staging area' @args
}
Set-Alias -Name 'gss' -Value _alias_func_gss -Option AllScope -Force

# Show all changes since the last commit (staged and unstaged combined)
function _alias_func_gdh {
  _YaffaCall 'gdh' 'git diff HEAD' 'Show all changes since the last commit (staged and unstaged combined)' @args
}
Set-Alias -Name 'gdh' -Value _alias_func_gdh -Option AllScope -Force

# Show staged changes (difference between the index and the last commit) — what would be committed
function _alias_func_gdc {
  _YaffaCall 'gdc' 'git diff --staged' 'Show staged changes (difference between the index and the last commit) — what would be committed' @args
}
Set-Alias -Name 'gdc' -Value _alias_func_gdc -Option AllScope -Force

# Show the total amount of additions or deletions
function _alias_func_gdss {
  _YaffaCall 'gdss' 'git diff --staged --stat' 'Show the total amount of additions or deletions' @args
}
Set-Alias -Name 'gdss' -Value _alias_func_gdss -Option AllScope -Force

# Create and switch to a new branch
function _alias_func_gcob {
  _YaffaCall 'gcob' 'git checkout -b' 'Create and switch to a new branch' @args
}
Set-Alias -Name 'gcob' -Value _alias_func_gcob -Option AllScope -Force

# Stash uncommitted changes
function _alias_func_gst {
  _YaffaCall 'gst' 'git stash' 'Stash uncommitted changes' @args
}
Set-Alias -Name 'gst' -Value _alias_func_gst -Option AllScope -Force

# Commit with an inline message
function _alias_func_gcm {
  _YaffaCall 'gcm' 'git commit -m' 'Commit with an inline message' @args
}
Set-Alias -Name 'gcm' -Value _alias_func_gcm -Option AllScope -Force

# Amend the most recent commit
function _alias_func_gca {
  _YaffaCall 'gca' 'git commit --amend' 'Amend the most recent commit' @args
}
Set-Alias -Name 'gca' -Value _alias_func_gca -Option AllScope -Force

# Show the most recent commit
function _alias_func_glast {
  _YaffaCall 'glast' 'git log -1 HEAD' 'Show the most recent commit' @args
}
Set-Alias -Name 'glast' -Value _alias_func_glast -Option AllScope -Force

# Undo the last commit but keep the changes staged
function _alias_func_gundo {
  _YaffaCall 'gundo' 'git reset --soft HEAD~1' 'Undo the last commit but keep the changes staged' @args
}
Set-Alias -Name 'gundo' -Value _alias_func_gundo -Option AllScope -Force

# Remove untracked files and directories — irreversible
function _alias_func_gclean {
  _YaffaCall 'gclean' 'git clean -fd' 'Remove untracked files and directories — irreversible' @args
}
Set-Alias -Name 'gclean' -Value _alias_func_gclean -Option AllScope -Force
