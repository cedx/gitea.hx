package gitea.repository;

import gitea.DateTools;
import gitea.user.User;
import haxe.DynamicAccess;

/** Represents a repository. **/
@:expose class Repository {

	/** Value indicating whether to enable commit merging. **/
	public var allowMergeCommits = false;

	/** Value indicating whether to enable rebasing to merge commits. **/
	public var allowRebase = false;

	/** Value indicating whether to enable rebasing with explicit merge commits. **/
	public var allowRebaseExplicit = false;

	/** Value indicating whether to enable squashing to merge commits. **/
	public var allowSquashMerge = false;

	/** The URL of the repository's avatar. **/
	public var avatarUrl = "";

	/** The HTTP-based URL for cloning this repository. **/
	public var cloneUrl = "";

	/** The date the repository was created. **/
	public var createdAt: Null<Date> = null;

	/** The name of the default branch. **/
	public var defaultBranch = "";

	/** The repository description. **/
	public var description = "";

	/** The settings of the external tracker. **/
	public var externalTracker: Null<ExternalTracker> = null;

	/** The settings of the external wiki. **/
	public var externalWiki: Null<ExternalWiki> = null;

	/** The number of forks of this repository. **/
	public var forksCount = 0;

	/** The full name. **/
	public var fullName = "";

	/** Value indicating whether this repository has issues. **/
	public var hasIssues = false;

	/** Value indicating whether this repository has pull requests. **/
	public var hasPullRequests = false;

	/** Value indicating whether this repository has a wiki. **/
	public var hasWiki = false;

	/** The Gitea URL of this repository. **/
	public var htmlUrl = "";

	/** The repository identifier. **/
	public var id = -1;

	/** Value indicating whether to ignore whitespace for conflicts. **/
	public var ignoreWhitespaceConflicts = false;

	/** The settings of the internal tracker. **/
	public var internalTracker: Null<InternalTracker> = null;

	/** Value indicating whether this repository is archived. **/
	public var isArchived = false;

	/** Value indicating whether this repository is empty. **/
	public var isEmpty = false;

	/** Value indicating whether this repository is a fork. **/
	public var isFork = false;

	/** Value indicating whether this repository is a mirror. **/
	public var isMirror = false;

	/** Value indicating whether this repository is private. **/
	public var isPrivate = false;

	/** Value indicating whether this repository is a template. **/
	public var isTemplate = false;

	/** The repository name. **/
	public var name = "";

	/** The number of open issues of this repository. **/
	public var openIssuesCount = 0;

	/** The number of open pull requests of this repository. **/
	public var openPullRequestsCount = 0;

	/** The original URL of this repository. **/
	public var originalUrl = "";

	/** The repository owner. **/
	public var owner: Null<User> = null;

	/** The parent repository, if this repository is a fork or a mirror. **/
	public var parent: Null<Repository> = null;

	/** The repository permissions. **/
	public var permissions: Null<Permission> = null;

	/** The number of releases of this repository. **/
	public var releasesCount = 0;

	/** The repository size, in kilobytes. **/
	public var size = 0;

	/** The SSH-based URL for cloning this repository. **/
	public var sshUrl = "";

	/** The number of stars of this repository. **/
	public var starsCount = 0;

	/** The date the repository was updated. **/
	public var updatedAt: Null<Date> = null;

	/** The number of watchers of this repository. **/
	public var watchersCount = 0;

	/** The URL of the repository website. **/
	public var website = "";

	/** Creates a new repository. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("allow_merge_commits") && Std.isOfType(data["allow_merge_commits"], Bool)) allowMergeCommits = data["allow_merge_commits"];
		if (data.exists("allow_rebase") && Std.isOfType(data["allow_rebase"], Bool)) allowRebase = data["allow_rebase"];
		if (data.exists("allow_rebase_explicit") && Std.isOfType(data["allow_rebase_explicit"], Bool)) allowRebaseExplicit = data["allow_rebase_explicit"];
		if (data.exists("allow_squash_merge") && Std.isOfType(data["allow_squash_merge"], Bool)) allowSquashMerge = data["allow_squash_merge"];
		if (data.exists("archived") && Std.isOfType(data["archived"], Bool)) isArchived = data["archived"];
		if (data.exists("avatar_url") && Std.isOfType(data["avatar_url"], String)) avatarUrl = data["avatar_url"];
		if (data.exists("clone_url") && Std.isOfType(data["clone_url"], String)) cloneUrl = data["clone_url"];
		if (data.exists("created_at") && Std.isOfType(data["created_at"], String)) createdAt = DateTools.parseIsoString(data["created_at"]);
		if (data.exists("default_branch") && Std.isOfType(data["default_branch"], String)) defaultBranch = data["default_branch"];
		if (data.exists("description") && Std.isOfType(data["description"], String)) description = data["description"];
		if (data.exists("empty") && Std.isOfType(data["empty"], Bool)) isEmpty = data["empty"];
		if (data.exists("external_tracker") && Reflect.isObject(data["external_tracker"])) externalTracker = new ExternalTracker(data["external_tracker"]);
		if (data.exists("external_wiki") && Reflect.isObject(data["external_wiki"])) externalWiki = new ExternalWiki(data["external_wiki"]);
		if (data.exists("fork") && Std.isOfType(data["fork"], Bool)) isFork = data["fork"];
		if (data.exists("forks_count") && Std.isOfType(data["forks_count"], Int)) forksCount = data["forks_count"];
		if (data.exists("full_name") && Std.isOfType(data["full_name"], String)) fullName = data["full_name"];
		if (data.exists("has_issues") && Std.isOfType(data["has_issues"], Bool)) hasIssues = data["has_issues"];
		if (data.exists("has_pull_requests") && Std.isOfType(data["has_pull_requests"], Bool)) hasPullRequests = data["has_pull_requests"];
		if (data.exists("has_wiki") && Std.isOfType(data["has_wiki"], Bool)) hasWiki = data["has_wiki"];
		if (data.exists("html_url") && Std.isOfType(data["html_url"], String)) htmlUrl = data["html_url"];
		if (data.exists("id") && Std.isOfType(data["id"], Int)) id = data["id"];
		if (data.exists("ignore_whitespace_conflicts") && Std.isOfType(data["ignore_whitespace_conflicts"], Bool)) ignoreWhitespaceConflicts = data["ignore_whitespace_conflicts"];
		if (data.exists("internal_tracker") && Reflect.isObject(data["internal_tracker"])) internalTracker = new InternalTracker(data["internal_tracker"]);
		if (data.exists("mirror") && Std.isOfType(data["mirror"], Bool)) isMirror = data["mirror"];
		if (data.exists("name") && Std.isOfType(data["name"], String)) name = data["name"];
		if (data.exists("open_issues_count") && Std.isOfType(data["open_issues_count"], Int)) openIssuesCount = data["open_issues_count"];
		if (data.exists("open_pr_counter") && Std.isOfType(data["open_pr_counter"], Int)) openPullRequestsCount = data["open_pr_counter"];
		if (data.exists("original_url") && Std.isOfType(data["original_url"], String)) originalUrl = data["original_url"];
		if (data.exists("owner") && Reflect.isObject(data["owner"])) owner = new User(data["owner"]);
		if (data.exists("parent") && Reflect.isObject(data["parent"])) parent = new Repository(data["parent"]);
		if (data.exists("permissions") && Reflect.isObject(data["permissions"])) permissions = new Permission(data["permissions"]);
		if (data.exists("private") && Std.isOfType(data["private"], Bool)) isPrivate = data["private"];
		if (data.exists("release_counter") && Std.isOfType(data["release_counter"], Int)) releasesCount = data["release_counter"];
		if (data.exists("size") && Std.isOfType(data["size"], Int)) size = data["size"];
		if (data.exists("ssh_url") && Std.isOfType(data["ssh_url"], String)) sshUrl = data["ssh_url"];
		if (data.exists("stars_count") && Std.isOfType(data["stars_count"], Int)) starsCount = data["stars_count"];
		if (data.exists("template") && Std.isOfType(data["template"], Bool)) isTemplate = data["template"];
		if (data.exists("updated_at") && Std.isOfType(data["updated_at"], String)) updatedAt = DateTools.parseIsoString(data["updated_at"]);
		if (data.exists("watchers_count") && Std.isOfType(data["watchers_count"], Int)) watchersCount = data["watchers_count"];
		if (data.exists("website") && Std.isOfType(data["website"], String)) website = data["website"];
	}
}
