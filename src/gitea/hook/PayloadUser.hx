package gitea.hook;

import haxe.DynamicAccess;

/** Represents the author or committer of a commit. **/
@:expose class PayloadUser {

	/** The mail address. **/
	public var email = "";

	/** The full name. **/
	public var name = "";

	/** The name of the user account. **/
	public var username = "";

	/** Creates a new payload user. **/
	public function new(?data: DynamicAccess<String>) if (data != null) {
		if (data.exists("email")) email = data["email"];
		if (data.exists("name")) name = data["name"];
		if (data.exists("username")) username = data["username"];
	}
}
