package gitea.organization;

import haxe.DynamicAccess;

/** Represents a team in an organization. **/
@:expose class Team {

	/** Value indicating whether this team can create organization repositories. **/
	public var canCreateOrgRepo = false;

	/** The team description. **/
	public var description = "";

	/** The team identifier. **/
	public var id = -1;

	/** Value indicating whether this team includes all repositories. **/
	public var includesAllRepositories = false;

	/** The team name. **/
	public var name = "";

	/** The team organization. **/
	public var organization: Null<Organization> = null;

	/** The team permission. **/
	public var permission: TeamPermission = None;

	/** The units that this team owns. **/
	public var units: Array<String> = [];

	/** Creates a new team. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("can_create_org_repo") && Std.isOfType(data["can_create_org_repo"], Bool)) canCreateOrgRepo = data["can_create_org_repo"];
		if (data.exists("description") && Std.isOfType(data["description"], String)) description = data["description"];
		if (data.exists("id") && Std.isOfType(data["id"], Int)) id = data["id"];
		if (data.exists("includes_all_repositories") && Std.isOfType(data["includes_all_repositories"], Bool)) includesAllRepositories = data["includes_all_repositories"];
		if (data.exists("name") && Std.isOfType(data["name"], String)) name = data["name"];
		if (data.exists("organization") && Reflect.isObject(data["organization"])) organization = new Organization(data["organization"]);
		if (data.exists("permission") && Std.isOfType(data["permission"], String)) permission = data["permission"];
		if (data.exists("units") && Std.isOfType(data["units"], Array)) units = data["units"];
	}
}

/** Defines the permission of a team. **/
enum abstract TeamPermission(String) from String {

	/** The team has the administrator permission. **/
	var Admin = "admin";

	/** The team doesn't have any permission. **/
	var None = "none";

	/** The team has the owner permission. **/
	var Owner = "owner";

	/** The team has the read permission. **/
	var Read = "read";

	/** The team has the write permission. **/
	var Write = "write";
}
