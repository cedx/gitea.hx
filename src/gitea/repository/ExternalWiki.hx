package gitea.repository;

import haxe.DynamicAccess;

/** Represents settings for an external wiki. **/
@:expose class ExternalWiki {

	/** The URL of the external wiki. **/
	public var url: String;

	/** Creates a new external wiki. **/
	public function new(url: String) this.url = url;

	/** Creates a new external wiki from the specified JSON map. **/
	public static function fromJson(map: DynamicAccess<String>) return new ExternalWiki(
		map.exists("external_wiki_url") ? map["external_wiki_url"] : ""
	);
}
