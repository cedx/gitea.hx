package gitea.repository;

import haxe.DynamicAccess;

/** Represents settings for an internal tracker. **/
@:expose
@:structInit
class InternalTracker {

	/** Value indicating whether to allow only contributors to track time. **/
	public var allowOnlyContributorsToTrackTime = false;

	/** Value indicating whether to enable dependencies for issues and pull requests. **/
	public var enableIssueDependencies = false;

	/** Value indicating whether to enable the time tracking. **/
	public var enableTimeTracker = false;

	/** Creates a new internal tracker. **/
	public function new() {}

	/** Creates a new internal tracker from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Bool>) {
		final model = new InternalTracker();
		if (map.exists("allow_only_contributors_to_track_time")) model.allowOnlyContributorsToTrackTime = map["allow_only_contributors_to_track_time"];
		if (map.exists("enable_issue_dependencies")) model.enableIssueDependencies = map["enable_issue_dependencies"];
		if (map.exists("enable_time_tracker")) model.enableTimeTracker = map["enable_time_tracker"];
		return model;
	}
}
