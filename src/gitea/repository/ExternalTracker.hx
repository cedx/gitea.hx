package gitea.repository;

import haxe.DynamicAccess;

/** Represents settings for an external tracker. **/
@:expose class ExternalTracker {

	/** The URL format. **/
	public var format = "";

	/** The number format. **/
	public var style: ExternalTrackerStyle = Numeric;

	/** The URL of the external issue tracker. **/
	public var url = "";

	/** Creates a new external tracker. **/
	public function new(?data: DynamicAccess<String>) if (data != null) {
		if (data.exists("external_tracker_format")) format = data["external_tracker_format"];
		if (data.exists("external_tracker_style")) style = data["external_tracker_style"];
		if (data.exists("external_tracker_url")) url = data["external_tracker_url"];
	}
}

/** Defines the styles of the external issue tracker number format. **/
enum abstract ExternalTrackerStyle(String) from String {

	/** The number format is alphanumeric. **/
	var Alphanumeric = "alphanumeric";

	/** The number format is numeric. **/
	var Numeric = "numeric";
}
