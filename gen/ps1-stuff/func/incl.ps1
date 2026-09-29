# Configure these constants in your PowerShell $PROFILE before dot-sourcing this file:
#
#   $env:YAFFA_GEN = "$HOME\.yaffa\gen\ps1-stuff"   # <user folder>\gen\ps1-stuff
#   $env:YAFFA_INCL = 'git, kt, mvn, my'   # optional; omit to load all groups
#   . "$env:YAFFA_GEN\func\incl.ps1"

$_wsFunc = $PSScriptRoot
$_wsRoot = if ($env:YAFFA_GEN)
{
    $env:YAFFA_GEN
}
else
{
    Split-Path -Parent $_wsFunc
}
# The user folder whose config/func/ps1/ functions are dot-sourced last (below)
# — the same default as the generators.
$_wsUser = if ($env:YAFFA_USER_FOLDER)
{
    $env:YAFFA_USER_FOLDER
}
else
{
    Join-Path $HOME '.yaffa'
}

# "name => cmd" steps of an alias chain not printed yet (see _YaffaCall)
$global:_YaffaSteps = @()

Write-Host "YAFFA are used for adding useful functions and aliases to this shell."
Write-Host "YAFFA are included and initialized by `"$PSCommandPath`":"
Write-Host ""
if (-not $env:YAFFA_INCL)
{
    Write-Host ""
    Write-Host "=> Will loading all available functions and aliases! (No YAFFA_INCL variable found!)"
} else {
    Write-Host "Found2 YAFFA_INCL = `"$( $env:YAFFA_INCL )`""
    Write-Host "=> Content specifies which functions and aliases to load!"
}
Write-Host "   _wsRoot = `"$_wsRoot`""
Write-Host "   _wsFunc = `"$_wsFunc`""
Write-Host "   _wsUser = `"$_wsUser`""
Write-Host "   `$PROFILE = `"$PROFILE`""
Write-Host ""

<#
.SYNOPSIS
  Run PowerShell source text, forwarding any extra arguments (re-quoted) as text.
.DESCRIPTION
  $Cmd is source (e.g. "Get-ChildItem -Force"), not a command name —
  Invoke-Expression re-parses it, with any forwarded $args re-quoted and
  appended as text, mirroring bash's `eval "$cmd" "$@"` (PowerShell has no
  direct equivalent: `& [scriptblock]::Create($Cmd) @args` does NOT splice
  $args into the block's own inner commands the way eval does).
  Usage: _YaffaInvoke <cmd> [args...]
.PARAMETER Cmd
  PowerShell source to run; extra arguments are appended to it, each single-quoted
#>
function _YaffaInvoke
{
    param([string]$Cmd)
    $quotedArgs = $args | ForEach-Object { "'" + ($_ -replace "'", "''") + "'" }
    $full = if ($quotedArgs)
    {
        "$Cmd $( $quotedArgs -join ' ' )"
    }
    else
    {
        $Cmd
    }
    # CommandNotFoundException is PowerShell's dedicated "not found" error —
    # distinct from a command that ran and merely failed on its own. This is
    # a safety net for aliases with no explicit `requires:` guard for cmd
    # (e.g. a typo, or a function that isn't actually
    # dot-sourced) — not a replacement for `requires:`, which still catches
    # this before ever attempting the call.
    try
    {
        Invoke-Expression $full
    }
    catch [System.Management.Automation.CommandNotFoundException]
    {
        Write-Host "  [error] The specified command '$Cmd' is not available! (Maybe NOT implemented if it's YAFFA sourced command!)" -ForegroundColor Red
    }
}

<#
.SYNOPSIS
  Print an optional description (yellow), followed by a "<name> => <cmd>" diagnostic (cmd in cyan), then run cmd, forwarding any extra args.
.DESCRIPTION
  Mirrors bash's _YaffaCall() (CYAN_/RESET_/YELLOW_ there). A multi-line
  $Desc (from a YAML '|' block scalar) is printed one line per line, above
  the diagnostic line. When $Cmd starts with another YAFFA alias (e.g.
  regen-yaffa => yaffa-p), this call is one step of a chain: its line is
  remembered, and the last alias of the chain prints its own description
  followed by every step line, one per line.
  Usage: _YaffaCall <name> <cmd> [desc] [args...]
.PARAMETER Name
  Alias name, shown in the diagnostic line
.PARAMETER Cmd
  PowerShell command to run (see _YaffaInvoke)
.PARAMETER Desc
  Optional description, printed in yellow above the diagnostic line (each line of a multi-line desc gets its own line)
#>
function _YaffaCall
{
    param([string]$Name, [string]$Cmd, [string]$Desc = "")
    $first = ($Cmd.Trim() -split '\s+', 2)[0]
    $alias = Get-Alias -Name $first -ErrorAction SilentlyContinue
    if ($alias -and $alias.Definition -like '_alias_*')
    {
        $global:_YaffaSteps += , @($Name, $Cmd)
    }
    else
    {
        if ($Desc)
        {
            foreach ($line in ($Desc.TrimEnd("`r", "`n") -split "`r?`n"))
            {
                Write-Host ("  " + $line) -ForegroundColor Yellow
            }
        }
        foreach ($step in @($global:_YaffaSteps) + , @($Name, $Cmd))
        {
            Write-Host ("  {0} => " -f $step[0]) -NoNewline
            Write-Host $step[1] -ForegroundColor Cyan
        }
        $global:_YaffaSteps = @()
    }
    try
    {
        _YaffaInvoke $Cmd @args
    }
    finally
    {
        # A chain that stopped early (e.g. an inner requirement failed before
        # its _YaffaCall) must not leak its remembered steps into the next call.
        $global:_YaffaSteps = @()
    }
}

<#
.SYNOPSIS
  Check a single precondition: $true if met, $false if not, $null if the requirement type is malformed.
.DESCRIPTION
  A malformed type is never satisfiable, never optional.
  Usage: _YaffaReqTest <type> <target>
.PARAMETER Type
  Requirement type: file | dir | cmd | env | expr
.PARAMETER Target
  What to check: a file or dir path, a command name, an environment variable name, or an expression
#>
function _YaffaReqTest
{
    param([string]$Type, [string]$Target)
    switch ($Type)
    {
        'file' {
            return Test-Path -LiteralPath $Target -PathType Leaf
        }
        'dir'  {
            return Test-Path -LiteralPath $Target -PathType Container
        }
        'cmd'  {
            return [bool](Get-Command $Target -ErrorAction SilentlyContinue)
        }
        'env'  {
            return [bool](Get-Item -Path "Env:$Target" -ErrorAction SilentlyContinue)
        }
        'expr' {
            return [bool](Invoke-Expression $Target)
        }
        default {
            Write-Host "  [error] unknown requirement type: '$Type'" -ForegroundColor Red
            Write-Host "Must be one of: file, dir, cmd, env, expr" -ForegroundColor Red
            return $null
        }
    }
}

<#
.SYNOPSIS
  Evaluate a precondition and apply an optional fix, reporting the outcome.
.DESCRIPTION
  Usage: _YaffaReq <type> <target> <message> [fixRun] [fixMsg] [fixOnFail]
.PARAMETER Type
  Requirement type: file | dir | cmd | env | expr (see _YaffaReqTest)
.PARAMETER Target
  What to check (see _YaffaReqTest)
.PARAMETER Message
  Error text shown when the requirement is unmet
.PARAMETER FixRun
  Optional command run to fix an unmet requirement before giving up
.PARAMETER FixMsg
  Optional text shown while running FixRun (default: "Fixing: <target>")
.PARAMETER FixOnFail
  What to do if the fix doesn't help: abort (default) or warn and continue
#>
function _YaffaReq
{
    param(
        [string]$Type, [string]$Target, [string]$Message,
        [string]$FixRun = "", [string]$FixMsg = "", [string]$FixOnFail = "abort"
    )
    $result = _YaffaReqTest $Type $Target
    if ($null -eq $result)
    {
        return $false
    }   # malformed requirement: never satisfiable, never optional
    if ($result)
    {
        return $true
    }

    if ($FixRun)
    {
        Write-Host ("  [fix] {0}" -f $( if ($FixMsg)
        {
            $FixMsg
        }
        else
        {
            "Fixing: $Target"
        } )) -ForegroundColor Yellow
        Invoke-Expression $FixRun
        if ((_YaffaReqTest $Type $Target) -eq $true)
        {
            return $true
        }
        if ($FixOnFail -eq 'warn')
        {
            Write-Host "  [warn] $Message" -ForegroundColor Yellow
            return $true
        }
        Write-Host "  [error] $Message" -ForegroundColor Red
        return $false
    }

    Write-Host "  [error] $Message" -ForegroundColor Red
    return $false
}

if ($env:YAFFA_INCL)
{
    Write-Host "YAFFA in 'incl.ps1'! YAFFA_INCL => $( $env:YAFFA_INCL ) (Loading wanted aliases!)"
    foreach ($_wsG in ($env:YAFFA_INCL -split ','))
    {
        $_wsG = $_wsG.Trim()
        if (-not $_wsG)
        {
            continue
        }
        $_wsF = Join-Path $_wsRoot "alias_$_wsG.ps1"
        Write-Host "YAFFA in 'incl.ps1'! => $_wsF"
        if (Test-Path -LiteralPath $_wsF)
        {
            . $_wsF
        }
        else
        {
            Write-Host "  [warn] no such alias group: $_wsG" -ForegroundColor Yellow
        }
    }
}
else
{
    Write-Host "YAFFA in 'incl.ps1'! YAFFA_INCL NOT FOUND! Loading all available aliases!"
    foreach ($_wsF in (Get-ChildItem -Path $_wsRoot -Filter 'alias_*.ps1' -File -ErrorAction SilentlyContinue))
    {
        Write-Host "YAFFA in 'incl.ps1'! => $( $_wsF.FullName )"
        . $_wsF.FullName
    }
}

foreach ($_wsF in (Get-ChildItem -Path $_wsFunc -Filter '*.ps1' -File -ErrorAction SilentlyContinue))
{
    if ($_wsF.FullName -ne $PSCommandPath)
    {
        . $_wsF.FullName
    }
}
# The user's own functions, straight from their user folder's config/func/ps1/
# (not generated), are dot-sourced last, so a function they redefine wins over
# the project's. No such folder loads nothing.
foreach ($_wsF in (Get-ChildItem -Path (Join-Path $_wsUser 'config/func/ps1') -Filter '*.ps1' -File -ErrorAction SilentlyContinue | Sort-Object Name))
{
    . $_wsF.FullName
}

Remove-Variable _wsFunc, _wsRoot, _wsUser, _wsG, _wsF -ErrorAction SilentlyContinue
