package gitea.user;

import datetime.DateTime;
import haxe.DynamicAccess;

/** Represents a Gitea user. **/
@:expose
@:structInit
class User {

	/** The URL to the user's avatar. **/
	public var avatarUrl = "";

	/** The creation date. **/
	public var created: Null<Date> = null;

	/** The mail address. **/
	public var email = "";

	/** The full name. **/
	public var fullName = "";

	/** The user identifier. **/
	public final id: Int;

	/** Value indicating whether this user is an administrator. **/
	public var isAdmin = false;

	/** The user locale. **/
	public var language = "";

	/** The last connection date. **/
	public var lastLogin: Null<Date> = null;

	/** The name of the Gitea account. **/
	public var login = "";

	/** Creates a new user. **/
	public function new(id: Int) this.id = id;

	/** Creates a new user from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new User(map.exists("id") && Std.isOfType(map["id"], Int) ? map["id"] : -1);
		if (map.exists("avatar_url") && Std.isOfType(map["avatar_url"], String)) model.avatarUrl = map["avatar_url"];
		if (map.exists("created") && Std.isOfType(map["created"], String)) model.created = DateTime.fromString(map["created"]);
		if (map.exists("email") && Std.isOfType(map["email"], String)) model.email = map["email"];
		if (map.exists("full_name") && Std.isOfType(map["full_name"], String)) model.fullName = map["full_name"];
		if (map.exists("is_admin") && Std.isOfType(map["is_admin"], Bool)) model.isAdmin = map["is_admin"];
		if (map.exists("language") && Std.isOfType(map["language"], String)) model.language = map["language"];
		if (map.exists("last_login") && Std.isOfType(map["last_login"], String)) model.lastLogin = DateTime.fromString(map["last_login"]);
		if (map.exists("login") && Std.isOfType(map["login"], String)) model.login = map["login"];
		return model;
	}
}
