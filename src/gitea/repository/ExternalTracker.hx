package gitea.repository;

import haxe.DynamicAccess;

/** Represents settings for an external tracker. **/
@:expose
@:structInit
class ExternalTracker {

	/** The URL format. **/
	public var format = "";

	/** The number format. **/
	public var style: ExternalTrackerStyle = Numeric;

	/** The URL of the external issue tracker. **/
	public var url: String;

	/** Creates a new external tracker. **/
	public function new(url: String) this.url = url;

	/** Creates a new external tracker from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<String>) {
		final model = new ExternalTracker(map.exists("external_tracker_url") ? map["external_tracker_url"] : "");
		if (map.exists("external_tracker_format")) model.format = map["external_tracker_format"];
		if (map.exists("external_tracker_style")) model.style = map["external_tracker_style"];
		return model;
	}
}

/** Defines the styles of the external issue tracker number format. **/
enum abstract ExternalTrackerStyle(String) from String {

	/** The number format is alphanumeric. **/
	var Alphanumeric = "alphanumeric";

	/** The number format is numeric. **/
	var Numeric = "numeric";
}
