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
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("after") && Std.isOfType(data["after"], String)) after = data["after"];
		if (data.exists("before") && Std.isOfType(data["before"], String)) before = data["before"];
		if (data.exists("commits") && Std.isOfType(data["commits"], Array)) commits = (data["commits"]: Array<Dynamic>).map(PayloadCommit.new);
		if (data.exists("compare_url") && Std.isOfType(data["compare_url"], String)) compareUrl = data["compare_url"];
		if (data.exists("pusher") && Type.typeof(data["pusher"]) == TObject) pusher = new User(data["pusher"]);
		if (data.exists("ref") && Std.isOfType(data["ref"], String)) ref = data["ref"];
		if (data.exists("repository") && Type.typeof(data["repository"]) == TObject) repository = new Repository(data["repository"]);
		if (data.exists("secret") && Std.isOfType(data["secret"], String)) secret = data["secret"];
		if (data.exists("sender") && Type.typeof(data["sender"]) == TObject) sender = new User(data["sender"]);
	}
}
