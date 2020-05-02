param([String]$upstream = "TheRandomLabs/scoop-nonportable:master")

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path(Split-Path(Split-Path(scoop which scoop))) }
$auto_pr = "$env:SCOOP_HOME\bin\auto-pr.ps1"
$dir = "$psscriptroot\..\bucket"
& "$psscriptroot\reset-office-version.ps1"
Invoke-Expression -Command "& '$auto_pr' -dir '$dir' -upstream $upstream $($args | ForEach-Object { "$_ " })"
