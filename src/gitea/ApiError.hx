package gitea;

import haxe.DynamicAccess;

/** An API error with a message. **/
class ApiError {

	/** A message describing the error. **/
	public var message: String;

	/** The URL that is the source of the error. **/
	public var url: String;

	/** Creates a new API error. **/
	public function new(message: String, url: String) {
		this.message = message;
		this.url = url;
	}

	/** Creates a new heatmap data from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<String>) return new ApiError(
		map.exists("message") ? map["message"] : "",
		map.exists("url") ? map["url"] : ""
	);
}
