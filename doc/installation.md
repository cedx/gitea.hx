# Installation

## Requirements
Before installing **Gitea.hx**, you need to make sure you have either
[Haxe](https://haxe.org), [Node.js](https://nodejs.org) or [PHP](https://www.php.net) up and running.
		
You can verify if you're already good to go with the following commands:

=== "Haxe"
		:::shell
		haxe --version
		# 4.1.4

		haxelib version
		# 4.0.2

=== "JavaScript"
		:::shell
		node --version
		# v15.0.1

		npm --version
		# 7.0.3

=== "PHP"
		:::shell
		php --version
		# PHP 7.4.12 (cli) (built: Oct 27 2020 17:18:33) ( NTS Visual C++ 2017 x64 )

		composer --version
		# Composer version 2.0.4 2020-10-30 22:39:11

!!! info
	If you plan to play with the package sources, you will also need
	[PowerShell](https://docs.microsoft.com/en-us/powershell) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material).

## Installing with a package manager

=== "Haxe"
	From a command prompt, run:

		:::shell
		haxelib install gitea

	Now in your [Haxe](https://haxe.org) code, you can use:

		:::haxe
		import gitea.*;

=== "JavaScript"
	From a command prompt, run:

		:::shell
		npm install @cedx/gitea

	Now in your [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) code, you can use:

		:::js
		// CommonJS module.
		const gitea = require("@cedx/gitea");

		// ECMAScript module.
		import * as gitea from "@cedx/gitea";

=== "PHP"
	From a command prompt, run:

		:::shell
		composer require cedx/gitea

	Now in your [PHP](https://www.php.net) code, you can use:

		:::php
		<?php
		use gitea\ApiError;
		use gitea\misc\ServerVersion;
		use gitea\organization\{Organization, Team};
		use gitea\repository\{Permission, Repository};
		use gitea\user\{User, UserHeatmapData};

## Installing from a content delivery network
This library is also available as a ready-made JavaScript bundle.
To install it, add one of these code snippets to the `<head>` of your HTML document:

``` html
<!-- jsDelivr -->
<script src="https://cdn.jsdelivr.net/npm/@cedx/gitea/build/gitea.min.js"></script>

<!-- UNPKG -->
<script src="https://unpkg.com/@cedx/gitea/build/gitea.min.js"></script>
```

The classes of this library are exposed as `gitea` property on the `window` global object:

``` html
<script>
	const {ApiError, misc, organization, repository, user} = window.gitea;
	const {ServerVersion} = misc;
	const {Organization, Team} = organization;
	const {Permission, Repository} = repository;
	const {User, UserHeatmapData} = user;
</script>
```
