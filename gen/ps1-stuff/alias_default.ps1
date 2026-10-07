# Generated content — do not edit directly.
# Edit alias_default.yaml and re-run YAFFA generator.

# Go up one level
function _alias_func_.. {
  _YaffaCall '..' 'cd ..' 'Go up one level' @args
}
Set-Alias -Name '..' -Value _alias_func_.. -Option AllScope -Force

# Go up two levels
function _alias_func_... {
  _YaffaCall '...' 'cd ../..' 'Go up two levels' @args
}
Set-Alias -Name '...' -Value _alias_func_... -Option AllScope -Force

# Clear the terminal screen
function _alias_func_c {
  _YaffaCall 'c' 'clear' 'Clear the terminal screen' @args
}
Set-Alias -Name 'c' -Value _alias_func_c -Option AllScope -Force

# Display environment variables as a sorted table
function _alias_func_env_ {
  _YaffaCall 'env_' 'Get-ChildItem Env: | Sort-Object Name' 'Display environment variables as a sorted table' @args
}
Set-Alias -Name 'env_' -Value _alias_func_env_ -Option AllScope -Force

# Display command history
function _alias_func_hist {
  _YaffaCall 'hist' 'histfind' 'Display command history' @args
}
Set-Alias -Name 'hist' -Value _alias_func_hist -Option AllScope -Force

# Clear command history (current session and saved history file) — irreversible
function _alias_func_rm_hist {
  _YaffaCall 'rm_hist' 'Clear-History; Clear-Content (Get-PSReadlineOption).HistorySavePath' 'Clear command history (current session and saved history file) — irreversible' @args
}
Set-Alias -Name 'rm_hist' -Value _alias_func_rm_hist -Option AllScope -Force
Set-Alias -Name 'hist-c' -Value _alias_func_rm_hist -Option AllScope -Force

# Long listing including hidden files
function _alias_func_ll {
  _YaffaCall 'll' 'Get-ChildItem -Force' 'Long listing including hidden files' @args
}
Set-Alias -Name 'll' -Value _alias_func_ll -Option AllScope -Force

# Display shell version information
function _alias_func_shell_ {
  _YaffaCall 'shell_' '(Get-Process -Id $PID).MainModule.FileVersionInfo.ProductVersion' 'Display shell version information' @args
}
Set-Alias -Name 'shell_' -Value _alias_func_shell_ -Option AllScope -Force
Set-Alias -Name 'term_' -Value _alias_func_shell_ -Option AllScope -Force
