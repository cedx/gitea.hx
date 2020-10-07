package gitea.repository;

import haxe.DynamicAccess;

/** Represents settings for an external wiki. **/
@:expose class ExternalWiki {

	/** The URL of the external wiki. **/
	public var url = "";

	/** Creates a new external wiki. **/
	public function new(?data: DynamicAccess<String>) if (data != null) {
		if (data.exists("external_wiki_url")) url = data["external_wiki_url"];
	}
}
