# Generated content — do not edit directly.
# Edit alias_my.yaml and re-run YAFFA generator.

# Open: Maven Central Repository Search
function _alias_func_mrep {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'mrep' 'python -m webbrowser https://search.maven.org/' 'Open: Maven Central Repository Search' @args
}
Set-Alias -Name 'mrep' -Value _alias_func_mrep -Option AllScope -Force

# Open: Maven Central Repository Search
function _alias_func_mvn_central {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'mvn_central' 'python -m webbrowser https://search.maven.org/' 'Open: Maven Central Repository Search' @args
}
Set-Alias -Name 'mvn_central' -Value _alias_func_mvn_central -Option AllScope -Force
Set-Alias -Name 'mcrs' -Value _alias_func_mvn_central -Option AllScope -Force
Set-Alias -Name 'mvnc' -Value _alias_func_mvn_central -Option AllScope -Force

# Open: (JetBrain) Package Search
function _alias_func_package-search {
  if (-not (_YaffaHelpAsked @args) -and -not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  _YaffaCall 'package-search' 'python -m webbrowser https://package-search.jetbrains.com' 'Open: (JetBrain) Package Search' @args
}
Set-Alias -Name 'package-search' -Value _alias_func_package-search -Option AllScope -Force
Set-Alias -Name 'pacs' -Value _alias_func_package-search -Option AllScope -Force
Set-Alias -Name 'jbps' -Value _alias_func_package-search -Option AllScope -Force

# Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project
function _alias_func_bdd {
  if (_YaffaReqTest 'file' 'pom.xml') {
    _YaffaCall 'bdd' 'mvn clean verify -PBDD' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' @args
  } elseif (_YaffaReqTest 'file' 'gradlew') {
    _YaffaCall 'bdd' './gradlew jvmTest --tests ''*Cucumber*''' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' @args
  } elseif (_YaffaReqTest 'file' 'pytest.ini') {
    _YaffaCall 'bdd' 'python -m pytest features' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' @args
  } elseif (_YaffaReqTest 'file' 'requirements-dev.txt') {
    _YaffaCall 'bdd' 'python -m pytest features' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' @args
  } else {
    Write-Host '  [error] No Maven, Gradle or pytest project found here — run ''bdd'' from a project root' -ForegroundColor Red
  }
}
Set-Alias -Name 'bdd' -Value _alias_func_bdd -Option AllScope -Force

# Run the unit (TDD) tests — Maven, Gradle or pytest project
function _alias_func_tdd {
  if (_YaffaReqTest 'file' 'pom.xml') {
    _YaffaCall 'tdd' 'mvn clean test' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' @args
  } elseif (_YaffaReqTest 'file' 'gradlew') {
    _YaffaCall 'tdd' './gradlew jvmTest' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' @args
  } elseif (_YaffaReqTest 'file' 'pytest.ini') {
    _YaffaCall 'tdd' 'python -m pytest tests' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' @args
  } elseif (_YaffaReqTest 'file' 'requirements-dev.txt') {
    _YaffaCall 'tdd' 'python -m pytest tests' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' @args
  } else {
    Write-Host '  [error] No Maven, Gradle or pytest project found here — run ''tdd'' from a project root' -ForegroundColor Red
  }
}
Set-Alias -Name 'tdd' -Value _alias_func_tdd -Option AllScope -Force
