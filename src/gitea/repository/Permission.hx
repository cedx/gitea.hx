package gitea.repository;

import haxe.DynamicAccess;

/** Represents a set of permissions. **/
class Permission {

	/** Value indicating whether administrator access is allowed. **/
	public var admin = false;

	/** Value indicating whether pull is allowed. **/
	public var pull = false;

	/** Value indicating whether push is allowed. **/
	public var push = false;

	/** Creates a new set of permissions. **/
	public function new() {}

	/** Creates a new user from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Bool>) {
		final model = new Permission();
		if (map.exists("admin")) model.admin = map["admin"];
		if (map.exists("pull")) model.pull = map["pull"];
		if (map.exists("push")) model.push = map["push"];
		return model;
	}
}
