package gitea.repository;

import haxe.DynamicAccess;

/** Represents a set of permissions. **/
@:expose class Permission {

	/** Value indicating whether administrator access is allowed. **/
	public var admin = false;

	/** Value indicating whether pull is allowed. **/
	public var pull = false;

	/** Value indicating whether push is allowed. **/
	public var push = false;

	/** Creates a new set of permissions. **/
	public function new(?data: DynamicAccess<Bool>) if (data != null) {
		if (data.exists("admin")) admin = data["admin"];
		if (data.exists("pull")) pull = data["pull"];
		if (data.exists("push")) push = data["push"];
	}
}
