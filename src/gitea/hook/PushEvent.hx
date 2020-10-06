package gitea.hook;

import gitea.repository.Repository;
import gitea.user.User;
import haxe.DynamicAccess;

/** Represents a push event. **/
@:expose class PushEvent {

	/** The hash of the new Git revision. **/
	public var after = "";

	/** The hash of the previous Git revision. **/
	public var before = "";

	/** The revision commits. **/
	public var commits: Array<PayloadCommit> = [];

	/** The URL for comparing the revisions. **/
	public var compareUrl = "";

	/** The user who pushed the commits. **/
	public var pusher: Null<User> = null;

	/** The Git reference. **/
	public var ref = "";

	/** The repository where the commits were pushed. **/
	public var repository: Null<Repository> = null;

	/** The secret used to validate this event. **/
	public var secret = "";

	/** The user who sent this event. **/
	public var sender: Null<User> = null;

	/** Creates a new push event. **/
	public function new() {}

	/** Creates a new push event from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new PushEvent();
		if (map.exists("after") && Std.isOfType(map["after"], String)) model.after = map["after"];
		if (map.exists("before") && Std.isOfType(map["before"], String)) model.before = map["before"];
		if (map.exists("commits") && Std.isOfType(map["commits"], Array)) model.commits = (map["commits"]: Array<Dynamic>).map(PayloadCommit.fromJson);
		if (map.exists("compare_url") && Std.isOfType(map["compare_url"], String)) model.compareUrl = map["compare_url"];
		if (map.exists("pusher") && Reflect.isObject(map["pusher"])) model.pusher = User.fromJson(map["pusher"]);
		if (map.exists("ref") && Std.isOfType(map["ref"], String)) model.ref = map["ref"];
		if (map.exists("repository") && Reflect.isObject(map["repository"])) model.repository = Repository.fromJson(map["repository"]);
		if (map.exists("secret") && Std.isOfType(map["secret"], String)) model.secret = map["secret"];
		if (map.exists("sender") && Reflect.isObject(map["sender"])) model.sender = User.fromJson(map["sender"]);
		return model;
	}
}
