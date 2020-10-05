package gitea.hook;

import datetime.DateTime;
import haxe.DynamicAccess;

/** Represents a commit. **/
@:expose
@:structInit
class PayloadCommit {

	/** The list of added files. **/
	public var added: Array<String> = [];

	/** The person who authored the commit. **/
	public var author: Null<PayloadUser> = null;

	/** The person who committed the code. **/
	public var committer: Null<PayloadUser> = null;

	/** The commit hash. **/
	public final id: String;

	/** The commit message. **/
	public final message: String;

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
	public function new(id: String, message = "") {
		this.id = id;
		this.message = message;
	}

	/** Creates a new payload commit from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new PayloadCommit(
			map.exists("id") && Std.isOfType(map["id"], String) ? map["id"] : "",
			map.exists("message") && Std.isOfType(map["message"], String) ? map["message"] : ""
		);

		if (map.exists("added") && Std.isOfType(map["added"], Array)) model.added = map["added"];
		if (map.exists("author") && Reflect.isObject(map["author"])) model.author = PayloadUser.fromJson(map["author"]);
		if (map.exists("committer") && Reflect.isObject(map["committer"])) model.committer = PayloadUser.fromJson(map["committer"]);
		if (map.exists("modified") && Std.isOfType(map["modified"], Array)) model.modified = map["modified"];
		if (map.exists("removed") && Std.isOfType(map["removed"], Array)) model.removed = map["removed"];
		if (map.exists("timestamp") && Std.isOfType(map["timestamp"], String)) model.timestamp = DateTime.fromString(map["timestamp"]);
		if (map.exists("url") && Std.isOfType(map["url"], String)) model.url = map["url"];
		if (map.exists("verification") && Reflect.isObject(map["verification"])) model.verification = PayloadCommitVerification.fromJson(map["verification"]);
		return model;
	}
}
