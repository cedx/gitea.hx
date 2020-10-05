package gitea;

/** Defines the permission of a team. **/
enum abstract TeamPermission(String) {

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
