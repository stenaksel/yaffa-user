# YAFFA PowerShell functions

<#
.SYNOPSIS
  Create a directory and immediately cd into it.
.PARAMETER dir
  Directory path to create and enter.
#>
function mkcd($dir)
{
    New-Item -ItemType Directory -Force $dir | Out-Null
    Set-Location $dir
}

<#
.SYNOPSIS
  Print a greeting message.
.PARAMETER name
  Name to greet.
#>
function greet_person([string]$name)    # example function for alias "greet"
{
    Write-Output "Hello$( if ($name)
    {
        ", $name"
    } )!"
}

<#
.SYNOPSIS
  Detect the Kotlin version configured by the Gradle or Maven project in a directory.
.PARAMETER dir
  Directory to search (defaults to the current directory).
#>
function kotlin_project_version([string]$dir = ".")
{
    $gradleKts = Join-Path $dir "build.gradle.kts"
    $gradleGroovy = Join-Path $dir "build.gradle"
    $pom = Join-Path $dir "pom.xml"

    $gradleFile = if (Test-Path -LiteralPath $gradleKts)
    {
        $gradleKts
    }
    elseif (Test-Path -LiteralPath $gradleGroovy)
    {
        $gradleGroovy
    }
    else
    {
        $null
    }
    if ($gradleFile)
    {
        $content = Get-Content -LiteralPath $gradleFile -Raw
        # Kotlin DSL: kotlin("jvm") version "X"  /  Groovy DSL: id 'org.jetbrains.kotlin.jvm' version 'X'
        $match = [regex]::Match($content, "(?:kotlin\(|id[( ])[""'][^""']*[""']\)?\s+version\s+[""']([^""']+)[""']")
        $version = if ($match.Success)
        {
            $match.Groups[1].Value
        }
        else
        {
            $null
        }

        if (-not $version)
        {
            # No literal version in the plugins block — the version may instead
            # come from a version catalog (gradle/libs.versions.toml).
            $catalog = Join-Path $dir "gradle/libs.versions.toml"
            if (Test-Path -LiteralPath $catalog)
            {
                $catalogMatch = [regex]::Match((Get-Content -LiteralPath $catalog -Raw), '(?m)^\s*kotlin\s*=\s*"([^"]+)"')
                if ($catalogMatch.Success)
                {
                    $version = $catalogMatch.Groups[1].Value
                }
            }
        }

        if ($version)
        {
            Write-Output "Kotlin $version (Gradle: $gradleFile)"
            return
        }
        Write-Warning "Gradle project found in '$dir' but no Kotlin version detected"
        return
    }

    if (Test-Path -LiteralPath $pom)
    {
        $content = Get-Content -LiteralPath $pom -Raw
        # Prefer a <kotlin.version> property — the conventional way kotlin-maven-plugin's
        # own <version> is usually set — before falling back to a literal plugin version.
        $version = $null
        $propMatch = [regex]::Match($content, '<kotlin\.version>([^<]+)</kotlin\.version>')
        if ($propMatch.Success)
        {
            $version = $propMatch.Groups[1].Value
        }
        if (-not $version)
        {
            $pluginMatch = [regex]::Match($content, '<artifactId>kotlin-maven-plugin</artifactId>\s*<version>([^<]+)</version>')
            if ($pluginMatch.Success)
            {
                $version = $pluginMatch.Groups[1].Value
            }
        }

        if ($version)
        {
            Write-Output "Kotlin $version (Maven: $pom)"
            return
        }

        # Not found locally — it may be inherited from a parent POM not present
        # in this directory. Fall back to the effective POM (same command as the
        # 'mep' alias), which has parent inheritance already merged/interpolated.
        if (Get-Command mvn -ErrorAction SilentlyContinue)
        {
            $effectivePom = & mvn -f $pom help:effective-pom 2> $null | Out-String
            $propMatch = [regex]::Match($effectivePom, '<kotlin\.version>([^<]+)</kotlin\.version>')
            $version = if ($propMatch.Success)
            {
                $propMatch.Groups[1].Value
            }
            else
            {
                $null
            }
            if (-not $version)
            {
                $pluginMatch = [regex]::Match($effectivePom, '<artifactId>kotlin-maven-plugin</artifactId>\s*<version>([^<]+)</version>')
                if ($pluginMatch.Success)
                {
                    $version = $pluginMatch.Groups[1].Value
                }
            }
            if ($version)
            {
                Write-Output "Kotlin $version (Maven effective-pom, inherited: $pom)"
                return
            }
        }

        Write-Warning "Maven project found in '$dir' but no Kotlin version detected"
        return
    }

    Write-Warning "No Gradle or Maven project found in '$dir'"
}

# Source - https://superuser.com/a/1509327
# Posted by Adam Wemlinger, modified by community. See post 'Timeline' for change history
# Retrieved 2026-09-09, License - CC BY-SA 4.0
#TODO Do we want to include?
<#
.SYNOPSIS
  Search the full PSReadLine command history for entries containing the given text.
#>
function histfind
{
    $find = $args;
    Write-Host "Finding in full history using {`$_ -like `"*$find*`"}";
    #Get-Content (Get-PSReadlineOption).HistorySavePath | ? {$_ -like "*$find*"} | Get-Unique | more
    Get-Content (Get-PSReadlineOption).HistorySavePath | Where-Object { $_ -like "*$find*" } | Get-Unique | more
}

<#
.SYNOPSIS
  Regenerate gen/bash-stuff/ and gen/ps1-stuff/ with YAFFA-K (the Kotlin generator); run from the YAFFA root.
.DESCRIPTION
  Gradle only hands the app what's inside --args="...", so extra options
  must go in there — appended after the command they'd reach Gradle itself.
.PARAMETER options
  Extra YAFFA-K options, passed on inside Gradle's --args (e.g. --help)
#>
function yaffa_k
{
    & .\YAFFA-K\gradlew.bat -p YAFFA-K -q run "--args=generate $args"
}

<#
.SYNOPSIS
  Warn if a folder doesn't exist; returns $true if it exists, $false otherwise.
.PARAMETER folderInfo
  Description of the folder, used in the warning (e.g. 'YAFFA user folder').
.PARAMETER folderName
  Path of the folder to check; '~' and relative paths are expanded.
#>
function informExistFolder
{
    param(
        [string]$folderInfo = 'Folder',
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$folderName
    )

    $folderNameExpanded = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($folderName)
    if (-not (Test-Path -Path $folderNameExpanded -PathType Container))
    {
        Write-Warning "$folderInfo does not exist: '$folderName' => '$folderNameExpanded'"
        return $false
    }
    return $true
}
