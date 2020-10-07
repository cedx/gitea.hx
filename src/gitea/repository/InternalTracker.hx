package gitea.repository;

import haxe.DynamicAccess;

/** Represents settings for an internal tracker. **/
@:expose class InternalTracker {

	/** Value indicating whether to allow only contributors to track time. **/
	public var allowOnlyContributorsToTrackTime = false;

	/** Value indicating whether to enable dependencies for issues and pull requests. **/
	public var enableIssueDependencies = false;

	/** Value indicating whether to enable the time tracking. **/
	public var enableTimeTracker = false;

	/** Creates a new internal tracker. **/
	public function new(?data: DynamicAccess<Bool>) if (data != null) {
		if (data.exists("allow_only_contributors_to_track_time")) allowOnlyContributorsToTrackTime = data["allow_only_contributors_to_track_time"];
		if (data.exists("enable_issue_dependencies")) enableIssueDependencies = data["enable_issue_dependencies"];
		if (data.exists("enable_time_tracker")) enableTimeTracker = data["enable_time_tracker"];
	}
}
