package gitea.webhook;

import haxe.DynamicAccess;

/** Represents the author or committer of a commit. **/
class PayloadUser {

	/** The mail address. **/
	public var email = "";

	/** The full name. **/
	public var name = "";

	/** The name of the user account. **/
	public var username = "";

	/** Creates a new payload user. **/
	public function new() {}

	/** Creates a new payload user from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<String>) {
		final model = new PayloadUser();
		if (map.exists("email")) model.email = map["email"];
		if (map.exists("name")) model.name = map["name"];
		if (map.exists("username")) model.username = map["username"];
		return model;
	}
}
