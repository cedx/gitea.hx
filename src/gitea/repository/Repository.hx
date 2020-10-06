package gitea.repository;

import datetime.DateTime;
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
	public final id: Int;

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
	public function new(id: Int) this.id = id;

	/** Creates a new repository from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new Repository(map.exists("id") && Std.isOfType(map["id"], Int) ? map["id"] : -1);
		if (map.exists("allow_merge_commits") && Std.isOfType(map["allow_merge_commits"], Bool)) model.allowMergeCommits = map["allow_merge_commits"];
		if (map.exists("allow_rebase") && Std.isOfType(map["allow_rebase"], Bool)) model.allowRebase = map["allow_rebase"];
		if (map.exists("allow_rebase_explicit") && Std.isOfType(map["allow_rebase_explicit"], Bool)) model.allowRebaseExplicit = map["allow_rebase_explicit"];
		if (map.exists("allow_squash_merge") && Std.isOfType(map["allow_squash_merge"], Bool)) model.allowSquashMerge = map["allow_squash_merge"];
		if (map.exists("archived") && Std.isOfType(map["archived"], Bool)) model.isArchived = map["archived"];
		if (map.exists("avatar_url") && Std.isOfType(map["avatar_url"], String)) model.avatarUrl = map["avatar_url"];
		if (map.exists("clone_url") && Std.isOfType(map["clone_url"], String)) model.cloneUrl = map["clone_url"];
		if (map.exists("created_at") && Std.isOfType(map["created_at"], String)) model.createdAt = DateTime.fromString(map["created_at"]);
		if (map.exists("default_branch") && Std.isOfType(map["default_branch"], String)) model.defaultBranch = map["default_branch"];
		if (map.exists("description") && Std.isOfType(map["description"], String)) model.description = map["description"];
		if (map.exists("empty") && Std.isOfType(map["empty"], Bool)) model.isEmpty = map["empty"];
		if (map.exists("external_tracker") && Reflect.isObject(map["external_tracker"])) model.externalTracker = ExternalTracker.fromJson(map["external_tracker"]);
		if (map.exists("external_wiki") && Reflect.isObject(map["external_wiki"])) model.externalWiki = ExternalWiki.fromJson(map["external_wiki"]);
		if (map.exists("fork") && Std.isOfType(map["fork"], Bool)) model.isFork = map["fork"];
		if (map.exists("forks_count") && Std.isOfType(map["forks_count"], Int)) model.forksCount = map["forks_count"];
		if (map.exists("full_name") && Std.isOfType(map["full_name"], String)) model.fullName = map["full_name"];
		if (map.exists("has_issues") && Std.isOfType(map["has_issues"], Bool)) model.hasIssues = map["has_issues"];
		if (map.exists("has_pull_requests") && Std.isOfType(map["has_pull_requests"], Bool)) model.hasPullRequests = map["has_pull_requests"];
		if (map.exists("has_wiki") && Std.isOfType(map["has_wiki"], Bool)) model.hasWiki = map["has_wiki"];
		if (map.exists("html_url") && Std.isOfType(map["html_url"], String)) model.htmlUrl = map["html_url"];
		if (map.exists("ignore_whitespace_conflicts") && Std.isOfType(map["ignore_whitespace_conflicts"], Bool)) model.ignoreWhitespaceConflicts = map["ignore_whitespace_conflicts"];
		if (map.exists("internal_tracker") && Reflect.isObject(map["internal_tracker"])) model.internalTracker = InternalTracker.fromJson(map["internal_tracker"]);
		if (map.exists("mirror") && Std.isOfType(map["mirror"], Bool)) model.isMirror = map["mirror"];
		if (map.exists("name") && Std.isOfType(map["name"], String)) model.name = map["name"];
		if (map.exists("open_issues_count") && Std.isOfType(map["open_issues_count"], Int)) model.openIssuesCount = map["open_issues_count"];
		if (map.exists("open_pr_counter") && Std.isOfType(map["open_pr_counter"], Int)) model.openPullRequestsCount = map["open_pr_counter"];
		if (map.exists("original_url") && Std.isOfType(map["original_url"], String)) model.originalUrl = map["original_url"];
		if (map.exists("owner") && Reflect.isObject(map["owner"])) model.owner = User.fromJson(map["owner"]);
		if (map.exists("parent") && Reflect.isObject(map["parent"])) model.parent = Repository.fromJson(map["parent"]);
		if (map.exists("permissions") && Reflect.isObject(map["permissions"])) model.permissions = Permission.fromJson(map["permissions"]);
		if (map.exists("private") && Std.isOfType(map["private"], Bool)) model.isPrivate = map["private"];
		if (map.exists("release_counter") && Std.isOfType(map["release_counter"], Int)) model.releasesCount = map["release_counter"];
		if (map.exists("size") && Std.isOfType(map["size"], Int)) model.size = map["size"];
		if (map.exists("ssh_url") && Std.isOfType(map["ssh_url"], String)) model.sshUrl = map["ssh_url"];
		if (map.exists("stars_count") && Std.isOfType(map["stars_count"], Int)) model.starsCount = map["stars_count"];
		if (map.exists("template") && Std.isOfType(map["template"], Bool)) model.isTemplate = map["template"];
		if (map.exists("updated_at") && Std.isOfType(map["updated_at"], String)) model.updatedAt = DateTime.fromString(map["updated_at"]);
		if (map.exists("watchers_count") && Std.isOfType(map["watchers_count"], Int)) model.watchersCount = map["watchers_count"];
		if (map.exists("website") && Std.isOfType(map["website"], String)) model.website = map["website"];
		return model;
	}
}
