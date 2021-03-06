#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

$version = (Get-Content haxelib.json | ConvertFrom-Json).version
haxe build_doc.hxml
haxelib run dox `
	--define description "Gitea client library for Haxe, JavaScript and PHP." `
	--define source-path "https://github.com/cedx/gitea.hx/blob/main/src" `
	--define themeColor 0xffc105 `
	--define version $version `
	--define website "https://cedx.github.io/gitea.hx" `
	--input-path var `
	--output-path docs/api `
	--title "Gitea.hx" `
	--toplevel-package gitea

Copy-Item docs/favicon.ico docs/api
