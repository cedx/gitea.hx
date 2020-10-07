package gitea.issue;

import haxe.DynamicAccess;

/** TODO Represents the worked time for an issue or pull request. **/
@:expose class TrackedTime {

	/** The date the entry was created. **/
	public var createdAt: Null<Date> = null;

	/** The entry identifier. **/
	public var id = -1;

	/** The identifier of the associated issue or pull request. **/
	public var issueId = -1;

	/** The elapsed time, in seconds. **/
	public var time = 0;

	/** The identifier of the initiating user. **/
	public var userId = -1;

	/** Creates a new tracked time. **/
	public function new(?data: DynamicAccess<Any>) if (data != null) {}

	/** Creates a new tracked time from the specified JSON data. **/
	public static function fromJson() {
		final model = new TrackedTime();
		return model;
		/* return new self([
			"createdAt" => isset($data["created"]) && is_string($data["created"]) ? new DateTimeImmutable($data["created"]) : null,
			"id" => isset($data["id"]) && is_int($data["id"]) ? $data["id"] : -1,
			"issueId" => isset($data["issue_id"]) && is_int($data["issue_id"]) ? $data["issue_id"] : -1,
			"time" => isset($data["time"]) && is_int($data["time"]) ? $data["time"] : 0,
			"userId" => isset($data["user_id"]) && is_int($data["user_id"]) ? $data["user_id"] : -1
		]);*/
	}
}
