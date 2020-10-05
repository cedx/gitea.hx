package gitea.misc;

import haxe.DynamicAccess;

/** Wraps the version of the Gitea server. **/
@:expose
@:structInit
class ServerVersion {

	/** The version number. **/
	public final version: String;

	/** Creates a new server version. **/
	public function new(version: String) this.version = version;

	/** Creates a new server version from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<String>) return new ServerVersion(
		map.exists("version") ? map["version"] : ""
	);
}
