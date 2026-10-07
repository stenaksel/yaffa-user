# Generated content — do not edit directly.
# Edit alias_yaffa_example.yaml and re-run YAFFA generator.

# Print a greeting message
function _alias_func_greet {
  _YaffaCall 'greet' 'greet_person' 'Print a greeting message' @args
}
Set-Alias -Name 'greet' -Value _alias_func_greet -Option AllScope -Force
Set-Alias -Name 'hi' -Value _alias_func_greet -Option AllScope -Force
