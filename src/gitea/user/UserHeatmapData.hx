package gitea.user;

import haxe.DynamicAccess;

/** Represents the data needed to create a user heatmap. **/
@:expose
@:structInit
class UserHeatmapData {

	/** The contribution number. **/
	public var contributions: Int;

	/** The contributions date.  **/
	public final timestamp: Date;

	/** Creates a new heatmap data. **/
	public function new(timestamp: Date, contributions = 0) {
		this.contributions = contributions;
		this.timestamp = timestamp;
	}

	/** Creates a new heatmap data from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Int>) return new UserHeatmapData(
		map.exists("timestamp") ? Date.fromTime(map["timestamp"] * 1000) : Date.now(),
		map.exists("contributions") ? map["contributions"] : 0
	);
}
