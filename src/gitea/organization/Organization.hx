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
	public var id = -1;

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
	public function new(?data: DynamicAccess<Any>) if (data != null) {
		if (data.exists("avatar_url") && Std.isOfType(data["avatar_url"], String)) avatarUrl = data["avatar_url"];
		if (data.exists("description") && Std.isOfType(data["description"], String)) description = data["description"];
		if (data.exists("full_name") && Std.isOfType(data["full_name"], String)) fullName = data["full_name"];
		if (data.exists("id") && Std.isOfType(data["id"], Int)) id = data["id"];
		if (data.exists("location") && Std.isOfType(data["location"], String)) location = data["location"];
		if (data.exists("repo_admin_change_team_access") && Std.isOfType(data["repo_admin_change_team_access"], Bool)) repoAdminCanChangeTeamAccess = data["repo_admin_change_team_access"];
		if (data.exists("username") && Std.isOfType(data["username"], String)) username = data["username"];
		if (data.exists("visibility") && Std.isOfType(data["visibility"], String)) visibility = data["visibility"];
		if (data.exists("website") && Std.isOfType(data["website"], String)) website = data["website"];
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
