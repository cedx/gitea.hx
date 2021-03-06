<?php
/**
 * Generated by Haxe 4.1.5
 */

namespace gitea\repository;

use \php\Boot;

/**
 * Represents settings for an external wiki.
 */
class ExternalWiki {
	/**
	 * @var string
	 * The URL of the external wiki.
	 */
	public $url;

	/**
	 * Creates a new external wiki.
	 * 
	 * @param mixed $data
	 * 
	 * @return void
	 */
	public function __construct ($data = null) {
		$this->url = "";
		if ($data !== null) {
			if (\Reflect::hasField($data, "external_wiki_url")) {
				$this->url = \Reflect::field($data, "external_wiki_url");
			}
		}
	}
}

Boot::registerClass(ExternalWiki::class, 'gitea.repository.ExternalWiki');
