<?php
/**
 * Generated by Haxe 4.1.4
 */

namespace gitea\repository;

use \php\Boot;
use \gitea\CommitMeta;

/**
 * Represents a repository tag.
 */
class Tag {
	/**
	 * @var CommitMeta
	 * The commit metadata.
	 */
	public $commit;
	/**
	 * @var string
	 * The tag identifier.
	 */
	public $id;
	/**
	 * @var string
	 * The tag name.
	 */
	public $name;
	/**
	 * @var string
	 * The URL of the `.tar.gz` archive.
	 */
	public $tarballUrl;
	/**
	 * @var string
	 * The URL of the `.zip` archive.
	 */
	public $zipballUrl;

	/**
	 * Creates a new tag.
	 * 
	 * @param mixed $data
	 * 
	 * @return void
	 */
	public function __construct ($data = null) {
		$this->zipballUrl = "";
		$this->tarballUrl = "";
		$this->name = "";
		$this->id = "";
		$this->commit = null;
		if ($data !== null) {
			if (\Reflect::hasField($data, "commit") && \Reflect::isObject(\Reflect::field($data, "commit"))) {
				$this->commit = new CommitMeta(\Reflect::field($data, "commit"));
			}
			if (\Reflect::hasField($data, "id") && is_string(\Reflect::field($data, "id"))) {
				$this->id = \Reflect::field($data, "id");
			}
			if (\Reflect::hasField($data, "name") && is_string(\Reflect::field($data, "name"))) {
				$this->name = \Reflect::field($data, "name");
			}
			if (\Reflect::hasField($data, "tarball_url") && is_string(\Reflect::field($data, "tarball_url"))) {
				$this->tarballUrl = \Reflect::field($data, "tarball_url");
			}
			if (\Reflect::hasField($data, "zipball_url") && is_string(\Reflect::field($data, "zipball_url"))) {
				$this->zipballUrl = \Reflect::field($data, "zipball_url");
			}
		}
	}
}

Boot::registerClass(Tag::class, 'gitea.repository.Tag');
