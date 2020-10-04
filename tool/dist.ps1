#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

tool/clean.ps1
tool/version.ps1
tool/build.ps1

if (-not (Test-Path build)) { New-Item build -ItemType Directory | Out-Null }
Copy-Item lib/js/gitea.js build/gitea.js
npm run dist

Get-ChildItem lib/php -Exclude gitea | Remove-Item -Force -Recurse
