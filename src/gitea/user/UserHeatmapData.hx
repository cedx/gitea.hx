package gitea.user;

import haxe.DynamicAccess;

/** Represents the data needed to create a user heatmap. **/
@:expose
@:structInit
class UserHeatmapData {

	/** The contribution number. **/
	public final contributions = 0;

	/** The contributions date.  **/
	public final timestamp: Null<Date> = null;

	/** Creates a new heatmap data. **/
	public function new(contributions: Int, timestamp: Date) {
		this.contributions = contributions;
		this.timestamp = timestamp;
	}

	/** Creates a new heatmap data from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<Int>) return new UserHeatmapData(
		map.exists("contributions") ? map["contributions"] : 0,
		map.exists("timestamp") ? Date.fromTime(map["timestamp"] * 1000) : null
	);
}
