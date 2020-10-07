package gitea;

import haxe.DynamicAccess;

/** Contains meta information of a commit in terms of API. **/
@:expose class CommitMeta {

	/** The commit hash. **/
	public var sha = "";

	/** The URL to the commit's history. **/
	public var url = "";

	/** Creates new commit metadata. **/
	public function new(?data: DynamicAccess<String>) if (data != null) {
		if (data.exists("sha")) sha = data["sha"];
		if (data.exists("url")) url = data["url"];
	}
}
