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
	public function new() {}

	/** Creates a new tracked time from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Dynamic>) {
		final model = new TrackedTime();
		return model;
		/* return new self([
			"createdAt" => isset($map["created"]) && is_string($map["created"]) ? new DateTimeImmutable($map["created"]) : null,
			"id" => isset($map["id"]) && is_int($map["id"]) ? $map["id"] : -1,
			"issueId" => isset($map["issue_id"]) && is_int($map["issue_id"]) ? $map["issue_id"] : -1,
			"time" => isset($map["time"]) && is_int($map["time"]) ? $map["time"] : 0,
			"userId" => isset($map["user_id"]) && is_int($map["user_id"]) ? $map["user_id"] : -1
		]);*/
	}
}
