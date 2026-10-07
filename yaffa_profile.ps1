# YAFFA for both Windows PowerShell 5.1 and PowerShell 7: dot-sourced from the
# user folder ($env:YAFFA_USER_FOLDER, else ~\.yaffa) by
#   Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
#   Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# so both shells load YAFFA the same way. Keep it 5.1-compatible.
#
# Dot-source it at the profile's top level, or from a function that is itself
# dot-sourced (". shell_startup"): otherwise YAFFA's functions and aliases
# vanish together with the calling function's scope.

<#
.SYNOPSIS
  Warn if a folder doesn't exist; returns $true if it exists, $false otherwise.
.PARAMETER folderInfo
  Description of the folder, used in the warning (e.g. 'YAFFA user folder').
.PARAMETER folderName
  Path of the folder to check; '~' and relative paths are expanded.
#>
function _informExistFolder
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

# YAFFA user folder: $env:YAFFA_USER_FOLDER, defaults to ~\.yaffa (as for the generators)
$yaffaUserFolder = $env:YAFFA_USER_FOLDER
if (-not $yaffaUserFolder)
{
    $yaffaUserFolder = Join-Path '~' '.yaffa'
    Write-Host "Environment variable YAFFA_USER_FOLDER not set, using default: $yaffaUserFolder"
}

# Your generated files (project + your own aliases) are in <user folder>\gen\ps1-stuff
$yaffaIncl = Join-Path $yaffaUserFolder 'gen\ps1-stuff\func\incl.ps1'

# YAFFA - optionally: Specify environment variable YAFFA_INCL to control what alias groups to load. Omit to load all groups!
# $env:YAFFA_INCL = 'default, git, mvn, my, yaffa'

$yaffaGenerateHint = "Run a YAFFA generator (it creates <user folder>\gen); put your own aliases in <user folder>\config. YAFFA not loaded."
if (_informExistFolder 'YAFFA user folder' $yaffaUserFolder)
{
    if (Test-Path $yaffaIncl -PathType Leaf)
    {
        . $yaffaIncl
    }
    else
    {
        Write-Warning "YAFFA user folder has no generated files (missing '$yaffaIncl')."
        Write-Warning $yaffaGenerateHint
    }
}
else
{
    Write-Warning $yaffaGenerateHint
}
Remove-Variable yaffaUserFolder, yaffaIncl, yaffaGenerateHint -ErrorAction Ignore
