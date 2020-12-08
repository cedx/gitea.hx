package gitea.user;

import haxe.DynamicAccess;
import tink.Stringly;

/** Represents a Gitea user. **/
@:expose class User {

	/** The URL of the user's avatar. **/
	public var avatarUrl = "";

	/** The creation date. **/
	public var created: Null<Date> = null;

	/** The mail address. **/
	public var email = "";

	/** The full name. **/
	public var fullName = "";

	/** The user identifier. **/
	public var id = -1;

	/** Value indicating whether this user is an administrator. **/
	public var isAdmin = false;

	/** The user locale. **/
	public var language = "";

	/** The last connection date. **/
	public var lastLogin: Null<Date> = null;

	/** The name of the user account. **/
	public var login = "";

	/** Creates a new user. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("avatar_url") && Std.isOfType(data["avatar_url"], String)) avatarUrl = data["avatar_url"];
		if (data.exists("created") && Std.isOfType(data["created"], String)) created = (data["created"]: Stringly);
		if (data.exists("email") && Std.isOfType(data["email"], String)) email = data["email"];
		if (data.exists("full_name") && Std.isOfType(data["full_name"], String)) fullName = data["full_name"];
		if (data.exists("id") && Std.isOfType(data["id"], Int)) id = data["id"];
		if (data.exists("is_admin") && Std.isOfType(data["is_admin"], Bool)) isAdmin = data["is_admin"];
		if (data.exists("language") && Std.isOfType(data["language"], String)) language = data["language"];
		if (data.exists("last_login") && Std.isOfType(data["last_login"], String)) lastLogin = (data["last_login"]: Stringly);
		if (data.exists("login") && Std.isOfType(data["login"], String)) login = data["login"];
	}
}
