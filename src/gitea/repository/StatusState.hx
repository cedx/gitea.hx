package gitea.repository;

/** Defines the status of a commit. **/
enum abstract StatusState(String) {

	/** The status is an error. **/
	var Error = "error";

	/** The status is a failure. **/
	var Failure = "failure";

	/** The status is pending. **/
	var Pending = "pending";

	/** The status is a success. **/
	var Success = "success";

	/** The status is a warning. **/
	var Warning = "warning";
}
