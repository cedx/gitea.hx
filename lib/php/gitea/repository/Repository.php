<?php
/**
 * Generated by Haxe 4.1.4
 */

namespace gitea\repository;

use \php\Boot;
use \datetime\utils\DateTimeUtils;
use \gitea\user\User;

/**
 * Represents a repository.
 */
class Repository {
	/**
	 * @var bool
	 * Value indicating whether to enable commit merging.
	 */
	public $allowMergeCommits;
	/**
	 * @var bool
	 * Value indicating whether to enable rebasing to merge commits.
	 */
	public $allowRebase;
	/**
	 * @var bool
	 * Value indicating whether to enable rebasing with explicit merge commits.
	 */
	public $allowRebaseExplicit;
	/**
	 * @var bool
	 * Value indicating whether to enable squashing to merge commits.
	 */
	public $allowSquashMerge;
	/**
	 * @var string
	 * The URL of the repository's avatar.
	 */
	public $avatarUrl;
	/**
	 * @var string
	 * The HTTP-based URL for cloning this repository.
	 */
	public $cloneUrl;
	/**
	 * @var \Date
	 * The date the repository was created.
	 */
	public $createdAt;
	/**
	 * @var string
	 * The name of the default branch.
	 */
	public $defaultBranch;
	/**
	 * @var string
	 * The repository description.
	 */
	public $description;
	/**
	 * @var ExternalTracker
	 * The settings of the external tracker.
	 */
	public $externalTracker;
	/**
	 * @var ExternalWiki
	 * The settings of the external wiki.
	 */
	public $externalWiki;
	/**
	 * @var int
	 * The number of forks of this repository.
	 */
	public $forksCount;
	/**
	 * @var string
	 * The full name.
	 */
	public $fullName;
	/**
	 * @var bool
	 * Value indicating whether this repository has issues.
	 */
	public $hasIssues;
	/**
	 * @var bool
	 * Value indicating whether this repository has pull requests.
	 */
	public $hasPullRequests;
	/**
	 * @var bool
	 * Value indicating whether this repository has a wiki.
	 */
	public $hasWiki;
	/**
	 * @var string
	 * The Gitea URL of this repository.
	 */
	public $htmlUrl;
	/**
	 * @var int
	 * The repository identifier.
	 */
	public $id;
	/**
	 * @var bool
	 * Value indicating whether to ignore whitespace for conflicts.
	 */
	public $ignoreWhitespaceConflicts;
	/**
	 * @var InternalTracker
	 * The settings of the internal tracker.
	 */
	public $internalTracker;
	/**
	 * @var bool
	 * Value indicating whether this repository is archived.
	 */
	public $isArchived;
	/**
	 * @var bool
	 * Value indicating whether this repository is empty.
	 */
	public $isEmpty;
	/**
	 * @var bool
	 * Value indicating whether this repository is a fork.
	 */
	public $isFork;
	/**
	 * @var bool
	 * Value indicating whether this repository is a mirror.
	 */
	public $isMirror;
	/**
	 * @var bool
	 * Value indicating whether this repository is private.
	 */
	public $isPrivate;
	/**
	 * @var bool
	 * Value indicating whether this repository is a template.
	 */
	public $isTemplate;
	/**
	 * @var string
	 * The repository name.
	 */
	public $name;
	/**
	 * @var int
	 * The number of open issues of this repository.
	 */
	public $openIssuesCount;
	/**
	 * @var int
	 * The number of open pull requests of this repository.
	 */
	public $openPullRequestsCount;
	/**
	 * @var string
	 * The original URL of this repository.
	 */
	public $originalUrl;
	/**
	 * @var User
	 * The repository owner.
	 */
	public $owner;
	/**
	 * @var Repository
	 * The parent repository, if this repository is a fork or a mirror.
	 */
	public $parent;
	/**
	 * @var Permission
	 * The repository permissions.
	 */
	public $permissions;
	/**
	 * @var int
	 * The number of releases of this repository.
	 */
	public $releasesCount;
	/**
	 * @var int
	 * The repository size, in kilobytes.
	 */
	public $size;
	/**
	 * @var string
	 * The SSH-based URL for cloning this repository.
	 */
	public $sshUrl;
	/**
	 * @var int
	 * The number of stars of this repository.
	 */
	public $starsCount;
	/**
	 * @var \Date
	 * The date the repository was updated.
	 */
	public $updatedAt;
	/**
	 * @var int
	 * The number of watchers of this repository.
	 */
	public $watchersCount;
	/**
	 * @var string
	 * The URL of the repository website.
	 */
	public $website;

	/**
	 * Creates a new repository.
	 * 
	 * @param mixed $data
	 * 
	 * @return void
	 */
	public function __construct ($data = null) {
		$this->website = "";
		$this->watchersCount = 0;
		$this->updatedAt = null;
		$this->starsCount = 0;
		$this->sshUrl = "";
		$this->size = 0;
		$this->releasesCount = 0;
		$this->permissions = null;
		$this->parent = null;
		$this->owner = null;
		$this->originalUrl = "";
		$this->openPullRequestsCount = 0;
		$this->openIssuesCount = 0;
		$this->name = "";
		$this->isTemplate = false;
		$this->isPrivate = false;
		$this->isMirror = false;
		$this->isFork = false;
		$this->isEmpty = false;
		$this->isArchived = false;
		$this->internalTracker = null;
		$this->ignoreWhitespaceConflicts = false;
		$this->id = -1;
		$this->htmlUrl = "";
		$this->hasWiki = false;
		$this->hasPullRequests = false;
		$this->hasIssues = false;
		$this->fullName = "";
		$this->forksCount = 0;
		$this->externalWiki = null;
		$this->externalTracker = null;
		$this->description = "";
		$this->defaultBranch = "";
		$this->createdAt = null;
		$this->cloneUrl = "";
		$this->avatarUrl = "";
		$this->allowSquashMerge = false;
		$this->allowRebaseExplicit = false;
		$this->allowRebase = false;
		$this->allowMergeCommits = false;
		if ($data !== null) {
			if (\Reflect::hasField($data, "allow_merge_commits") && is_bool(\Reflect::field($data, "allow_merge_commits"))) {
				$this->allowMergeCommits = \Reflect::field($data, "allow_merge_commits");
			}
			if (\Reflect::hasField($data, "allow_rebase") && is_bool(\Reflect::field($data, "allow_rebase"))) {
				$this->allowRebase = \Reflect::field($data, "allow_rebase");
			}
			if (\Reflect::hasField($data, "allow_rebase_explicit") && is_bool(\Reflect::field($data, "allow_rebase_explicit"))) {
				$this->allowRebaseExplicit = \Reflect::field($data, "allow_rebase_explicit");
			}
			if (\Reflect::hasField($data, "allow_squash_merge") && is_bool(\Reflect::field($data, "allow_squash_merge"))) {
				$this->allowSquashMerge = \Reflect::field($data, "allow_squash_merge");
			}
			if (\Reflect::hasField($data, "archived") && is_bool(\Reflect::field($data, "archived"))) {
				$this->isArchived = \Reflect::field($data, "archived");
			}
			if (\Reflect::hasField($data, "avatar_url") && is_string(\Reflect::field($data, "avatar_url"))) {
				$this->avatarUrl = \Reflect::field($data, "avatar_url");
			}
			if (\Reflect::hasField($data, "clone_url") && is_string(\Reflect::field($data, "clone_url"))) {
				$this->cloneUrl = \Reflect::field($data, "clone_url");
			}
			if (\Reflect::hasField($data, "created_at") && is_string(\Reflect::field($data, "created_at"))) {
				$this->createdAt = \Date::fromTime((DateTimeUtils::fromString(\Reflect::field($data, "created_at")) - 62135596800.0) * 1000);
			}
			if (\Reflect::hasField($data, "default_branch") && is_string(\Reflect::field($data, "default_branch"))) {
				$this->defaultBranch = \Reflect::field($data, "default_branch");
			}
			if (\Reflect::hasField($data, "description") && is_string(\Reflect::field($data, "description"))) {
				$this->description = \Reflect::field($data, "description");
			}
			if (\Reflect::hasField($data, "empty") && is_bool(\Reflect::field($data, "empty"))) {
				$this->isEmpty = \Reflect::field($data, "empty");
			}
			if (\Reflect::hasField($data, "external_tracker") && \Reflect::isObject(\Reflect::field($data, "external_tracker"))) {
				$this->externalTracker = new ExternalTracker(\Reflect::field($data, "external_tracker"));
			}
			if (\Reflect::hasField($data, "external_wiki") && \Reflect::isObject(\Reflect::field($data, "external_wiki"))) {
				$this->externalWiki = new ExternalWiki(\Reflect::field($data, "external_wiki"));
			}
			if (\Reflect::hasField($data, "fork") && is_bool(\Reflect::field($data, "fork"))) {
				$this->isFork = \Reflect::field($data, "fork");
			}
			if (\Reflect::hasField($data, "forks_count") && Boot::isOfType(\Reflect::field($data, "forks_count"), Boot::getClass('Int'))) {
				$this->forksCount = \Reflect::field($data, "forks_count");
			}
			if (\Reflect::hasField($data, "full_name") && is_string(\Reflect::field($data, "full_name"))) {
				$this->fullName = \Reflect::field($data, "full_name");
			}
			if (\Reflect::hasField($data, "has_issues") && is_bool(\Reflect::field($data, "has_issues"))) {
				$this->hasIssues = \Reflect::field($data, "has_issues");
			}
			if (\Reflect::hasField($data, "has_pull_requests") && is_bool(\Reflect::field($data, "has_pull_requests"))) {
				$this->hasPullRequests = \Reflect::field($data, "has_pull_requests");
			}
			if (\Reflect::hasField($data, "has_wiki") && is_bool(\Reflect::field($data, "has_wiki"))) {
				$this->hasWiki = \Reflect::field($data, "has_wiki");
			}
			if (\Reflect::hasField($data, "html_url") && is_string(\Reflect::field($data, "html_url"))) {
				$this->htmlUrl = \Reflect::field($data, "html_url");
			}
			if (\Reflect::hasField($data, "id") && Boot::isOfType(\Reflect::field($data, "id"), Boot::getClass('Int'))) {
				$this->id = \Reflect::field($data, "id");
			}
			if (\Reflect::hasField($data, "ignore_whitespace_conflicts") && is_bool(\Reflect::field($data, "ignore_whitespace_conflicts"))) {
				$this->ignoreWhitespaceConflicts = \Reflect::field($data, "ignore_whitespace_conflicts");
			}
			if (\Reflect::hasField($data, "internal_tracker") && \Reflect::isObject(\Reflect::field($data, "internal_tracker"))) {
				$this->internalTracker = new InternalTracker(\Reflect::field($data, "internal_tracker"));
			}
			if (\Reflect::hasField($data, "mirror") && is_bool(\Reflect::field($data, "mirror"))) {
				$this->isMirror = \Reflect::field($data, "mirror");
			}
			if (\Reflect::hasField($data, "name") && is_string(\Reflect::field($data, "name"))) {
				$this->name = \Reflect::field($data, "name");
			}
			if (\Reflect::hasField($data, "open_issues_count") && Boot::isOfType(\Reflect::field($data, "open_issues_count"), Boot::getClass('Int'))) {
				$this->openIssuesCount = \Reflect::field($data, "open_issues_count");
			}
			if (\Reflect::hasField($data, "open_pr_counter") && Boot::isOfType(\Reflect::field($data, "open_pr_counter"), Boot::getClass('Int'))) {
				$this->openPullRequestsCount = \Reflect::field($data, "open_pr_counter");
			}
			if (\Reflect::hasField($data, "original_url") && is_string(\Reflect::field($data, "original_url"))) {
				$this->originalUrl = \Reflect::field($data, "original_url");
			}
			if (\Reflect::hasField($data, "owner") && \Reflect::isObject(\Reflect::field($data, "owner"))) {
				$this->owner = new User(\Reflect::field($data, "owner"));
			}
			if (\Reflect::hasField($data, "parent") && \Reflect::isObject(\Reflect::field($data, "parent"))) {
				$this->parent = new Repository(\Reflect::field($data, "parent"));
			}
			if (\Reflect::hasField($data, "permissions") && \Reflect::isObject(\Reflect::field($data, "permissions"))) {
				$this->permissions = new Permission(\Reflect::field($data, "permissions"));
			}
			if (\Reflect::hasField($data, "private") && is_bool(\Reflect::field($data, "private"))) {
				$this->isPrivate = \Reflect::field($data, "private");
			}
			if (\Reflect::hasField($data, "release_counter") && Boot::isOfType(\Reflect::field($data, "release_counter"), Boot::getClass('Int'))) {
				$this->releasesCount = \Reflect::field($data, "release_counter");
			}
			if (\Reflect::hasField($data, "size") && Boot::isOfType(\Reflect::field($data, "size"), Boot::getClass('Int'))) {
				$this->size = \Reflect::field($data, "size");
			}
			if (\Reflect::hasField($data, "ssh_url") && is_string(\Reflect::field($data, "ssh_url"))) {
				$this->sshUrl = \Reflect::field($data, "ssh_url");
			}
			if (\Reflect::hasField($data, "stars_count") && Boot::isOfType(\Reflect::field($data, "stars_count"), Boot::getClass('Int'))) {
				$this->starsCount = \Reflect::field($data, "stars_count");
			}
			if (\Reflect::hasField($data, "template") && is_bool(\Reflect::field($data, "template"))) {
				$this->isTemplate = \Reflect::field($data, "template");
			}
			if (\Reflect::hasField($data, "updated_at") && is_string(\Reflect::field($data, "updated_at"))) {
				$this->updatedAt = \Date::fromTime((DateTimeUtils::fromString(\Reflect::field($data, "updated_at")) - 62135596800.0) * 1000);
			}
			if (\Reflect::hasField($data, "watchers_count") && Boot::isOfType(\Reflect::field($data, "watchers_count"), Boot::getClass('Int'))) {
				$this->watchersCount = \Reflect::field($data, "watchers_count");
			}
			if (\Reflect::hasField($data, "website") && is_string(\Reflect::field($data, "website"))) {
				$this->website = \Reflect::field($data, "website");
			}
		}
	}
}

Boot::registerClass(Repository::class, 'gitea.repository.Repository');
