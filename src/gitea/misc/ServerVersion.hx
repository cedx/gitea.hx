package gitea.misc;

import haxe.DynamicAccess;

/** Wraps the version of the Gitea server. **/
@:expose class ServerVersion {

	/** The version number. **/
	public var version = "";

	/** Creates a new server version. **/
	public function new(?data: DynamicAccess<String>) if (data != null) {
		if (data.exists("version")) version = data["version"];
	}
}
