package gitea.repository;

import haxe.DynamicAccess;

/** Represents a repository tag. **/
@:expose class Tag {

	/** The commit metadata. **/
	public var commit: Null<CommitMeta> = null;

	/** The tag identifier. **/
	public var id = "";

	/** The tag name. **/
	public var name = "";

	/** The URL of the `.tar.gz` archive. **/
	public var tarballUrl = "";

	/** The URL of the `.zip` archive. **/
	public var zipballUrl = "";

	/** Creates a new tag. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("commit") && Reflect.isObject(data["commit"])) commit = new CommitMeta(data["commit"]);
		if (data.exists("id") && Std.isOfType(data["id"], String)) id = data["id"];
		if (data.exists("name") && Std.isOfType(data["name"], String)) name = data["name"];
		if (data.exists("tarball_url") && Std.isOfType(data["tarball_url"], String)) tarballUrl = data["tarball_url"];
		if (data.exists("zipball_url") && Std.isOfType(data["zipball_url"], String)) zipballUrl = data["zipball_url"];
	}
}
