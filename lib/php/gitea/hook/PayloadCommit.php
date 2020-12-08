<?php
/**
 * Generated by Haxe 4.1.4
 */

namespace gitea\hook;

use \php\Boot;
use \tink\_Stringly\Stringly_Impl_;

/**
 * Represents a commit.
 */
class PayloadCommit {
	/**
	 * @var \Array_hx
	 * The list of added files.
	 */
	public $added;
	/**
	 * @var PayloadUser
	 * The person who authored the commit.
	 */
	public $author;
	/**
	 * @var PayloadUser
	 * The person who committed the code.
	 */
	public $committer;
	/**
	 * @var string
	 * The commit hash.
	 */
	public $id;
	/**
	 * @var string
	 * The commit message.
	 */
	public $message;
	/**
	 * @var \Array_hx
	 * The list of modified files.
	 */
	public $modified;
	/**
	 * @var \Array_hx
	 * The list of removed files.
	 */
	public $removed;
	/**
	 * @var \Date
	 * The commit date.
	 */
	public $timestamp;
	/**
	 * @var string
	 * The URL to the commit's history.
	 */
	public $url;
	/**
	 * @var PayloadCommitVerification
	 * The GPG verification of this commit.
	 */
	public $verification;

	/**
	 * Creates a new payload commit.
	 * 
	 * @param mixed $data
	 * 
	 * @return void
	 */
	public function __construct ($data = null) {
		$this->verification = null;
		$this->url = "";
		$this->timestamp = null;
		$this->removed = new \Array_hx();
		$this->modified = new \Array_hx();
		$this->message = "";
		$this->id = "";
		$this->committer = null;
		$this->author = null;
		$this->added = new \Array_hx();
		if ($data !== null) {
			if (\Reflect::hasField($data, "added") && (\Reflect::field($data, "added") instanceof \Array_hx)) {
				$this->added = \Reflect::field($data, "added");
			}
			if (\Reflect::hasField($data, "author") && (\Type::typeof(\Reflect::field($data, "author")) === \ValueType::TObject())) {
				$this->author = new PayloadUser(\Reflect::field($data, "author"));
			}
			if (\Reflect::hasField($data, "committer") && (\Type::typeof(\Reflect::field($data, "committer")) === \ValueType::TObject())) {
				$this->committer = new PayloadUser(\Reflect::field($data, "committer"));
			}
			if (\Reflect::hasField($data, "id") && is_string(\Reflect::field($data, "id"))) {
				$this->id = \Reflect::field($data, "id");
			}
			if (\Reflect::hasField($data, "message") && is_string(\Reflect::field($data, "message"))) {
				$this->message = \Reflect::field($data, "message");
			}
			if (\Reflect::hasField($data, "modified") && (\Reflect::field($data, "modified") instanceof \Array_hx)) {
				$this->modified = \Reflect::field($data, "modified");
			}
			if (\Reflect::hasField($data, "removed") && (\Reflect::field($data, "removed") instanceof \Array_hx)) {
				$this->removed = \Reflect::field($data, "removed");
			}
			if (\Reflect::hasField($data, "timestamp") && is_string(\Reflect::field($data, "timestamp"))) {
				$this->timestamp = Stringly_Impl_::toDate(\Reflect::field($data, "timestamp"));
			}
			if (\Reflect::hasField($data, "url") && is_string(\Reflect::field($data, "url"))) {
				$this->url = \Reflect::field($data, "url");
			}
			if (\Reflect::hasField($data, "verification") && (\Type::typeof(\Reflect::field($data, "verification")) === \ValueType::TObject())) {
				$this->verification = new PayloadCommitVerification(\Reflect::field($data, "verification"));
			}
		}
	}
}

Boot::registerClass(PayloadCommit::class, 'gitea.hook.PayloadCommit');
