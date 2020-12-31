# Installation

## Requirements
Before installing **Gitea.hx**, you need to make sure you have either
[Haxe](https://haxe.org), [Node.js](https://nodejs.org) or [PHP](https://www.php.net) up and running.
		
You can verify if you're already good to go with the following commands:

<!-- tabs:start -->

#### **Haxe**
```shell
haxe --version
# 4.1.5

haxelib version
# 4.0.2
```

#### **JavaScript**
```shell
node --version
# v15.5.0

npm --version
# 7.3.0
```

#### **PHP**
```shell
php --version
# PHP 8.0.0 (cli) (built: Nov 24 2020 22:02:58) ( NTS Visual C++ 2019 x64 )

composer --version
# Composer version 2.0.8 2020-12-03 17:20:38
```

<!-- tabs:end -->

?> If you plan to play with the package sources, you will also need [PowerShell](https://docs.microsoft.com/en-us/powershell).

## Installing with a package manager

<!-- tabs:start -->

#### **Haxe**
From a command prompt, run:

```shell
haxelib install gitea
```

Now in your [Haxe](https://haxe.org) code, you can use:

```haxe
import gitea.*;
```

#### **JavaScript**
From a command prompt, run:

```shell
npm install @cedx/gitea
```

Now in your [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) code, you can use:

```javascript
// CommonJS module.
const gitea = require("@cedx/gitea");

// ECMAScript module.
import * as gitea from "@cedx/gitea";
```

#### **PHP**
From a command prompt, run:

```shell
composer require cedx/gitea
```

Now in your [PHP](https://www.php.net) code, you can use:

```php
use gitea\ApiError;
use gitea\misc\ServerVersion;
use gitea\organization\{Organization, Team};
use gitea\repository\{Permission, Repository};
use gitea\user\{User, UserHeatmapData};
```

<!-- tabs:end -->

## Installing from a content delivery network
This library is also available as a ready-made JavaScript bundle.
To install it, add one of these code snippets to the `<head>` of your HTML document:

```html
<!-- jsDelivr -->
<script src="https://cdn.jsdelivr.net/npm/@cedx/gitea/build/gitea.min.js"></script>

<!-- UNPKG -->
<script src="https://unpkg.com/@cedx/gitea/build/gitea.min.js"></script>
```

The classes of this library are exposed as `gitea` property on the `window` global object:

```html
<script>
	const {ApiError, misc, organization, repository, user} = window.gitea;
	const {ServerVersion} = misc;
	const {Organization, Team} = organization;
	const {Permission, Repository} = repository;
	const {User, UserHeatmapData} = user;
</script>
```
