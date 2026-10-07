# Configure these constants in your PowerShell $PROFILE before dot-sourcing this file:
#
#   $env:YAFFA_USER_FOLDER = "$HOME\.yaffa"   # your user folder
#   $env:YAFFA_INCL = 'git, kt, mvn, my'   # optional; omit to load all groups
#   . "$env:YAFFA_USER_FOLDER\gen\ps1-stuff\func\incl.ps1"

<#
  .SYNOPSIS
    Shorten a path for display by replacing a leading $HOME with '~'.
  #>
function Format-HomePath
{
    param([string]$Path)
    if (-not $Path)
    {
        return $Path
    }
    $homeDir = $HOME.TrimEnd('\', '/')
    if ( $Path.StartsWith($homeDir, [StringComparison]::OrdinalIgnoreCase))
    {
        $rest = $Path.Substring($homeDir.Length)
        # Only match whole folder names: C:\Users\Sten must not match C:\Users\Stenx
        if ($rest -eq '' -or $rest[0] -in '\', '/')
        {
            return '~' + $rest
        }
    }
    $Path
}


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
        _YaffaMessage error "The specified command '$Cmd' is not available! (Maybe NOT implemented if it's YAFFA sourced command!)"
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
  followed by every step line, one per line. The description shown is the
  first alias's, the one the user typed (or the last alias's, when the first
  has none). A synonym shares its alias's _alias_func_<name> wrapper, so $Name is
  replaced by the alias name the wrapper was invoked by.
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
    $caller = (Get-PSCallStack)[1]
    $typed = $caller.InvocationInfo.InvocationName
    if ($typed -and (Get-Alias -Name $typed -ErrorAction SilentlyContinue).Definition -eq $caller.FunctionName)
    {
        $Name = $typed
    }
    $first = ($Cmd.Trim() -split '\s+', 2)[0]
    $alias = Get-Alias -Name $first -ErrorAction SilentlyContinue
    if ($alias -and $alias.Definition -like '_alias_func_*')
    {
        # The first alias of a chain is the one the user typed: show its
        # description rather than the last alias's (unless it has none).
        if (-not $global:_YaffaSteps.Count) { $global:_YaffaDesc = $Desc }
        $global:_YaffaSteps += ,@($Name, $Cmd)
    }
    else
    {
        if ($global:_YaffaSteps.Count -and $global:_YaffaDesc) { $Desc = $global:_YaffaDesc }
        $showDescription = {
            if ($Desc)
            {
                foreach ($line in ($Desc.TrimEnd("`r", "`n") -split "`r?`n"))
                {
                    _YaffaWrite $global:_YaffaFormat.description @{ description = $line } -Colors @{ description = 'Yellow' }
                }
            }
        }
        $showSteps = {
            foreach ($step in @($global:_YaffaSteps) + ,@($Name, $Cmd))
            {
                _YaffaWrite $global:_YaffaFormat.step @{ name = $step[0]; command = $step[1] } -Colors @{ command = 'Cyan' }
            }
        }
        # Description and steps in the order generator.properties lists them.
        if ($global:_YaffaFormat.stepsFirst)
        {
            . $showSteps
            . $showDescription
        }
        else
        {
            . $showDescription
            . $showSteps
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
            _YaffaMessage error "unknown requirement type: '$Type'"
            Write-Host "Must be one of: file, dir, cmd, env, expr" -ForegroundColor Red
            return $null
        }
    }
}

<#
.SYNOPSIS
  $true if one of the arguments is --help: an alias called for its help skips its requirement checks.
.DESCRIPTION
  Mirrors bash's _YaffaHelpAsked(). Usage: _YaffaHelpAsked @args
#>
function _YaffaHelpAsked
{
    # -ccontains: exactly '--help', as in bash (not '--HELP')
    return [bool]($args -ccontains '--help')
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
        _YaffaMessage fix $( if ($FixMsg)
        {
            $FixMsg
        }
        else
        {
            "Fixing: $Target"
        } )
        Invoke-Expression $FixRun
        if ((_YaffaReqTest $Type $Target) -eq $true)
        {
            return $true
        }
        if ($FixOnFail -eq 'warn')
        {
            _YaffaMessage warn $Message
            return $true
        }
        _YaffaMessage error $Message
        return $false
    }

    _YaffaMessage error $Message
    return $false
}

<#
  .SYNOPSIS
    The value of one key=value line of a generator.properties file ('#' starts a comment line; a "quoted" value is taken exactly as written between the quotes), or a default.
  .PARAMETER File
    The properties file (a missing file gives the default).
  .PARAMETER Key
    The key to look up, e.g. output.step.
  .PARAMETER Default
    The value when the file has no such key.
  #>
function _YaffaProperty
{
    param([string]$File, [string]$Key, [string]$Default)
    $value = $Default
    if ($File -and (Test-Path -LiteralPath $File -PathType Leaf))
    {
        foreach ($line in Get-Content -LiteralPath $File)
        {
            if ($line -match '^\s*(#|$)' -or $line -notmatch '=')
            {
                continue
            }
            $k, $v = $line -split '=', 2
            if ($k.Trim() -eq $Key)
            {
                $value = $v.Trim()
                if ($value.Length -ge 2 -and $value.StartsWith('"') -and $value.EndsWith('"'))
                {
                    $value = $value.Substring(1, $value.Length - 2)
                }
            }
        }
    }
    $value
}

<#
  .SYNOPSIS
    Write a template as one line, each <placeholder> replaced by its value (in one pass; an unknown placeholder stays as written).
  .PARAMETER Template
    The template, e.g. '  <name> => <command>'.
  .PARAMETER Values
    Placeholder names and values, e.g. @{ name = 'hi'; command = 'echo hi' }.
  .PARAMETER Colors
    Colors of individual placeholders' values, e.g. @{ command = 'Cyan' }.
  .PARAMETER Color
    The color of everything else (default: the console's).
  #>
function _YaffaWrite
{
    param([string]$Template, [hashtable]$Values, [hashtable]$Colors = @{ }, [string]$Color)
    foreach ($part in [regex]::Split($Template, '(<[A-Za-z]+>)'))
    {
        $text = $part
        $partColor = $Color
        if ($part -match '^<([A-Za-z]+)>$' -and $Values.ContainsKey($Matches[1]))
        {
            $text = [string]$Values[$Matches[1]]
            if ($Colors.ContainsKey($Matches[1]))
            {
                $partColor = $Colors[$Matches[1]]
            }
        }
        if ($text -eq '')
        {
            continue
        }
        if ($partColor)
        {
            Write-Host $text -NoNewline -ForegroundColor $partColor
        }
        else
        {
            Write-Host $text -NoNewline
        }
    }
    Write-Host ''
}

<#
  .SYNOPSIS
    Write one requirement or runtime message, laid out by output.message.
  .PARAMETER Level
    fix, warn or error.
  .PARAMETER Message
    What to report.
  #>
function _YaffaMessage
{
    param([string]$Level, [string]$Message)
    $color = if ($Level -eq 'error') { 'Red' } else { 'Yellow' }
    _YaffaWrite $global:_YaffaFormat.message @{ level = $Level; message = $Message } -Color $color
}

# Output layout (SPEC.md §4), from generator.properties: next to this file in
# the generated func\, or in config\ when dot-sourced from config\func\ps1\
# itself. One template per kind of line printed while an alias runs
# (_YaffaCall, _YaffaReq); a missing key keeps the default layout.
$_wsProps = Join-Path $PSScriptRoot 'generator.properties'
if (-not (Test-Path -LiteralPath $_wsProps -PathType Leaf))
{
    $_wsProps = Join-Path (Split-Path -Parent (Split-Path -Parent $PSScriptRoot)) 'generator.properties'
}
$global:_YaffaFormat = @{
    description = _YaffaProperty $_wsProps 'output.description' '  <description>'
    step = _YaffaProperty $_wsProps 'output.step' '  <name> => <command>'
    message = _YaffaProperty $_wsProps 'output.message' '  [<level>] <message>'
    # The order of output.description and output.step in the file is the order
    # they're shown (a key the file doesn't have comes last).
    stepsFirst = $false
}
if (Test-Path -LiteralPath $_wsProps -PathType Leaf)
{
    foreach ($_wsLine in Get-Content -LiteralPath $_wsProps)
    {
        if ($_wsLine -notmatch '=')
        {
            continue
        }
        $_wsKey = ($_wsLine -split '=', 2)[0] -replace '\s', ''
        if ($_wsKey -eq 'output.description')
        {
            break
        }
        if ($_wsKey -eq 'output.step')
        {
            $global:_YaffaFormat.stepsFirst = $true
            break
        }
    }
    Remove-Variable _wsLine, _wsKey -ErrorAction Ignore
}
Remove-Variable _wsProps

<#
  .SYNOPSIS
    Print a loading message — only in an interactive session, so a
    non-interactive one (-NonInteractive, -Command, -File, CI) gets no output
    from dot-sourcing YAFFA. Warnings are still shown everywhere.
  #>
function _YaffaInfo
{
    param([string]$Text = '')
    $quiet = [Environment]::GetCommandLineArgs() | Where-Object { $_ -match '^-(noni|c$|command$|f$|file$)' }
    if ([Environment]::UserInteractive -and -not $quiet)
    {
        Write-Host $Text
    }
}

function yaffa_main
{
    _YaffaInfo "YAFFA user folder::: $( Format-HomePath $env:YAFFA_USER_FOLDER )"   # -> ~/.yaffa

    $_wsFunc = $PSScriptRoot
    # The generated folder (ps1-stuff\) this func\ is in
    $_wsRoot = Split-Path -Parent $_wsFunc
    # The user folder whose config/func/ps1/ functions are dot-sourced last (below)
    # — the same default as the generators.
    if (-not $env:YAFFA_USER_FOLDER)
    {
        Write-Warning "Did NOT find `YAFFA_USER_FOLDER` environment variable!"
        Write-Host "  YAFFA will start with ONLY config files from YAFFA source!"
        Write-Host "  Add environment variable `YAFFA_USER_FOLDER` to configure where to store personal stuff!"
    }
    $_wsUser = if ($env:YAFFA_USER_FOLDER)
    {
        $env:YAFFA_USER_FOLDER
    }
    else
    {
        #TODO Join-Path $HOME '.yaffa'
        Join-Path $HOME '/code/YAFFA'
    }
    _YaffaInfo "YAFFA _wsUser:: $_wsUser"

    # "name => cmd" steps of an alias chain not printed yet (see _YaffaCall)
    $global:_YaffaSteps = @()

    _YaffaInfo "YAFFA are used for adding useful functions and aliases to this shell."
    _YaffaInfo "YAFFA are included and initialized by `"$PSCommandPath`":"
    _YaffaInfo ""
    if (-not $env:YAFFA_INCL)
    {
        _YaffaInfo ""
        _YaffaInfo "=> _Will load all available functions and aliases! (No YAFFA_INCL variable found!)"
    }
    else
    {
        _YaffaInfo "Found2 YAFFA_INCL = `"$( $env:YAFFA_INCL )`""
        _YaffaInfo "=> Content specifies which functions and aliases to load!"
    }
    _YaffaInfo "   _wsRoot = `"$_wsRoot`""
    _YaffaInfo "   _wsFunc = `"$_wsFunc`""
    _YaffaInfo "   _wsUser = `"$_wsUser`""
    _YaffaInfo "   `$PROFILE = `"$PROFILE`""
    _YaffaInfo "   `$YAFFA_INCL = `"$YAFFA_INCL`""
    _YaffaInfo ""

    if ($env:YAFFA_INCL)
    {
        _YaffaInfo "YAFFA in 'incl.ps1'!XXXX YAFFA_INCL => $( $env:YAFFA_INCL ) (Loading wanted aliases!)"
        foreach ($_wsG in ($env:YAFFA_INCL -split ','))
        {
            $_wsG = $_wsG.Trim()
            if (-not $_wsG)
            {
                continue
            }
            $_wsF = Join-Path $_wsRoot "alias_$_wsG.ps1"
            _YaffaInfo "YAFFA in 'incl.ps1'!XXXX 0=> $_wsF"
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
        _YaffaInfo "YAFFA in 'incl.ps1'!XXXX YAFFA_INCL NOT FOUND! Loading all available aliases!"
        foreach ($_wsF in (Get-ChildItem -Path $_wsRoot -Filter 'alias_*.ps1' -File -ErrorAction SilentlyContinue))
        {
            _YaffaInfo "YAFFA in 'incl.ps1'!XXXX 1=> $( $_wsF.FullName )"
            . $_wsF.FullName
        }
    }

    foreach ($_wsF in (Get-ChildItem -Path $_wsFunc -Filter '*.ps1' -File -ErrorAction SilentlyContinue))
    {
        if ($_wsF.FullName -ne $PSCommandPath)
        {
            _YaffaInfo "YAFFA in 'incl.ps1'!XXXX 2=> . $( $_wsF.FullName )"
            _YaffaInfo "YAFFA in 'incl.ps1'!XXXX 2=> . $( Format-HomePath $_wsF.FullName )"

            . $_wsF.FullName
        }
    }
    # The user's own functions, straight from their user folder's config/func/ps1/
    # (not generated), are dot-sourced last, so a function they redefine wins over
    # the project's. No such folder loads nothing.
    # (Ignore, unlike SilentlyContinue, also keeps the expected misses out of $Error.)
    foreach ($_wsF in (Get-ChildItem -Path (Join-Path $_wsUser 'config/func/ps1') -Filter '*.ps1' -File -ErrorAction Ignore | Sort-Object Name))
    {
        # Never this file itself: with the YAFFA repo as user folder, its
        # config/func/ps1/ holds incl.ps1, and dot-sourcing it would recurse forever.
        if ($_wsF.FullName -eq $PSCommandPath)
        {
            continue
        }
        _YaffaInfo "YAFFA in 'incl.ps1'!XXXX 3=> . $( $_wsF.FullName )"
        . $_wsF.FullName
    }

    Remove-Variable _wsFunc, _wsRoot, _wsUser, _wsG, _wsF -ErrorAction Ignore
}

. yaffa_main
