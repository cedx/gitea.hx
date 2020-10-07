package gitea.repository;

import haxe.DynamicAccess;

/** Provides meta information of a repository. **/
@:expose class RepositoryMeta {

	/** The full name. **/
	public var fullName = "";

	/** The repository identifier. **/
	public var id = -1;

	/** The repository name. **/
	public var name = "";

	/** The username of the repository owner. **/
	public var owner = "";

	/** Creates new repository metadata. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("full_name") && Std.isOfType(data["full_name"], String)) fullName = data["full_name"];
		if (data.exists("id") && Std.isOfType(data["id"], Int)) id = data["id"];
		if (data.exists("name") && Std.isOfType(data["name"], String)) name = data["name"];
		if (data.exists("owner") && Std.isOfType(data["owner"], String)) owner = data["owner"];
	}
}
