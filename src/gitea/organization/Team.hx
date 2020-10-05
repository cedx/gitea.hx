package gitea.organization;

import haxe.DynamicAccess;

/** Represents a team in an organization. **/
class Team {

	/** Value indicating whether this team can create organization repositories. **/
	public var canCreateOrgRepo = false;

	/** The team description. **/
	public var description = "";

	/** The team identifier. **/
	public final id: Int;

	/** Value indicating whether this team includes all repositories. **/
	public var includesAllRepositories = false;

	/** The team name. **/
	public var name = "";

	/** The team organization. **/
	// TODO: public var organization: Null<Organization> = null;

	/** The team permission. **/
	public var permission: TeamPermission = None;

	/** The units that this team owns. **/
	public var units: Array<String> = [];

	/** Creates a new team. **/
	public function new(id: Int) this.id = id;

	/** Creates a new team from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new Team(map.exists("id") && Std.isOfType(map["id"], Int) ? map["id"] : -1);
		if (map.exists("can_create_org_repo") && Std.isOfType(map["can_create_org_repo"], Bool)) model.canCreateOrgRepo = map["can_create_org_repo"];
		if (map.exists("description") && Std.isOfType(map["description"], String)) model.description = map["description"];
		if (map.exists("includes_all_repositories") && Std.isOfType(map["includes_all_repositories"], Bool)) model.includesAllRepositories = map["includes_all_repositories"];
		if (map.exists("name") && Std.isOfType(map["name"], String)) model.name = map["name"];
		// TODO: if (map.exists("organization") && Reflect.isObject(map["organization"])) model.organization = Organization.fromJson(map["organization"]);
		if (map.exists("permission") && Std.isOfType(map["permission"], String)) model.permission = map["permission"];
		if (map.exists("units") && Std.isOfType(map["units"], Array)) model.units = map["units"];
		return model;
	}
}
