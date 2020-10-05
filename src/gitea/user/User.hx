package gitea.user;

import haxe.DynamicAccess;

/** Represents a Gitea user. **/
@:expose
@:structInit
class User {

	/** The URL to the user's avatar. **/
	public var avatarUrl = "";

	/** The mail address. **/
	public var email = "";

	/** The full name. **/
	public var fullName = "";

	/** The user identifier. **/
	public final id: Int;

	/** The user locale. **/
	public var language = "";

	/** The name of the Gitea account. **/
	public final login: String;

	/** Creates a new user. **/
	public function new(id: Int, login: String) {
		this.id = id;
		this.login = login;
	}

	/** Creates a new user from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final user = new User(
			map.exists("id") && Std.isOfType(map["id"], Int) ? map["id"] : -1,
			map.exists("login") && Std.isOfType(map["login"], String) ? map["login"] : ""
		);

		if (map.exists("avatar_url") && Std.isOfType(map["avatar_url"], String)) user.avatarUrl = map["avatar_url"];
		if (map.exists("email") && Std.isOfType(map["email"], String)) user.email = map["email"];
		if (map.exists("full_name") && Std.isOfType(map["full_name"], String)) user.fullName = map["full_name"];
		if (map.exists("language") && Std.isOfType(map["language"], String)) user.language = map["language"];
		return user;
	}
}
