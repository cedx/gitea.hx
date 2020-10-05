package gitea.hook;

import haxe.DynamicAccess;

/** Represents the author or committer of a commit. **/
@:expose class PayloadUser {

	/** The mail address. **/
	public final email: String;

	/** The full name. **/
	public final name: String;

	/** The name of the user account. **/
	public var username = "";

	/** Creates a new payload user. **/
	public function new(name: String, email: String) {
		this.email = email;
		this.name = name;
	}

	/** Creates a new payload user from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<String>) {
		final model = new PayloadUser(
			map.exists("name") ? map["name"] : "",
			map.exists("email") ? map["email"] : ""
		);

		if (map.exists("username")) model.username = map["username"];
		return model;
	}
}
