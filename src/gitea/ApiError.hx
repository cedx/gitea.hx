package gitea;

import haxe.DynamicAccess;

/** An API error with a message. **/
@:expose class ApiError {

	/** A message describing the error. **/
	public var message = "";

	/** The URL that is the source of the error. **/
	public var url = "";

	/** Creates a new API error. **/
	public function new(?data: DynamicAccess<String>) if (data != null) {
		if (data.exists("message")) message = data["message"];
		if (data.exists("url")) url = data["url"];
	}
}
