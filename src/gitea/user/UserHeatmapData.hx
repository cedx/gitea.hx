package gitea.user;

import haxe.DynamicAccess;

/** Represents the data needed to create a user heatmap. **/
@:expose class UserHeatmapData {

	/** The contribution number. **/
	public var contributions = 0;

	/** The contributions date.  **/
	public var timestamp = Date.now();

	/** Creates a new heatmap data. **/
	public function new(?data: DynamicAccess<Int>) if (data != null) {
		if (data.exists("contributions")) contributions = data["contributions"];
		if (data.exists("timestamp")) timestamp = Date.fromTime(data["timestamp"] * 1000);
	}
}
