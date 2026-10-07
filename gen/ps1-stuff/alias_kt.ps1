# Generated content — do not edit directly.
# Edit alias_kt.yaml and re-run YAFFA generator.

# Detect the Kotlin version configured by the Gradle or Maven project in the current directory
function _alias_func_kotlin-version {
  _YaffaCall 'kotlin-version' 'kotlin_project_version' 'Detect the Kotlin version configured by the Gradle or Maven project in the current directory' @args
}
Set-Alias -Name 'kotlin-version' -Value _alias_func_kotlin-version -Option AllScope -Force
Set-Alias -Name 'version-kotlin' -Value _alias_func_kotlin-version -Option AllScope -Force
Set-Alias -Name 'ver-kt' -Value _alias_func_kotlin-version -Option AllScope -Force
Set-Alias -Name 'kt_' -Value _alias_func_kotlin-version -Option AllScope -Force
Set-Alias -Name 'kotlin_' -Value _alias_func_kotlin-version -Option AllScope -Force

# Check your Kotlin sources for code style violations (Maven or Gradle project)
function _alias_func_ktlc {
  if (_YaffaReqTest 'file' 'pom.xml') {
    _YaffaCall 'ktlc' 'mvn ktlint:check' 'Check your Kotlin sources for code style violations (Maven or Gradle project)' @args
  } elseif (_YaffaReqTest 'file' 'gradlew') {
    _YaffaCall 'ktlc' './gradlew ktlintCheck' 'Check your Kotlin sources for code style violations (Maven or Gradle project)' @args
  } else {
    Write-Host '  [error] ktlc: no matching case — needs file ''pom.xml'' or file ''gradlew''' -ForegroundColor Red
  }
}
Set-Alias -Name 'ktlc' -Value _alias_func_ktlc -Option AllScope -Force

# Format your Kotlin sources (Maven or Gradle project)
function _alias_func_ktlf {
  if (_YaffaReqTest 'file' 'pom.xml') {
    _YaffaCall 'ktlf' 'mvn ktlint:format' 'Format your Kotlin sources (Maven or Gradle project)' @args
  } elseif (_YaffaReqTest 'file' 'gradlew') {
    _YaffaCall 'ktlf' './gradlew ktlintFormat' 'Format your Kotlin sources (Maven or Gradle project)' @args
  } else {
    Write-Host '  [error] ktlf: no matching case — needs file ''pom.xml'' or file ''gradlew''' -ForegroundColor Red
  }
}
Set-Alias -Name 'ktlf' -Value _alias_func_ktlf -Option AllScope -Force

# Generate project report of code style violations (Maven or Gradle project)
function _alias_func_ktlr {
  if (_YaffaReqTest 'file' 'pom.xml') {
    _YaffaCall 'ktlr' 'mvn ktlint:ktlint' 'Generate project report of code style violations (Maven or Gradle project)' @args
  } elseif (_YaffaReqTest 'file' 'gradlew') {
    _YaffaCall 'ktlr' './gradlew ktlintCheck; echo "Reports: build/reports/ktlint/"' 'Generate project report of code style violations (Maven or Gradle project)' @args
  } else {
    Write-Host '  [error] ktlr: no matching case — needs file ''pom.xml'' or file ''gradlew''' -ForegroundColor Red
  }
}
Set-Alias -Name 'ktlr' -Value _alias_func_ktlr -Option AllScope -Force
