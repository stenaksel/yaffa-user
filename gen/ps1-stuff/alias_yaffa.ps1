# Generated content — do not edit directly.
# Edit alias_yaffa.yaml and re-run YAFFA generator.

# Check that user have added the environment variable YAFFA_USER_FOLDER
function _alias_func_req_yaffa_user {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'env' 'YAFFA_USER_FOLDER' 'The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_yaffa_user' -Value _alias_func_req_yaffa_user -Option AllScope -Force

# Check that Python is on PATH
function _alias_func_req_python {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_python' -Value _alias_func_req_python -Option AllScope -Force

# Check that Gradle is on PATH
function _alias_func_req_gradle {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'gradlew' 'gradlew not on PATH — install Gradle first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_gradle' -Value _alias_func_req_gradle -Option AllScope -Force

# Regenerate YAFFA - run from YAFFA root to regenerate your shell files in <user folder>/gen (default ~/.yaffa/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
function _alias_func_yaffa {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'env' 'YAFFA_USER_FOLDER' 'The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!' '' '' 'abort')) { return }
  _YaffaCall 'yaffa' 'yaffa-p' 'Regenerate YAFFA - run from YAFFA root to regenerate your shell files in <user folder>/gen (default ~/.yaffa/gen)
from the project''s config/ and your user folder''s config/ (For help use: ''yaffa --help'')
' @args
}
Set-Alias -Name 'yaffa' -Value _alias_func_yaffa -Option AllScope -Force
Set-Alias -Name 'regen-yaffa' -Value _alias_func_yaffa -Option AllScope -Force

# Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
function _alias_func_yaffa-p {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'env' 'YAFFA_USER_FOLDER' 'The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'YAFFA-P/src/generator.py' 'To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!' '' '' 'abort')) { return }
  _YaffaCall 'yaffa-p' 'python ./YAFFA-P/src/generator.py generate' 'Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
from the project''s config/ and your user folder''s config/ (For help use: ''yaffa --help'')
' @args
}
Set-Alias -Name 'yaffa-p' -Value _alias_func_yaffa-p -Option AllScope -Force

# Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
function _alias_func_yaffa-k {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'env' 'YAFFA_USER_FOLDER' 'The YAFFA environment variable YAFFA_USER_FOLDER must be specified (see documentation)!' '' '' 'abort')) { return }
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'file' 'YAFFA-K/src/jvmMain/kotlin/yaffa/cli/Generator.kt' 'To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!' '' '' 'abort')) { return }
  _YaffaCall 'yaffa-k' 'yaffa_k' 'Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
from the project''s config/ and your user folder''s config/ (For help use: ''yaffa --help'')
' @args
}
Set-Alias -Name 'yaffa-k' -Value _alias_func_yaffa-k -Option AllScope -Force
