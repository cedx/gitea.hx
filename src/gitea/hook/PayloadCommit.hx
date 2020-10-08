package gitea.hook;

import gitea.DateTools;
import haxe.DynamicAccess;

/** Represents a commit. **/
@:expose class PayloadCommit {

	/** The list of added files. **/
	public var added: Array<String> = [];

	/** The person who authored the commit. **/
	public var author: Null<PayloadUser> = null;

	/** The person who committed the code. **/
	public var committer: Null<PayloadUser> = null;

	/** The commit hash. **/
	public var id = "";

	/** The commit message. **/
	public var message = "";

	/** The list of modified files. **/
	public var modified: Array<String> = [];

	/** The list of removed files. **/
	public var removed: Array<String> = [];

	/** The commit date. **/
	public var timestamp: Null<Date> = null;

	/** The URL to the commit's history. **/
	public var url = "";

	/** The GPG verification of this commit. **/
	public var verification: Null<PayloadCommitVerification> = null;

	/** Creates a new payload commit. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("added") && Std.isOfType(data["added"], Array)) added = data["added"];
		if (data.exists("author") && Reflect.isObject(data["author"])) author = new PayloadUser(data["author"]);
		if (data.exists("committer") && Reflect.isObject(data["committer"])) committer = new PayloadUser(data["committer"]);
		if (data.exists("id") && Std.isOfType(data["id"], String)) id = data["id"];
		if (data.exists("message") && Std.isOfType(data["message"], String)) message = data["message"];
		if (data.exists("modified") && Std.isOfType(data["modified"], Array)) modified = data["modified"];
		if (data.exists("removed") && Std.isOfType(data["removed"], Array)) removed = data["removed"];
		if (data.exists("timestamp") && Std.isOfType(data["timestamp"], String)) timestamp = DateTools.parseIsoString(data["timestamp"]);
		if (data.exists("url") && Std.isOfType(data["url"], String)) url = data["url"];
		if (data.exists("verification") && Reflect.isObject(data["verification"])) verification = new PayloadCommitVerification(data["verification"]);
	}
}
