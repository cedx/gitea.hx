package gitea.organization;

import haxe.DynamicAccess;

/** Represents an organization. **/
@:expose class Organization {

	/** The URL of the organization's avatar. **/
	public var avatarUrl = "";

	/** The organization description. **/
	public var description = "";

	/** The full name. **/
	public var fullName = "";

	/** The organization identifier. **/
	public final id: Int;

	/** The organization's location. **/
	public var location = "";

	/** Value indicating whether the repository administrator can change access to teams. **/
	public var repoAdminCanChangeTeamAccess = false;

	/** The name of the organization account. **/
	public var username = "";

	/** The organization visibility. **/
	public var visibility: OrganizationVisibility = Private;

	/** The URL of the organization's website. **/
	public var website = "";

	/** Creates a new organization. **/
	public function new(id: Int) this.id = id;

	/** Creates a new organization from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new Organization(map.exists("id") && Std.isOfType(map["id"], Int) ? map["id"] : -1);
		if (map.exists("avatar_url") && Std.isOfType(map["avatar_url"], String)) model.avatarUrl = map["avatar_url"];
		if (map.exists("description") && Std.isOfType(map["description"], String)) model.description = map["description"];
		if (map.exists("full_name") && Std.isOfType(map["full_name"], String)) model.fullName = map["full_name"];
		if (map.exists("location") && Std.isOfType(map["location"], String)) model.location = map["location"];
		if (map.exists("repo_admin_change_team_access") && Std.isOfType(map["repo_admin_change_team_access"], Bool)) model.repoAdminCanChangeTeamAccess = map["repo_admin_change_team_access"];
		if (map.exists("username") && Std.isOfType(map["username"], String)) model.username = map["username"];
		if (map.exists("visibility") && Std.isOfType(map["visibility"], String)) model.visibility = map["visibility"];
		if (map.exists("website") && Std.isOfType(map["website"], String)) model.website = map["website"];
		return model;
	}
}

/** Defines the visibility of an organization. **/
enum abstract OrganizationVisibility(String) from String {

	/** The organization doesn't have any permission. **/
	var Limited = "limited";

	/** The organization is private. **/
	var Private = "private";

	/** The organization is public. **/
	var Public = "public";
}
