package gitea.organization;

/** Defines the visibility of an organization. **/
enum abstract OrganizationVisibility(String) {

	/** The organization doesn't have any permission. **/
	var Limited = "limited";

	/** The organization is private. **/
	var Private = "private";

	/** The organization is public. **/
	var Public = "public";
}
